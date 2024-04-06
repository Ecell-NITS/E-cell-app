// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blog_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlogModelImpl _$$BlogModelImplFromJson(Map<String, dynamic> json) =>
    _$BlogModelImpl(
      title: json['title'] as String,
      intro: json['intro'],
      content: json['content'],
      tag: json['tag'] as String,
      topicpic: json['topicpic'] as String,
      writernmae: json['writernmae'] as String,
      writeremail: json['writeremail'] as String,
      writerintro: json['writerintro'] as String,
      writerpic: json['writerpic'] as String,
      likes:
          (json['likes'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      authorid: json['authorid'] as String?,
      timestamp: json['timestamp'] == null
          ? null
          : DateTime.parse(json['timestamp'] as String),
      comments: (json['comments'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      collection: json['collection'] as String?,
    );

Map<String, dynamic> _$$BlogModelImplToJson(_$BlogModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'intro': instance.intro,
      'content': instance.content,
      'tag': instance.tag,
      'topicpic': instance.topicpic,
      'writernmae': instance.writernmae,
      'writeremail': instance.writeremail,
      'writerintro': instance.writerintro,
      'writerpic': instance.writerpic,
      'likes': instance.likes,
      'authorid': instance.authorid,
      'timestamp': instance.timestamp?.toIso8601String(),
      'comments': instance.comments,
      'collection': instance.collection,
    };
