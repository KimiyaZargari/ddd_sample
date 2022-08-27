import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_response_model.freezed.dart';

part 'sign_up_response_model.g.dart';

@freezed
class SignUpResponseModel with _$SignUpResponseModel {
  factory SignUpResponseModel({
    required int? id,
    required String? name,
    required String? email,
    required String token,
    required String? avatar,
    //todo add later
  }) = _SignUpResponseModel;

  factory SignUpResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseModelFromJson(json);
}

// @freezed
// class LoginResponseData with _$LoginResponseData{
//   factory LoginResponseData() = _LoginResponseData;
//
//   factory LoginResponseData.fromJson(Map<String, dynamic> json) =>
//       _$LoginResponseDataFromJson(json);
// }
