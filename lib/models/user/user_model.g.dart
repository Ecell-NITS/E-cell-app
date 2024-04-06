// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      name: json['name'] as String?,
      email: json['email'] as String,
      password: json['password'] as String,
      bio: json['bio'] as String?,
      userimg: json['userimg'] as String?,
      github: json['github'] as String?,
      facebook: json['facebook'] as String?,
      linkedin: json['linkedin'] as String?,
      instagram: json['instagram'] as String?,
      role: json['role'] as String? ?? "client",
      deleteAccount: (json['deleteAccount'] as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>)
              .toList() ??
          const [
            {"flaggedForDeletion": false, "reason": null}
          ],
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'bio': instance.bio,
      'userimg': instance.userimg,
      'github': instance.github,
      'facebook': instance.facebook,
      'linkedin': instance.linkedin,
      'instagram': instance.instagram,
      'role': instance.role,
      'deleteAccount': instance.deleteAccount,
    };
