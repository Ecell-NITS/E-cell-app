import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';

part 'user_model.g.dart';

@Freezed()
class UserModel with _$UserModel {
  const factory UserModel({
    String? name,
    required String email,
    required String password,
    String? bio,
    String? userimg,
    String? github,
    String? facebook,
    String? linkedin,
    String? instagram,
    @Default("client") String role,
    @Default([
      {
        "flaggedForDeletion": false,
        "reason": null,
      }
    ])
    List<Map<String, dynamic>> deleteAccount,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
