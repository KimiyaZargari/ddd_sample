// import 'dart:io';
//
// import 'package:auto_route/auto_route.dart';
// import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:intl/intl.dart';
// import 'package:ddd_sample/domain/core/check_box_model.dart';
// import 'package:ddd_sample/domain/core/enums.dart';
// import 'package:ddd_sample/presentation/core/images.dart';
// import 'package:ddd_sample/presentation/core/strings.dart';
// import 'package:ddd_sample/presentation/core/vectors.dart';
// import 'package:ddd_sample/presentation/core/widgets/app_button.dart';
// import 'package:ddd_sample/presentation/core/widgets/app_checkbox.dart';
// import 'package:ddd_sample/presentation/core/widgets/default_app_bar.dart';
// import 'package:ddd_sample/presentation/core/widgets/input_field.dart';
// import 'package:ddd_sample/presentation/core/widgets/loading_widget.dart';
// import 'package:ddd_sample/presentation/core/widgets/page_base.dart';
// import 'package:ddd_sample/presentation/core/widgets/upload_profile_image.dart';
// import 'package:ddd_sample/presentation/influencer_profile/notifier/influencer_profile_notifier.dart';
// import 'package:ddd_sample/presentation/routes/router.gr.dart';
//
// import '../../../domain/auth/create_account_model.dart';
// import '../../auth/widgets/phone_number_field.dart';
// import '../../core/widgets/select_item_dialog.dart';
// import '../notifier/providers.dart';
//
// class InfluencerSetupPage extends StatelessWidget {
//   final CreateAccountModel? createAccountModel;
//
//   const InfluencerSetupPage({this.createAccountModel, Key? key})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return PageBase(
//       appBar: DefaultAppBar(
//         title: createAccountModel == null
//             ? AppStrings.editProfile
//             : AppStrings.influencerAccountSetup,
//       ),
//       body: SingleChildScrollView(
//         child: Container(
//           padding: const EdgeInsets.all(38.0),
//           constraints: BoxConstraints(
//             minHeight: MediaQuery.of(context).size.height,
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Consumer(builder: (_, ref, __) {
//                 final state = ref
//                     .watch(influencerSetupNotifierProvider(createAccountModel));
//
//                 final notifier = ref.watch(
//                     influencerSetupNotifierProvider(createAccountModel)
//                         .notifier);
//
//                 if (state is InfluencerSetupInitial) {
//                   notifier.loadData(ref);
//                   return Center(
//                     child: LoadingWidget(),
//                   );
//                 }
//
//                 return Form(
//                   key: notifier.formKey,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.stretch,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       UploadProfileImage(
//                         onPressed: () async {
//                           (context.router
//                                   .push(GalleryRoute(multiSelect: false)))
//                               .then((value) {
//                             if (value != null &&
//                                 value is List<File> &&
//                                 value.isNotEmpty) {
//                               notifier.setProfilePicture(value.first);
//                             }
//                           });
//                         },
//                         borderColor: Colors.white,
//                         borderRadius: 3,
//                         radius: 60,
//                         isNull: false,
//                         child: notifier.profilePicture != null
//                             ? Image.file(
//                                 notifier.profilePicture!,
//                                 fit: BoxFit.cover,
//                               )
//                             : FancyShimmerImage(
//                                 imageUrl:
//                                     notifier.profilePictureLink.toString(),
//                                 errorWidget: Image.asset(
//                                   AppImages.defaultAvatar,
//                                 ),
//                               ),
//                         imageUrl: notifier.profilePictureLink.toString(),
//                       ),
//                       if (state is InfluencerFormValidationError &&
//                           state.logoError != null)
//                         Text(
//                           state.logoError!,
//                           style: Theme.of(context).textTheme.labelSmall,
//                           textAlign: TextAlign.center,
//                         ),
//                       Padding(
//                         padding: const EdgeInsets.only(
//                           top: 30,
//                           bottom: 6,
//                         ),
//                         child: Text(
//                           'Full Name',
//                           style: Theme.of(context).textTheme.titleMedium,
//                         ),
//                       ),
//                       AppInputField(
//                         onSaved: (val) {
//                           notifier.name = val!;
//                         },
//                         validator: (val) {
//                           //todo
//                           if (val == null || val.isEmpty) {
//                             return 'Please enter your Name';
//                           } else if (!val.trim().contains(' ')) {
//                             return 'Please enter your Full Name';
//                           }
//                           return null;
//                         },
//                         initialVal: notifier.name,
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(
//                           top: 30,
//                           bottom: 6,
//                         ),
//                         child: Text(
//                           'Country',
//                           style: Theme.of(context).textTheme.titleMedium,
//                         ),
//                       ),
//                       AppInputField(
//                         controller: notifier.countryController,
//                         enabled: state is InfluencerSetupLoaded ||
//                             state is InfluencerFormValidationError,
//                         onTap: () async {
//                           showDialog(
//                                   context: context,
//                                   builder: (_) => SelectItemDialog(
//                                       title: 'Select Country',
//                                       children: notifier.countries))
//                               .then((value) async {
//                             if (value != null)
//                               await notifier.setSelectedCountry(value);
//                           });
//                         },
//                         onSaved: (_) {},
//                         suffix: Padding(
//                           padding: const EdgeInsets.all(0),
//                           child: SvgPicture.asset(AppVectors.chevronDown),
//                         ),
//                         validator: (_) {
//                           if (notifier.selectedCountry == null) {
//                             return 'please select your country';
//                           }
//                           return null;
//                         },
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(
//                           top: 30,
//                           bottom: 6,
//                         ),
//                         child: Text(
//                           'County/Province',
//                           style: Theme.of(context).textTheme.titleMedium,
//                         ),
//                       ),
//                       AppInputField(
//                         controller: notifier.provinceController,
//                         enabled: (state is InfluencerSetupLoaded ||
//                                 state is InfluencerFormValidationError) &&
//                             notifier.selectedCountry != null,
//                         onTap: () async {
//                           showDialog(
//                               context: context,
//                               builder: (_) => SelectItemDialog(
//                                   title: 'Select County/Province',
//                                   children: notifier.provinces)).then((value) {
//                             if (value != null)
//                               notifier.setSelectedProvince(value);
//                             //notifier.selectedProvinceId = value.id;
//                           });
//                         },
//                         validator: (_) {
//                           if (notifier.selectedProvince == null) {
//                             return 'please select your County/Province';
//                           }
//                           return null;
//                         },
//                         onSaved: (_) {},
//                         suffix: SvgPicture.asset(AppVectors.chevronDown),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(
//                           top: 30,
//                           bottom: 6,
//                         ),
//                         child: Text(
//                           'Date of Birth',
//                           style: Theme.of(context).textTheme.titleMedium,
//                         ),
//                       ),
//                       AppInputField(
//                         onSaved: (val) {
//                           if (val == null || val.isEmpty) {
//                             return 'Please select date of birth';
//                           }
//                         },
//                         validator: (val) {
//                           if (val == null || val.isEmpty) {
//                             return 'Please select date of birth';
//                           }
//                           return null;
//                         },
//                         controller: notifier.dateController,
//                         onTap: () {
//                           DatePicker.showDatePicker(context,
//                               showTitleActions: true,
//                               minTime: DateTime(1910),
//                               maxTime: DateTime.now(), onConfirm: (date) {
//                             notifier.birth = date;
//                             DateFormat formatter = DateFormat('dd / MM / yyyy');
//                             notifier.dateController.text =
//                                 formatter.format(date);
//                           },
//                               currentTime: notifier.birth ?? DateTime(2000),
//                               theme: DatePickerTheme(
//                                   headerColor: Theme.of(context).primaryColor,
//                                   doneStyle:
//                                       Theme.of(context).textTheme.labelLarge!,
//                                   cancelStyle:
//                                       Theme.of(context).textTheme.labelLarge!));
//                         },
//                         suffix: SvgPicture.asset(
//                           AppVectors.calender,
//                           color: Colors.black,
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(
//                           top: 15,
//                           bottom: 6,
//                         ),
//                         child: Text(
//                           'Phone Number',
//                           style: Theme.of(context).textTheme.titleMedium,
//                         ),
//                       ),
//                       PhoneNumberField(notifier.phoneNumberController,
//                           notifier.dialCodeController),
//                       if (state is InfluencerFormValidationError &&
//                           state.phoneNumberError != null)
//                         Padding(
//                           padding: const EdgeInsets.only(top: 10.0, left: 14),
//                           child: Text(
//                             state.phoneNumberError!,
//                             style: Theme.of(context).textTheme.labelSmall,
//                           ),
//                         ),
//                       Padding(
//                         padding: const EdgeInsets.only(
//                           top: 30,
//                           bottom: 6,
//                         ),
//                         child: Text(
//                           AppStrings.gender,
//                           style: Theme.of(context).textTheme.titleMedium,
//                         ),
//                       ),
//                       Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               children: [
//                                 Radio<Gender>(
//                                     value: Gender.male,
//                                     groupValue: notifier.gender,
//                                     onChanged: (val) {
//                                       notifier.gender = val ?? Gender.male;
//                                     },
//                                     // focusColor:
//                                     //     MaterialStateProperty.resolveWith(
//                                     //         (_) => Colors.red),
//                                     fillColor: notifier.gender == Gender.male
//                                         ? Theme.of(context).radioTheme.fillColor
//                                         : MaterialStateProperty.resolveWith(
//                                             (_) => Theme.of(context)
//                                                 .unselectedWidgetColor),
//                                     visualDensity:
//                                         const VisualDensity(horizontal: -4),
//                                     materialTapTargetSize:
//                                         MaterialTapTargetSize.shrinkWrap),
//                                 const SizedBox(
//                                   width: 8,
//                                 ),
//                                 Text(genderText(Gender.male))
//                               ],
//                             ),
//                             Row(
//                               children: [
//                                 Radio<Gender>(
//                                     value: Gender.female,
//                                     groupValue: notifier.gender,
//                                     onChanged: (val) {
//                                       notifier.gender = val ?? Gender.female;
//                                     },
//                                     fillColor: notifier.gender == Gender.female
//                                         ? Theme.of(context).radioTheme.fillColor
//                                         : MaterialStateProperty.resolveWith(
//                                             (_) => Theme.of(context)
//                                                 .unselectedWidgetColor),
//                                     visualDensity:
//                                         const VisualDensity(horizontal: -4),
//                                     materialTapTargetSize:
//                                         MaterialTapTargetSize.shrinkWrap),
//                                 const SizedBox(
//                                   width: 8,
//                                 ),
//                                 Text(genderText(Gender.female))
//                               ],
//                             ),
//                             Row(
//                               children: [
//                                 Radio<Gender>(
//                                     value: Gender.other,
//                                     groupValue: notifier.gender,
//                                     onChanged: (val) {
//                                       notifier.gender = val ?? Gender.other;
//                                     },
//                                     fillColor: notifier.gender == Gender.other
//                                         ? Theme.of(context).radioTheme.fillColor
//                                         : MaterialStateProperty.resolveWith(
//                                             (_) => Theme.of(context)
//                                                 .unselectedWidgetColor),
//                                     visualDensity:
//                                         const VisualDensity(horizontal: -4),
//                                     materialTapTargetSize:
//                                         MaterialTapTargetSize.shrinkWrap),
//                                 const SizedBox(
//                                   width: 8,
//                                 ),
//                                 Text(genderText(Gender.other))
//                               ],
//                             ),
//                           ]),
//                       Padding(
//                         padding: const EdgeInsets.only(
//                           top: 15,
//                           bottom: 6,
//                         ),
//                         child: Text(
//                           'Description',
//                           style: Theme.of(context).textTheme.titleMedium,
//                         ),
//                       ),
//                       AppInputField(
//                         onSaved: (val) {
//                           notifier.description = val;
//                         },
//                         validator: (val) {
//                           if (val == null ||
//                               val.isEmpty ||
//                               val.trim().isEmpty) {
//                             return 'Please enter a brief description about yourself!';
//                           }
//                           return null;
//                         },
//                         maxLines: 5,
//                         initialVal: notifier.description,
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(
//                           top: 30,
//                           bottom: 6,
//                         ),
//                         child: Text(
//                           AppStrings.contentTypes,
//                           style: Theme.of(context).textTheme.titleMedium,
//                         ),
//                       ),
//                       GridView.count(
//                         crossAxisCount: 2,
//                         shrinkWrap: true,
//                         // crossAxisSpacing: 1,
//                         // mainAxisSpacing: 1,
//                         childAspectRatio: 2.5,
//                         //  direction: Axis.horizontal,
//                         physics: const NeverScrollableScrollPhysics(),
//                         children: notifier.contentTypes.map((e) {
//                           return Row(
//                             mainAxisSize: MainAxisSize.min,
//                             children: [
//                               AppCheckBox(
//                                 e,
//                               ),
//                               Text(e.name),
//                             ],
//                           );
//                         }).toList(),
//                       ),
//                       if (state is InfluencerFormValidationError &&
//                           state.contentTypeError != null)
//                         Padding(
//                           padding: const EdgeInsets.only(left: 12.0),
//                           child: Text(
//                             state.contentTypeError!,
//                             style: Theme.of(context).textTheme.labelSmall,
//                             textAlign: TextAlign.left,
//                           ),
//                         ),
//                       Padding(
//                         padding: const EdgeInsets.only(
//                           top: 30,
//                           bottom: 6,
//                         ),
//                         child: Text(
//                           'Interests',
//                           style: Theme.of(context).textTheme.titleMedium,
//                         ),
//                       ),
//                       AppInputField(
//                         onTap: () async {
//                           final selectedInterests =
//                               ref.read(selectedInterestsNotifierProvider);
//                           var selectedInterestsNotifier = ref
//                               .read(selectedInterestsNotifierProvider.notifier);
//                           //add saved interests to select interests in the first loading of the page
//                           if (selectedInterests.isEmpty) {
//                             selectedInterestsNotifier
//                                 .addAll(notifier.interests ?? []);
//                           }
//                           List<CheckBoxModel>? interests = await context.router
//                               .push<List<CheckBoxModel>>(InterestsRoute());
//
//                           String interestsString = '';
//                           if (interests == null) {
//                             ref
//                                 .read(
//                                     selectedInterestsNotifierProvider.notifier)
//                                 .rollback(ref);
//                           } else {
//                             notifier.interests = interests;
//                             if (interests.isNotEmpty) {
//                               interestsString = interests[0].name;
//                               if (interests.length > 1) {
//                                 interestsString += ', ' + interests[1].name;
//                               }
//                               if (interests.length > 2) {
//                                 interestsString += ' ...';
//                               }
//
//                               // for (int i = 0; i < interests!.length; i++) {
//                               //   if (i == interests.length - 1) {
//                               //     interestsString += interests[i].interest;
//                               //     break;
//                               //   }
//                               //   interestsString += interests[i].interest + ", ";
//                               // }
//
//                             }
//                             notifier.interestsController.text = interestsString;
//                           }
//                         },
//                         controller: notifier.interestsController,
//                         onSaved: (_) {},
//                         suffix: SvgPicture.asset(AppVectors.chevronDown),
//                         validator: (_) {
//                           final selectedInterests =
//                               ref.read(selectedInterestsNotifierProvider);
//                           if (selectedInterests.isEmpty) {
//                             return 'Please select at least one interest!';
//                           }
//                           return null;
//                         },
//                       ),
//                       const SizedBox(
//                         height: 36,
//                       ),
//                       AppButton(
//                         onPressed: () {
//                           notifier.validateAndSubmit(ref, context);
//                         },
//                         loading: state is InfluencerSetupLoading ||
//                             state is InfluencerSetupLocationLoading,
//                         text: notifier.createAccountModel == null
//                             ? AppStrings.submit
//                             : AppStrings.next,
//                       )
//                     ],
//                   ),
//                 );
//               }),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
