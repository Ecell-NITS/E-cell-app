import 'package:freezed_annotation/freezed_annotation.dart';

part 'blog_model.freezed.dart';

part 'blog_model.g.dart';

@Freezed()
class BlogModel with _$BlogModel {
  const factory BlogModel.withDefinedComments({
    required String title,
    required dynamic intro,
    required dynamic content,
    required String tag,
    required String topicpic,
    required String writernmae,
    required String writeremail,
    required String writerintro,
    required String writerpic,
    @Default([]) List<String> likes,
    String? authorid,
    DateTime? timestamp,
    required List<Map<String, dynamic>> comments,
    String? collection,
  }) = _BlogModel;

  factory BlogModel.withDefaultComments({
    required String title,
    required dynamic intro,
    required dynamic content,
    required String tag,
    required String topicpic,
    required String writernmae,
    required String writeremail,
    required String writerintro,
    required String writerpic,
    @Default([]) required List<String> likes,
    String? authorid,
    DateTime? timestamp,
    String? collection,
  }) {
    return _BlogModel(
      title: title,
      intro: intro,
      content: content,
      tag: tag,
      topicpic: topicpic,
      writernmae: writernmae,
      writeremail: writeremail,
      writerintro: writerintro,
      writerpic: writerpic,
      likes: likes,
      authorid: authorid,
      timestamp: timestamp,
      comments: [
        {
          "commentauthor": null,
          "authorid": null,
          "commentpic": null,
          "text": null,
          "createdAt": DateTime.now(),
        }
      ],
      collection: collection,
    );
  }

  factory BlogModel.fromJson(Map<String, dynamic> json) =>
      _$BlogModelFromJson(json);
}
