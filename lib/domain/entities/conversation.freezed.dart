// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'conversation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ConversationTearOff {
  const _$ConversationTearOff();

// ignore: unused_element
  _Conversation call(
      {@required UniqueId id,
      @required UniqueId postId,
      @required PostTitle postTitle,
      @required String postImage,
      @required PostPublishedDate publishedDate,
      @required PostPrice postPrice,
      @required MessageContent recentMessageContent,
      @required PostPublishedDate recentMessageDate,
      @required UserName displayUserName}) {
    return _Conversation(
      id: id,
      postId: postId,
      postTitle: postTitle,
      postImage: postImage,
      publishedDate: publishedDate,
      postPrice: postPrice,
      recentMessageContent: recentMessageContent,
      recentMessageDate: recentMessageDate,
      displayUserName: displayUserName,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Conversation = _$ConversationTearOff();

/// @nodoc
mixin _$Conversation {
  UniqueId get id;
  UniqueId get postId;
  PostTitle get postTitle;
  String get postImage;
  PostPublishedDate get publishedDate;
  PostPrice get postPrice;
  MessageContent get recentMessageContent;
  PostPublishedDate get recentMessageDate;
  UserName get displayUserName;

  $ConversationCopyWith<Conversation> get copyWith;
}

/// @nodoc
abstract class $ConversationCopyWith<$Res> {
  factory $ConversationCopyWith(
          Conversation value, $Res Function(Conversation) then) =
      _$ConversationCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      UniqueId postId,
      PostTitle postTitle,
      String postImage,
      PostPublishedDate publishedDate,
      PostPrice postPrice,
      MessageContent recentMessageContent,
      PostPublishedDate recentMessageDate,
      UserName displayUserName});
}

/// @nodoc
class _$ConversationCopyWithImpl<$Res> implements $ConversationCopyWith<$Res> {
  _$ConversationCopyWithImpl(this._value, this._then);

  final Conversation _value;
  // ignore: unused_field
  final $Res Function(Conversation) _then;

  @override
  $Res call({
    Object id = freezed,
    Object postId = freezed,
    Object postTitle = freezed,
    Object postImage = freezed,
    Object publishedDate = freezed,
    Object postPrice = freezed,
    Object recentMessageContent = freezed,
    Object recentMessageDate = freezed,
    Object displayUserName = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      postId: postId == freezed ? _value.postId : postId as UniqueId,
      postTitle:
          postTitle == freezed ? _value.postTitle : postTitle as PostTitle,
      postImage: postImage == freezed ? _value.postImage : postImage as String,
      publishedDate: publishedDate == freezed
          ? _value.publishedDate
          : publishedDate as PostPublishedDate,
      postPrice:
          postPrice == freezed ? _value.postPrice : postPrice as PostPrice,
      recentMessageContent: recentMessageContent == freezed
          ? _value.recentMessageContent
          : recentMessageContent as MessageContent,
      recentMessageDate: recentMessageDate == freezed
          ? _value.recentMessageDate
          : recentMessageDate as PostPublishedDate,
      displayUserName: displayUserName == freezed
          ? _value.displayUserName
          : displayUserName as UserName,
    ));
  }
}

/// @nodoc
abstract class _$ConversationCopyWith<$Res>
    implements $ConversationCopyWith<$Res> {
  factory _$ConversationCopyWith(
          _Conversation value, $Res Function(_Conversation) then) =
      __$ConversationCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      UniqueId postId,
      PostTitle postTitle,
      String postImage,
      PostPublishedDate publishedDate,
      PostPrice postPrice,
      MessageContent recentMessageContent,
      PostPublishedDate recentMessageDate,
      UserName displayUserName});
}

/// @nodoc
class __$ConversationCopyWithImpl<$Res> extends _$ConversationCopyWithImpl<$Res>
    implements _$ConversationCopyWith<$Res> {
  __$ConversationCopyWithImpl(
      _Conversation _value, $Res Function(_Conversation) _then)
      : super(_value, (v) => _then(v as _Conversation));

  @override
  _Conversation get _value => super._value as _Conversation;

  @override
  $Res call({
    Object id = freezed,
    Object postId = freezed,
    Object postTitle = freezed,
    Object postImage = freezed,
    Object publishedDate = freezed,
    Object postPrice = freezed,
    Object recentMessageContent = freezed,
    Object recentMessageDate = freezed,
    Object displayUserName = freezed,
  }) {
    return _then(_Conversation(
      id: id == freezed ? _value.id : id as UniqueId,
      postId: postId == freezed ? _value.postId : postId as UniqueId,
      postTitle:
          postTitle == freezed ? _value.postTitle : postTitle as PostTitle,
      postImage: postImage == freezed ? _value.postImage : postImage as String,
      publishedDate: publishedDate == freezed
          ? _value.publishedDate
          : publishedDate as PostPublishedDate,
      postPrice:
          postPrice == freezed ? _value.postPrice : postPrice as PostPrice,
      recentMessageContent: recentMessageContent == freezed
          ? _value.recentMessageContent
          : recentMessageContent as MessageContent,
      recentMessageDate: recentMessageDate == freezed
          ? _value.recentMessageDate
          : recentMessageDate as PostPublishedDate,
      displayUserName: displayUserName == freezed
          ? _value.displayUserName
          : displayUserName as UserName,
    ));
  }
}

