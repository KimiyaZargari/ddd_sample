import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:ddd_sample/application/core/failures.dart';
import 'package:ddd_sample/domain/auth/business_login_response_model.dart';
import 'package:ddd_sample/domain/auth/influencer_login_response_model.dart';
import 'package:ddd_sample/domain/auth/login_model.dart';
import 'package:ddd_sample/domain/auth/login_response_model.dart';
import 'package:ddd_sample/domain/auth/otp_model.dart';
import 'package:ddd_sample/domain/core/enums.dart';
import 'package:ddd_sample/infrastructure/core/api_routes.dart';
import 'package:ddd_sample/infrastructure/core/local_storage.dart';

import '../../domain/auth/i_auth_repository.dart';
import '../core/http_services.dart';

class AuthRepository implements IAuthRepository {
  HttpService httpService;
  LocalStorage localStorage;

  final bool isReal = false;

  AuthRepository({required this.httpService, required this.localStorage});

  @override
  Future<Either<NetworkFailure, LoginResponseModel>> login(
      LoginModel loginModel) async {
    if (isReal) {
      return (await httpService.post('', data: loginModel.toJson())).fold((l) {
        return left(l);
      }, (r) {
        if (r['data']['type'] == 2) {
          return right(InfluencerLoginResponseModel.fromJson(r));
        } else {
          return right(BusinessLoginResponseModel.fromJson(r));
        }
      });
    } else {
      var rng = Random();
      int rand = rng.nextInt(4);
      switch (rand) {
        case 0:
          return right(InfluencerLoginResponseModel(
              token: 'fake token',
              userDataModel: InfluencerDataModel(
                contentTypes: [],
                email: loginModel.email,
                phoneNumber: '9123456789',
                phoneCode: '+98',
                influencerDetails: InfluencerDetails(
                    location: 'Iran-Tehran',
                    facebookId: null,
                    instagramId: null,
                    youtubeId: null,
                    birthdate: DateTime.now(),
                    interests: [],
                    twitterId: null,
                    name: 'Kimiya',
                    description: 'awesome developer :)',
                    gender: 2,
                    profileImage: null),
                referralCode: '',
                points: 13,
              )));
        case 1:
          return right(BusinessLoginResponseModel(
              token: 'fake business token',
              userDataModel: BusinessDataModel(
                  description: 'awesome company',
                  referralCode: '',
                  phoneCode: '+98',
                  phoneNumber: '9129876543',
                  building: '3',
                  contactPersonName: 'Kimiya',
                  logo: null,
                  businessName: 'Zaman',
                  area: 'tehran',
                  email: loginModel.email,
                  id: 2)));
        case 3:
          return left(const NotFound('email not found'));
        default:
          return left(const UnauthenticatedUser('unauthenticated'));
      }
    }
  }

  @override
  Future<Either<NetworkFailure, Unit>> checkEmail(String email) async {
    if (isReal) {
      return (await httpService.post('', data: {'email': email})).fold((l) {
        return left(l);
      }, (r) => right(unit));
    } else {
      return right(unit);
    }
  }

  @override
  Future<Either<NetworkFailure, Unit>> resendOTP(String email) async {
    if (!isReal) return right(unit);
    return (await httpService.post("", data: {'email': email})).fold((l) {
      return (left(l));
    }, (r) => right(unit));
  }

