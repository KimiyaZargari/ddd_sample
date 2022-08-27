import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp_model.freezed.dart';

part 'otp_model.g.dart';

@freezed
class OTPModel with _$OTPModel {
  factory OTPModel({
    required String email,
    required String otp,
    @JsonKey(name: 'device_type') required int deviceType,
    @JsonKey(name: 'device_token') required String deviceToken,
  }) = _OTPModel;

  factory OTPModel.fromJson(Map<String, dynamic> json) =>
      _$OTPModelFromJson(json);
}