/// @nodoc
class _$_Conversation extends _Conversation {
  const _$_Conversation(
      {@required this.id,
      @required this.postId,
      @required this.postTitle,
      @required this.postImage,
      @required this.publishedDate,
      @required this.postPrice,
      @required this.recentMessageContent,
      @required this.recentMessageDate,
      @required this.displayUserName})
      : assert(id != null),
        assert(postId != null),
        assert(postTitle != null),
        assert(postImage != null),
        assert(publishedDate != null),
        assert(postPrice != null),
        assert(recentMessageContent != null),
        assert(recentMessageDate != null),
        assert(displayUserName != null),
        super._();

  @override
  final UniqueId id;
  @override
  final UniqueId postId;
  @override
  final PostTitle postTitle;
  @override
  final String postImage;
  @override
  final PostPublishedDate publishedDate;
  @override
  final PostPrice postPrice;
  @override
  final MessageContent recentMessageContent;
  @override
  final PostPublishedDate recentMessageDate;
  @override
  final UserName displayUserName;

  @override
  String toString() {
    return 'Conversation(id: $id, postId: $postId, postTitle: $postTitle, postImage: $postImage, publishedDate: $publishedDate, postPrice: $postPrice, recentMessageContent: $recentMessageContent, recentMessageDate: $recentMessageDate, displayUserName: $displayUserName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Conversation &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.postId, postId) ||
                const DeepCollectionEquality().equals(other.postId, postId)) &&
            (identical(other.postTitle, postTitle) ||
                const DeepCollectionEquality()
                    .equals(other.postTitle, postTitle)) &&
            (identical(other.postImage, postImage) ||
                const DeepCollectionEquality()
                    .equals(other.postImage, postImage)) &&
            (identical(other.publishedDate, publishedDate) ||
                const DeepCollectionEquality()
                    .equals(other.publishedDate, publishedDate)) &&
            (identical(other.postPrice, postPrice) ||
                const DeepCollectionEquality()
                    .equals(other.postPrice, postPrice)) &&
            (identical(other.recentMessageContent, recentMessageContent) ||
                const DeepCollectionEquality().equals(
                    other.recentMessageContent, recentMessageContent)) &&
            (identical(other.recentMessageDate, recentMessageDate) ||
                const DeepCollectionEquality()
                    .equals(other.recentMessageDate, recentMessageDate)) &&
            (identical(other.displayUserName, displayUserName) ||
                const DeepCollectionEquality()
                    .equals(other.displayUserName, displayUserName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(postId) ^
      const DeepCollectionEquality().hash(postTitle) ^
      const DeepCollectionEquality().hash(postImage) ^
      const DeepCollectionEquality().hash(publishedDate) ^
      const DeepCollectionEquality().hash(postPrice) ^
      const DeepCollectionEquality().hash(recentMessageContent) ^
      const DeepCollectionEquality().hash(recentMessageDate) ^
      const DeepCollectionEquality().hash(displayUserName);

  @override
  _$ConversationCopyWith<_Conversation> get copyWith =>
      __$ConversationCopyWithImpl<_Conversation>(this, _$identity);
}

abstract class _Conversation extends Conversation {
  const _Conversation._() : super._();
  const factory _Conversation(
      {@required UniqueId id,
      @required UniqueId postId,
      @required PostTitle postTitle,
      @required String postImage,
      @required PostPublishedDate publishedDate,
      @required PostPrice postPrice,
      @required MessageContent recentMessageContent,
      @required PostPublishedDate recentMessageDate,
      @required UserName displayUserName}) = _$_Conversation;

  @override
  UniqueId get id;
  @override
  UniqueId get postId;
  @override
  PostTitle get postTitle;
  @override
  String get postImage;
  @override
  PostPublishedDate get publishedDate;
  @override
  PostPrice get postPrice;
  @override
  MessageContent get recentMessageContent;
  @override
  PostPublishedDate get recentMessageDate;
  @override
  UserName get displayUserName;
  @override
  _$ConversationCopyWith<_Conversation> get copyWith;
}
