import 'package:ddd_sample/domain/auth/login_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'business_login_response_model.freezed.dart';
part 'business_login_response_model.g.dart';

@freezed
class BusinessLoginResponseModel
    with _$BusinessLoginResponseModel
    implements LoginResponseModel {
  factory BusinessLoginResponseModel({
    required String token,
    @JsonKey(name: 'data') required BusinessDataModel userDataModel,
  }) = _BusinessLoginResponseModel;

  factory BusinessLoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$BusinessLoginResponseModelFromJson(json);
}

@freezed
class BusinessDataModel with _$BusinessDataModel implements UserDataModel {
  factory BusinessDataModel({
    required int id,
    @JsonKey(name: 'bussiness_name') required String? businessName,
    @JsonKey(name: 'contact_name') required String? contactPersonName,
    required String? logo,
    @JsonKey(name: 'referal_code') required String? referralCode,
    required String? description,
    required String? building,
    required String? area,
    @JsonKey(name: 'phone_number') required String? phoneNumber,
    @JsonKey(name: 'phone_code') required String? phoneCode,
    required String email,
  }) = _BusinessDataModel;

  factory BusinessDataModel.fromJson(Map<String, dynamic> json) =>
      _$BusinessDataModelFromJson(json);
}

// @freezed
// class LoginResponseData with _$LoginResponseDaata{
//   factory LoginResponseData() = _LoginResponseData;
//
//   factory LoginResponseData.fromJson(Map<String, dynamic> json) =>
//       _$LoginResponseDataFromJson(json);
// }
