import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp_model.freezed.dart';

part 'otp_model.g.dart';

@Freezed()
class OtpModel with _$OtpModel {
  const factory OtpModel({
    required String email,
    required String otp,
  }) = _OtpModel;

  factory OtpModel.fromJson(Map<String, dynamic> json) =>
      _$OtpModelFromJson(json);
}
