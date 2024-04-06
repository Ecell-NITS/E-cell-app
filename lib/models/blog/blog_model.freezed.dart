// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blog_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BlogModel _$BlogModelFromJson(Map<String, dynamic> json) {
  return _BlogModel.fromJson(json);
}

/// @nodoc
mixin _$BlogModel {
  String get title => throw _privateConstructorUsedError;
  dynamic get intro => throw _privateConstructorUsedError;
  dynamic get content => throw _privateConstructorUsedError;
  String get tag => throw _privateConstructorUsedError;
  String get topicpic => throw _privateConstructorUsedError;
  String get writernmae => throw _privateConstructorUsedError;
  String get writeremail => throw _privateConstructorUsedError;
  String get writerintro => throw _privateConstructorUsedError;
  String get writerpic => throw _privateConstructorUsedError;
  List<String> get likes => throw _privateConstructorUsedError;
  String? get authorid => throw _privateConstructorUsedError;
  DateTime? get timestamp => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get comments => throw _privateConstructorUsedError;
  String? get collection => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String title,
            dynamic intro,
            dynamic content,
            String tag,
            String topicpic,
            String writernmae,
            String writeremail,
            String writerintro,
            String writerpic,
            List<String> likes,
            String? authorid,
            DateTime? timestamp,
            List<Map<String, dynamic>> comments,
            String? collection)
        withDefinedComments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String title,
            dynamic intro,
            dynamic content,
            String tag,
            String topicpic,
            String writernmae,
            String writeremail,
            String writerintro,
            String writerpic,
            List<String> likes,
            String? authorid,
            DateTime? timestamp,
            List<Map<String, dynamic>> comments,
            String? collection)?
        withDefinedComments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String title,
            dynamic intro,
            dynamic content,
            String tag,
            String topicpic,
            String writernmae,
            String writeremail,
            String writerintro,
            String writerpic,
            List<String> likes,
            String? authorid,
            DateTime? timestamp,
            List<Map<String, dynamic>> comments,
            String? collection)?
        withDefinedComments,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BlogModel value) withDefinedComments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BlogModel value)? withDefinedComments,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BlogModel value)? withDefinedComments,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BlogModelCopyWith<BlogModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogModelCopyWith<$Res> {
  factory $BlogModelCopyWith(BlogModel value, $Res Function(BlogModel) then) =
      _$BlogModelCopyWithImpl<$Res, BlogModel>;
  @useResult
  $Res call(
      {String title,
      dynamic intro,
      dynamic content,
      String tag,
      String topicpic,
      String writernmae,
      String writeremail,
      String writerintro,
      String writerpic,
      List<String> likes,
      String? authorid,
      DateTime? timestamp,
      List<Map<String, dynamic>> comments,
      String? collection});
}

/// @nodoc
class _$BlogModelCopyWithImpl<$Res, $Val extends BlogModel>
    implements $BlogModelCopyWith<$Res> {
  _$BlogModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? intro = freezed,
    Object? content = freezed,
    Object? tag = null,
    Object? topicpic = null,
    Object? writernmae = null,
    Object? writeremail = null,
    Object? writerintro = null,
    Object? writerpic = null,
    Object? likes = null,
    Object? authorid = freezed,
    Object? timestamp = freezed,
    Object? comments = null,
    Object? collection = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      intro: freezed == intro
          ? _value.intro
          : intro // ignore: cast_nullable_to_non_nullable
              as dynamic,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      topicpic: null == topicpic
          ? _value.topicpic
          : topicpic // ignore: cast_nullable_to_non_nullable
              as String,
      writernmae: null == writernmae
          ? _value.writernmae
          : writernmae // ignore: cast_nullable_to_non_nullable
              as String,
      writeremail: null == writeremail
          ? _value.writeremail
          : writeremail // ignore: cast_nullable_to_non_nullable
              as String,
      writerintro: null == writerintro
          ? _value.writerintro
          : writerintro // ignore: cast_nullable_to_non_nullable
              as String,
      writerpic: null == writerpic
          ? _value.writerpic
          : writerpic // ignore: cast_nullable_to_non_nullable
              as String,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      authorid: freezed == authorid
          ? _value.authorid
          : authorid // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      collection: freezed == collection
          ? _value.collection
          : collection // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlogModelImplCopyWith<$Res>
    implements $BlogModelCopyWith<$Res> {
  factory _$$BlogModelImplCopyWith(
          _$BlogModelImpl value, $Res Function(_$BlogModelImpl) then) =
      __$$BlogModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      dynamic intro,
      dynamic content,
      String tag,
      String topicpic,
      String writernmae,
      String writeremail,
      String writerintro,
      String writerpic,
      List<String> likes,
      String? authorid,
      DateTime? timestamp,
      List<Map<String, dynamic>> comments,
      String? collection});
}

