// import 'dart:core';
// import 'dart:io';
//
// import 'package:auto_route/auto_route.dart';
// import 'package:dio/dio.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:intl/intl.dart';
// import 'package:ddd_sample/application/profile/business_profile/get_countries.dart';
// import 'package:ddd_sample/application/profile/influencer_profile/edit_influencer_profile.dart';
// import 'package:ddd_sample/domain/auth/create_account_model.dart';
// import 'package:ddd_sample/domain/core/check_box_model.dart';
// import 'package:ddd_sample/domain/core/enums.dart';
// import 'package:ddd_sample/domain/core/no_param.dart';
// import 'package:ddd_sample/presentation/auth/notifiers/providers.dart';
// import 'package:ddd_sample/presentation/influencer_profile/notifier/providers.dart';
// import 'package:ddd_sample/presentation/routes/router.gr.dart';
//
// import '../../../application/profile/business_profile/get_provinces.dart';
// import '../../../application/profile/influencer_profile/get_content_types.dart';
// import '../../../application/profile/influencer_profile/register_influencer.dart';
// import '../../../domain/auth/influencer_login_response_model.dart';
// import '../../../domain/profile/business_profile/location_model.dart';
// import '../../../domain/profile/influencer_profile/i_influencer_repository.dart';
// import '../../../domain/profile/influencer_profile/influencer_login_edit_model.dart';
// import '../../core/colors.dart';
//
// abstract class InfluencerSetupState {
//   InfluencerSetupState();
//
// //   @override
// //   bool operator ==(Object other) {
// //     return other is InfluencerSetupState && other.logo == logo;
// //   }
// //
// //   @override
// //   int get hashCode => logo.hashCode;
// }
//
// class InfluencerSetupInitial extends InfluencerSetupState {
//   InfluencerSetupInitial();
// }
//
// class InfluencerSetupLocationLoading extends InfluencerSetupState {
//   InfluencerSetupLocationLoading();
// }
//
// class InfluencerSetupLoading extends InfluencerSetupState {
//   InfluencerSetupLoading();
// }
//
// class InfluencerSetupLoaded extends InfluencerSetupState {
//   InfluencerSetupLoaded();
// }
//
// class InfluencerFormValidationError extends InfluencerSetupState {
//   String? contentTypeError, logoError, phoneNumberError;
//
//   InfluencerFormValidationError(
//       {this.contentTypeError, this.logoError, this.phoneNumberError});
// }
//
// class InfluencerSetupNetworkError extends InfluencerSetupState {
//   final String message;
//
//   InfluencerSetupNetworkError(this.message);
//
//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) return true;
//
//     return other is InfluencerSetupNetworkError && other.message == message;
//   }
//
//   @override
//   int get hashCode => message.hashCode;
// }
//
// class InfluencerSetupNotifier extends StateNotifier<InfluencerSetupState> {
//   final formKey = GlobalKey<FormState>();
//
//   CreateAccountModel? createAccountModel;
//   File? profilePicture;
//   String? profilePictureLink;
//   late List<LocationModel> provinces, countries;
//   final Function() onDispose;
//   Gender _gender = Gender.male;
//   final TextEditingController dateController = TextEditingController(),
//       interestsController = TextEditingController(),
//       phoneNumberController = TextEditingController(),
//       countryController = TextEditingController(text: ' '),
//       provinceController = TextEditingController(text: ' ');
//   final TextEditingController dialCodeController =
//       TextEditingController(text: '+245');
//   LocationModel? _selectedCountry, _selectedProvince;
//
//   late String name, phoneNumber, location;
//   DateTime? birth;
//   List<CheckBoxModel>? interests;
//
//   late List<CheckBoxModel> contentTypes;
//
//   String? description;
//   IInfluencerRepository repository;
//
//   LocationModel? get selectedCountry => _selectedCountry;
//
//   LocationModel? get selectedProvince => _selectedProvince;
//
//   set gender(Gender gender) {
//     _gender = gender;
//     state = InfluencerSetupLoaded();
//   }
//
//   Gender get gender => _gender;
//
//   InfluencerSetupNotifier(
//       {required this.repository,
//       required this.onDispose,
//       required this.createAccountModel})
//       : super(InfluencerSetupInitial());
//
//   loadData(WidgetRef ref) async {
//     GetContentTypes getContentTypes = GetContentTypes(repository);
//     (await getContentTypes(NoParam())).fold((l) {
//       contentTypes = [];
//     }, (r) => contentTypes = r);
//     GetCountries getCountries = GetCountries(repository);
//     (await getCountries(NoParam()))
//         .fold((l) => countries = [], (r) => countries = r);
//
//     if (createAccountModel != null) ref.refresh(influencerProvider);
//
//     InfluencerDataModel? influencerData = ref.watch(influencerProvider);
//
//     if (influencerData != null) {
//       DateFormat formatter = DateFormat('dd / MM / yyyy');
//       birth = influencerData.influencerDetails.birthdate;
//       if (influencerData.influencerDetails.birthdate != null)
//         dateController.text =
//             formatter.format(influencerData.influencerDetails.birthdate!);
//       name = influencerData.influencerDetails.name ?? '';
//       final _tempLoc = influencerData.influencerDetails.location;
//       if (_tempLoc != null && _tempLoc.contains('-')) {
//         final int index = _tempLoc.indexOf('-');
//         for (LocationModel country in countries) {
//           if (country.name == _tempLoc.substring(0, index)) {
//             _selectedCountry = country;
//             countryController.text = _selectedCountry!.name;
//             if (_tempLoc.length > index) {
//               GetProvinces getProvinces = GetProvinces(repository);
//               (await getProvinces(_selectedCountry!.id))
//                   .fold((l) => provinces = [], (r) => provinces = r);
//               for (LocationModel province in provinces) {
//                 if (province.name == _tempLoc.substring(index + 1)) {
//                   _selectedProvince = province;
//                   provinceController.text = _selectedProvince!.name;
//                   break;
//                 }
//               }
//             }
//             break;
//           }
//         }
//       }
//       location = influencerData.influencerDetails.location ?? '';
//       phoneNumberController.text =
//           (influencerData.phoneNumber?.toString()) ?? '';
//       dialCodeController.text =
//           '+' + ((influencerData.phoneCode?.toString()) ?? '254');
//       if (phoneNumberController.text.isNotEmpty)
//         phoneNumber =
//             dialCodeController.text + '-' + phoneNumberController.text;
//       description = influencerData.influencerDetails.description;
//       profilePictureLink = influencerData.influencerDetails.profileImage;
//       // phoneNumberController.text = influencerData.
//       switch (influencerData.influencerDetails.gender) {
//         case 1:
//           _gender = Gender.male;
//           break;
//         case 2:
//           _gender = Gender.female;
//           break;
//         default:
//           _gender = Gender.other;
//       }
//       final _interests = influencerData.influencerDetails.interests;
//       if (influencerData.contentTypes != null) {
//         for (var element in contentTypes) {
//           if (influencerData.contentTypes!
//                   .indexWhere((e) => element.id == e.id) !=
//               -1) {
//             final contentNotifier =
//                 ref.read(checkBoxNotifierProvider(element).notifier);
//             contentNotifier.state = true;
//           }
//         }
//       }
//       if (_interests != null) {
//         var selectedInterestsNotifier =
//             ref.read(selectedInterestsNotifierProvider.notifier);
//         //
//         selectedInterestsNotifier.addAll(_interests);
//         selectedInterestsNotifier.saveSelection();
//         if (_interests.isNotEmpty) {
//           String interestsString = _interests[0].name;
//           if (_interests.length > 1) {
//             interestsString += ', ' + _interests[1].name;
//           }
//           if (_interests.length > 2) {
//             interestsString += ' ...';
//           }
//           interestsController.text = interestsString;
//           interests = _interests;
//         }
//       }
//     } else {
//       name = '';
//       location = '';
//     }
//     state = InfluencerSetupLoaded();
//   }
//
//   Future<void> setSelectedCountry(LocationModel country) async {
//     if (_selectedCountry == null || _selectedCountry!.id != country.id) {
//       _selectedCountry = country;
//       provinceController.clear();
//       _selectedProvince = null;
//       countryController.text = country.name;
//       GetProvinces getProvinces = GetProvinces(repository);
//       state = InfluencerSetupLocationLoading();
//       (await getProvinces(_selectedCountry!.id)).fold((l) {
//         provinces = [];
//         state = InfluencerSetupLoaded();
//       }, (r) {
//         provinces = r;
//         state = InfluencerSetupLoaded();
//       });
//     }
//   }
//
//   setSelectedProvince(LocationModel province) async {
//     _selectedProvince = province;
//     provinceController.text = province.name;
//   }
//
//   setProfilePicture(File profilePicture) {
//     this.profilePicture = profilePicture;
//     if (state is InfluencerFormValidationError) {
//       String? phoneNumberError, contentTypeError;
//       phoneNumberError =
//           (state as InfluencerFormValidationError).phoneNumberError;
//       contentTypeError =
//           (state as InfluencerFormValidationError).contentTypeError;
//       if (contentTypeError == null && phoneNumberError == null) {
//         state = InfluencerSetupLoaded();
//       } else {
//         state = InfluencerFormValidationError(
//             phoneNumberError: phoneNumberError,
//             contentTypeError: contentTypeError);
//       }
//     } else {
//       state = InfluencerSetupLoaded();
//     }
//   }
//
//   validateAndSubmit(WidgetRef ref, BuildContext context) async {
//     final List<int> contentIds = [];
//     String? contentError;
//     for (var content in contentTypes) {
//       if (ref.read(checkBoxNotifierProvider(content))) {
//         contentIds.add(content.id);
//       }
//     }
//     final selectedInterests = ref.read(selectedInterestsNotifierProvider);
//     String? profilePictureError, phoneNumberError;
//     if (contentIds.isEmpty) {
//       contentError = 'Please select at least one type of content!';
//     }
//     if (profilePicture == null && profilePictureLink == null) {
//       profilePictureError = 'Please submit your Profile Picture';
//     }
//
//     String dialCode = dialCodeController.text;
//     if (phoneNumberController.text.isEmpty) {
//       phoneNumberError = 'Please enter your Phone Number';
//     } else if (dialCode == '+254' && phoneNumberController.text.length != 9) {
//       phoneNumberError = 'Please enter a valid Phone Number';
//     } else if (phoneNumberController.text.length < 8) {
//       phoneNumberError = 'Please enter a valid Phone Number';
//     } else {
//       phoneNumber = dialCode + '-' + phoneNumberController.text;
//     }
//
//     if (formKey.currentState!.validate() &&
//         contentError == null &&
//         profilePictureError == null &&
//         phoneNumberError == null) {
//       formKey.currentState!.save();
//       state = InfluencerSetupLoading();
//       if (state is InfluencerSetupNetworkError) {
//         return;
//       }
//       String interestIds = '';
//       for (var element in selectedInterests) {
//         interestIds += (element.id.toString() + ',');
//       }
//       MultipartFile? image;
//       if (profilePicture != null)
//         image = await MultipartFile.fromFile(profilePicture!.path);
//       location = selectedCountry!.name + '-' + selectedProvince!.name;
//       final model = InfluencerLoginEditModel(
//         location: location,
//         birthdate: birth!.month.toString() +
//             '/' +
//             birth!.day.toString() +
//             '/' +
//             birth!.year.toString(),
//         contentTypes: contentIds,
//         //editedContentTypes: contentIds,
//         image: image,
//         interests: interestIds,
//         phoneNumber: phoneNumber,
//         gender: gender == Gender.male
//             ? 1
//             : gender == Gender.female
//                 ? 2
//                 : 3,
//         description: description ?? '',
//         name: name,
//         type: 2,
//         referralCode: createAccountModel?.referralCode,
//         email: createAccountModel?.email,
//         password: createAccountModel?.password,
//       );
//       if (createAccountModel != null) {
//         RegisterInfluencer registerInfluencer = RegisterInfluencer(repository);
//
//         (await registerInfluencer(model)).fold((l) {
//           state = InfluencerSetupNetworkError(l.toString());
//         }, (r) {
//           // httpServiceProvider.overrideWithProvider(
//           //     Provider((ref) => HttpService(r.emailVerificationToken)));
//
//           context.router.pop();
//           context.router.push(EmailVerificationRoute(
//               isBusiness: false, email: createAccountModel!.email));
//         });
//       } else {
//         //todo fix phone number not updating in server
//         List<CheckBoxModel> _contentTypesRes = [];
//         for (var content in contentTypes) {
//           if (ref.read(checkBoxNotifierProvider(content))) {
//             _contentTypesRes.add(content);
//           }
//         }
//         EditInfluencerProfile editInfluencerProfile =
//             EditInfluencerProfile(repository);
//         (await editInfluencerProfile(model)).fold((l) {
//           Fluttertoast.showToast(
//               msg: 'Could not update profile',
//               toastLength: Toast.LENGTH_SHORT,
//               gravity: ToastGravity.BOTTOM,
//               timeInSecForIosWeb: 1,
//               backgroundColor: Theme.of(context).errorColor,
//               textColor: Colors.white,
//               fontSize: 16.0);
//           state = InfluencerSetupNetworkError('');
//         }, (r) {
//           final influencerData = ref.read(influencerProvider);
//           final influencerDetails = influencerData!.influencerDetails;
//           ref.read(influencerProvider.state).state = influencerData.copyWith(
//               phoneNumber: phoneNumber.substring(phoneNumber.indexOf('-') + 1),
//               phoneCode: phoneNumber.substring(1, phoneNumber.indexOf('-')),
//               contentTypes: _contentTypesRes,
//               influencerDetails: influencerDetails.copyWith(
//                 name: name,
//                 profileImage: r,
//                 location: location,
//                 interests: interests,
//                 description: description,
//                 birthdate: birth!,
//                 gender: gender == Gender.male
//                     ? 1
//                     : gender == Gender.female
//                         ? 2
//                         : 3,
//               ));
//           Fluttertoast.showToast(
//               msg: 'Profile data updated!',
//               toastLength: Toast.LENGTH_SHORT,
//               gravity: ToastGravity.BOTTOM,
//               timeInSecForIosWeb: 1,
//               backgroundColor: AppColors.success,
//               textColor: AppColors.successText,
//               fontSize: 16.0);
//
//           context.router.pop();
//         });
//       }
//     } else {
//       state = InfluencerFormValidationError(
//           contentTypeError: contentError,
//           logoError: profilePictureError,
//           phoneNumberError: phoneNumberError);
//       Fluttertoast.showToast(
//           msg: 'Invalid data. Please check fields and resubmit!',
//           toastLength: Toast.LENGTH_SHORT,
//           gravity: ToastGravity.BOTTOM,
//           timeInSecForIosWeb: 1,
//           backgroundColor: Theme.of(context).errorColor,
//           textColor: Colors.white,
//           fontSize: 16.0);
//     }
//   }
//
//   @override
//   void dispose() {
//     onDispose.call();
//     super.dispose();
//   }
// }
