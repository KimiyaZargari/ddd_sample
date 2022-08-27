import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_account_model.freezed.dart';

part 'create_account_model.g.dart';

@freezed
class CreateAccountModel with _$CreateAccountModel {
  factory CreateAccountModel(
          {required String email,
          required String password,
          @JsonKey(name: 'referal_code') String? referralCode}) =
      _CreateAccountModel;

  factory CreateAccountModel.fromJson(Map<String, dynamic> json) =>
      _$CreateAccountModelFromJson(json);
}