  @override
  Future<Either<NetworkFailure, LoginResponseModel>> sendOTP(
      OTPModel otpModel) async {
    if (!isReal) {
      var rng = Random();
      int rand = rng.nextInt(4);
      switch (rand) {
        case 0:
          return right(InfluencerLoginResponseModel(
              token: 'fake token',
              userDataModel: InfluencerDataModel(
                contentTypes: [],
                email: otpModel.email,
                phoneNumber: '9123456789',
                phoneCode: '+98',
                influencerDetails: InfluencerDetails(
                    location: 'Iran-Tehran',
                    facebookId: null,
                    instagramId: null,
                    youtubeId: null,
                    birthdate: DateTime.now(),
                    interests: [],
                    twitterId: null,
                    name: 'Kimiya',
                    description: 'awesome developer :)',
                    gender: 2,
                    profileImage: null),
                referralCode: '',
                points: 13,
              )));
        case 1:
          return right(BusinessLoginResponseModel(
              token: 'fake business token',
              userDataModel: BusinessDataModel(
                  description: 'awesome company',
                  referralCode: '',
                  phoneCode: '+98',
                  phoneNumber: '9129876543',
                  building: '3',
                  contactPersonName: 'Kimiya',
                  logo: null,
                  businessName: 'Zaman',
                  area: 'tehran',
                  email: otpModel.email,
                  id: 2)));
        case 3:
          return left(const NotFound('email not found'));
        default:
          return left(const UnauthenticatedUser('unauthenticated'));
      }
    }

    return (await httpService.post('', data: otpModel.toJson())).fold((l) {
      return (left(l));
    }, (r) {
      if (r['data']['type'] == 2) {
        return right(InfluencerLoginResponseModel.fromJson(r));
      } else {
        return right(BusinessLoginResponseModel.fromJson(r));
      }
    });
  }

  @override
  Future<bool> saveToken(String token) async {
    // await _saveUserType(UserType.influencer);
    return await localStorage.setString(
        key: LocalStorage.keyToken, value: token);
  }

  @override
  Future<bool> saveUserType(UserType userType) async {
    return await localStorage.setString(
        key: LocalStorage.keyUserType, value: userTypeText(userType));
  }

  @override
  Future<String?> fetchToken() async {
    // final userType = await localStorage.getString(
    //   key: LocalStorage.keyUserType,
    // );

    return await localStorage.getString(
      key: LocalStorage.keyToken,
    );
  }

  //
  @override
  Future<Either<Failure, UserDataModel>> getUserDetails() async {
    final userType = await localStorage.getString(
      key: LocalStorage.keyUserType,
    );
    switch (userTypeValues.map[userType]) {
      case null:
        return left(const CouldNotFetchData());
      case UserType.business:
        if (isReal) {
          return (await httpService.get("")).fold((l) {
            return left(const UnauthenticatedUser('unauthenticated'));
          }, (r) {
            return right(BusinessDataModel.fromJson(r['data']));
          });
        } else {
          var rng = Random();
          int rand = rng.nextInt(2);
          switch (rand) {
            case 0:
              return right(BusinessDataModel(
                  description: 'awesome company',
                  referralCode: '',
                  phoneCode: '+98',
                  phoneNumber: '9129876543',
                  building: '3',
                  contactPersonName: 'Kimiya',
                  logo: null,
                  businessName: 'Zaman',
                  area: 'tehran',
                  email: '',
                  id: 2));

            default:
              return left(const UnauthenticatedUser('unauthenticated'));
          }
        }

      case UserType.influencer:
        if (isReal) {
          return (await httpService.get("")).fold((l) {
            return left(const UnauthenticatedUser('unauthenticated'));
          }, (r) {
            return right(InfluencerDataModel.fromJson(r['data']));
          });
        } else {
          var rng = Random();
          int rand = rng.nextInt(2);
          switch (rand) {
            case 0:
              return right(InfluencerDataModel(
                contentTypes: [],
                email: '',
                phoneNumber: '9123456789',
                phoneCode: '+98',
                influencerDetails: InfluencerDetails(
                    location: 'Iran-Tehran',
                    facebookId: null,
                    instagramId: null,
                    youtubeId: null,
                    birthdate: DateTime.now(),
                    interests: [],
                    twitterId: null,
                    name: 'Kimiya',
                    description: 'awesome developer :)',
                    gender: 2,
                    profileImage: null),
                referralCode: '',
                points: 13,
              ));

            default:
              return left(const UnauthenticatedUser('unauthenticated'));
          }
        }
    }
  }
}