/// @nodoc
class __$$BlogModelImplCopyWithImpl<$Res>
    extends _$BlogModelCopyWithImpl<$Res, _$BlogModelImpl>
    implements _$$BlogModelImplCopyWith<$Res> {
  __$$BlogModelImplCopyWithImpl(
      _$BlogModelImpl _value, $Res Function(_$BlogModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? intro = freezed,
    Object? content = freezed,
    Object? tag = null,
    Object? topicpic = null,
    Object? writernmae = null,
    Object? writeremail = null,
    Object? writerintro = null,
    Object? writerpic = null,
    Object? likes = null,
    Object? authorid = freezed,
    Object? timestamp = freezed,
    Object? comments = null,
    Object? collection = freezed,
  }) {
    return _then(_$BlogModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      intro: freezed == intro
          ? _value.intro
          : intro // ignore: cast_nullable_to_non_nullable
              as dynamic,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      topicpic: null == topicpic
          ? _value.topicpic
          : topicpic // ignore: cast_nullable_to_non_nullable
              as String,
      writernmae: null == writernmae
          ? _value.writernmae
          : writernmae // ignore: cast_nullable_to_non_nullable
              as String,
      writeremail: null == writeremail
          ? _value.writeremail
          : writeremail // ignore: cast_nullable_to_non_nullable
              as String,
      writerintro: null == writerintro
          ? _value.writerintro
          : writerintro // ignore: cast_nullable_to_non_nullable
              as String,
      writerpic: null == writerpic
          ? _value.writerpic
          : writerpic // ignore: cast_nullable_to_non_nullable
              as String,
      likes: null == likes
          ? _value._likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      authorid: freezed == authorid
          ? _value.authorid
          : authorid // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      comments: null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      collection: freezed == collection
          ? _value.collection
          : collection // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlogModelImpl implements _BlogModel {
  const _$BlogModelImpl(
      {required this.title,
      required this.intro,
      required this.content,
      required this.tag,
      required this.topicpic,
      required this.writernmae,
      required this.writeremail,
      required this.writerintro,
      required this.writerpic,
      final List<String> likes = const [],
      this.authorid,
      this.timestamp,
      required final List<Map<String, dynamic>> comments,
      this.collection})
      : _likes = likes,
        _comments = comments;

  factory _$BlogModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlogModelImplFromJson(json);

  @override
  final String title;
  @override
  final dynamic intro;
  @override
  final dynamic content;
  @override
  final String tag;
  @override
  final String topicpic;
  @override
  final String writernmae;
  @override
  final String writeremail;
  @override
  final String writerintro;
  @override
  final String writerpic;
  final List<String> _likes;
  @override
  @JsonKey()
  List<String> get likes {
    if (_likes is EqualUnmodifiableListView) return _likes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_likes);
  }

  @override
  final String? authorid;
  @override
  final DateTime? timestamp;
  final List<Map<String, dynamic>> _comments;
  @override
  List<Map<String, dynamic>> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  @override
  final String? collection;

  @override
  String toString() {
    return 'BlogModel.withDefinedComments(title: $title, intro: $intro, content: $content, tag: $tag, topicpic: $topicpic, writernmae: $writernmae, writeremail: $writeremail, writerintro: $writerintro, writerpic: $writerpic, likes: $likes, authorid: $authorid, timestamp: $timestamp, comments: $comments, collection: $collection)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlogModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other.intro, intro) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.topicpic, topicpic) ||
                other.topicpic == topicpic) &&
            (identical(other.writernmae, writernmae) ||
                other.writernmae == writernmae) &&
            (identical(other.writeremail, writeremail) ||
                other.writeremail == writeremail) &&
            (identical(other.writerintro, writerintro) ||
                other.writerintro == writerintro) &&
            (identical(other.writerpic, writerpic) ||
                other.writerpic == writerpic) &&
            const DeepCollectionEquality().equals(other._likes, _likes) &&
            (identical(other.authorid, authorid) ||
                other.authorid == authorid) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            (identical(other.collection, collection) ||
                other.collection == collection));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      const DeepCollectionEquality().hash(intro),
      const DeepCollectionEquality().hash(content),
      tag,
      topicpic,
      writernmae,
      writeremail,
      writerintro,
      writerpic,
      const DeepCollectionEquality().hash(_likes),
      authorid,
      timestamp,
      const DeepCollectionEquality().hash(_comments),
      collection);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlogModelImplCopyWith<_$BlogModelImpl> get copyWith =>
      __$$BlogModelImplCopyWithImpl<_$BlogModelImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String title,
            dynamic intro,
            dynamic content,
            String tag,
            String topicpic,
            String writernmae,
            String writeremail,
            String writerintro,
            String writerpic,
            List<String> likes,
            String? authorid,
            DateTime? timestamp,
            List<Map<String, dynamic>> comments,
            String? collection)
        withDefinedComments,
  }) {
    return withDefinedComments(
        title,
        intro,
        content,
        tag,
        topicpic,
        writernmae,
        writeremail,
        writerintro,
        writerpic,
        likes,
        authorid,
        timestamp,
        comments,
        collection);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String title,
            dynamic intro,
            dynamic content,
            String tag,
            String topicpic,
            String writernmae,
            String writeremail,
            String writerintro,
            String writerpic,
            List<String> likes,
            String? authorid,
            DateTime? timestamp,
            List<Map<String, dynamic>> comments,
            String? collection)?
        withDefinedComments,
  }) {
    return withDefinedComments?.call(
        title,
        intro,
        content,
        tag,
        topicpic,
        writernmae,
        writeremail,
        writerintro,
        writerpic,
        likes,
        authorid,
        timestamp,
        comments,
        collection);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String title,
            dynamic intro,
            dynamic content,
            String tag,
            String topicpic,
            String writernmae,
            String writeremail,
            String writerintro,
            String writerpic,
            List<String> likes,
            String? authorid,
            DateTime? timestamp,
            List<Map<String, dynamic>> comments,
            String? collection)?
        withDefinedComments,
    required TResult orElse(),
  }) {
    if (withDefinedComments != null) {
      return withDefinedComments(
          title,
          intro,
          content,
          tag,
          topicpic,
          writernmae,
          writeremail,
          writerintro,
          writerpic,
          likes,
          authorid,
          timestamp,
          comments,
          collection);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BlogModel value) withDefinedComments,
  }) {
    return withDefinedComments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BlogModel value)? withDefinedComments,
  }) {
    return withDefinedComments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BlogModel value)? withDefinedComments,
    required TResult orElse(),
  }) {
    if (withDefinedComments != null) {
      return withDefinedComments(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlogModelImplToJson(
      this,
    );
  }
}

abstract class _BlogModel implements BlogModel {
  const factory _BlogModel(
      {required final String title,
      required final dynamic intro,
      required final dynamic content,
      required final String tag,
      required final String topicpic,
      required final String writernmae,
      required final String writeremail,
      required final String writerintro,
      required final String writerpic,
      final List<String> likes,
      final String? authorid,
      final DateTime? timestamp,
      required final List<Map<String, dynamic>> comments,
      final String? collection}) = _$BlogModelImpl;

  factory _BlogModel.fromJson(Map<String, dynamic> json) =
      _$BlogModelImpl.fromJson;

  @override
  String get title;
  @override
  dynamic get intro;
  @override
  dynamic get content;
  @override
  String get tag;
  @override
  String get topicpic;
  @override
  String get writernmae;
  @override
  String get writeremail;
  @override
  String get writerintro;
  @override
  String get writerpic;
  @override
  List<String> get likes;
  @override
  String? get authorid;
  @override
  DateTime? get timestamp;
  @override
  List<Map<String, dynamic>> get comments;
  @override
  String? get collection;
  @override
  @JsonKey(ignore: true)
  _$$BlogModelImplCopyWith<_$BlogModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
