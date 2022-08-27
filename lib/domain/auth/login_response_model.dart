abstract class LoginResponseModel {
  final String token;
  final UserDataModel userDataModel;

  LoginResponseModel(this.token, this.userDataModel);
}

abstract class UserDataModel {
  final String? referralCode;
  UserDataModel(this.referralCode);
}

// @freezed
// class LoginResponseData with _$LoginResponseData{
//   factory LoginResponseData() = _LoginResponseData;
//
//   factory LoginResponseData.fromJson(Map<String, dynamic> json) =>
//       _$LoginResponseDataFromJson(json);
// }
