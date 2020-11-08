// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'conversation_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ConversationDto _$ConversationDtoFromJson(Map<String, dynamic> json) {
  return _ConversationDto.fromJson(json);
}

/// @nodoc
class _$ConversationDtoTearOff {
  const _$ConversationDtoTearOff();

// ignore: unused_element
  _ConversationDto call(
      {@required String id,
      @required @ServerTimestampConverter() FieldValue serverTimeStamp,
      @required String postId,
      @required String postTitle,
      @required String postImageUrl,
      @required DateTime postPublishedDate,
      @required int postPrice,
      @required String postUserId,
      @required String postUsername,
      @required String postCity,
      @required String recentMessageContent,
      @required DateTime recentMessageDate,
      @required String displayUserName}) {
    return _ConversationDto(
      id: id,
      serverTimeStamp: serverTimeStamp,
      postId: postId,
      postTitle: postTitle,
      postImageUrl: postImageUrl,
      postPublishedDate: postPublishedDate,
      postPrice: postPrice,
      postUserId: postUserId,
      postUsername: postUsername,
      postCity: postCity,
      recentMessageContent: recentMessageContent,
      recentMessageDate: recentMessageDate,
      displayUserName: displayUserName,
    );
  }

// ignore: unused_element
  ConversationDto fromJson(Map<String, Object> json) {
    return ConversationDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ConversationDto = _$ConversationDtoTearOff();

/// @nodoc
mixin _$ConversationDto {
  String get id;
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;
  String get postId;
  String get postTitle;
  String get postImageUrl;
  DateTime get postPublishedDate;
  int get postPrice;
  String get postUserId;
  String get postUsername;
  String get postCity; // @required MessageDto messageDto,
  String get recentMessageContent;
  DateTime get recentMessageDate;
  String get displayUserName;

  Map<String, dynamic> toJson();
  $ConversationDtoCopyWith<ConversationDto> get copyWith;
}

/// @nodoc
abstract class $ConversationDtoCopyWith<$Res> {
  factory $ConversationDtoCopyWith(
          ConversationDto value, $Res Function(ConversationDto) then) =
      _$ConversationDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      @ServerTimestampConverter() FieldValue serverTimeStamp,
      String postId,
      String postTitle,
      String postImageUrl,
      DateTime postPublishedDate,
      int postPrice,
      String postUserId,
      String postUsername,
      String postCity,
      String recentMessageContent,
      DateTime recentMessageDate,
      String displayUserName});
}

/// @nodoc
class _$ConversationDtoCopyWithImpl<$Res>
    implements $ConversationDtoCopyWith<$Res> {
  _$ConversationDtoCopyWithImpl(this._value, this._then);

  final ConversationDto _value;
  // ignore: unused_field
  final $Res Function(ConversationDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object serverTimeStamp = freezed,
    Object postId = freezed,
    Object postTitle = freezed,
    Object postImageUrl = freezed,
    Object postPublishedDate = freezed,
    Object postPrice = freezed,
    Object postUserId = freezed,
    Object postUsername = freezed,
    Object postCity = freezed,
    Object recentMessageContent = freezed,
    Object recentMessageDate = freezed,
    Object displayUserName = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
      postId: postId == freezed ? _value.postId : postId as String,
      postTitle: postTitle == freezed ? _value.postTitle : postTitle as String,
      postImageUrl: postImageUrl == freezed
          ? _value.postImageUrl
          : postImageUrl as String,
      postPublishedDate: postPublishedDate == freezed
          ? _value.postPublishedDate
          : postPublishedDate as DateTime,
      postPrice: postPrice == freezed ? _value.postPrice : postPrice as int,
      postUserId:
          postUserId == freezed ? _value.postUserId : postUserId as String,
      postUsername: postUsername == freezed
          ? _value.postUsername
          : postUsername as String,
      postCity: postCity == freezed ? _value.postCity : postCity as String,
      recentMessageContent: recentMessageContent == freezed
          ? _value.recentMessageContent
          : recentMessageContent as String,
      recentMessageDate: recentMessageDate == freezed
          ? _value.recentMessageDate
          : recentMessageDate as DateTime,
      displayUserName: displayUserName == freezed
          ? _value.displayUserName
          : displayUserName as String,
    ));
  }
}

/// @nodoc
abstract class _$ConversationDtoCopyWith<$Res>
    implements $ConversationDtoCopyWith<$Res> {
  factory _$ConversationDtoCopyWith(
          _ConversationDto value, $Res Function(_ConversationDto) then) =
      __$ConversationDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      @ServerTimestampConverter() FieldValue serverTimeStamp,
      String postId,
      String postTitle,
      String postImageUrl,
      DateTime postPublishedDate,
      int postPrice,
      String postUserId,
      String postUsername,
      String postCity,
      String recentMessageContent,
      DateTime recentMessageDate,
      String displayUserName});
}

/// @nodoc
class __$ConversationDtoCopyWithImpl<$Res>
    extends _$ConversationDtoCopyWithImpl<$Res>
    implements _$ConversationDtoCopyWith<$Res> {
  __$ConversationDtoCopyWithImpl(
      _ConversationDto _value, $Res Function(_ConversationDto) _then)
      : super(_value, (v) => _then(v as _ConversationDto));

  @override
  _ConversationDto get _value => super._value as _ConversationDto;

  @override
  $Res call({
    Object id = freezed,
    Object serverTimeStamp = freezed,
    Object postId = freezed,
    Object postTitle = freezed,
    Object postImageUrl = freezed,
    Object postPublishedDate = freezed,
    Object postPrice = freezed,
    Object postUserId = freezed,
    Object postUsername = freezed,
    Object postCity = freezed,
    Object recentMessageContent = freezed,
    Object recentMessageDate = freezed,
    Object displayUserName = freezed,
  }) {
    return _then(_ConversationDto(
      id: id == freezed ? _value.id : id as String,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
      postId: postId == freezed ? _value.postId : postId as String,
      postTitle: postTitle == freezed ? _value.postTitle : postTitle as String,
      postImageUrl: postImageUrl == freezed
          ? _value.postImageUrl
          : postImageUrl as String,
      postPublishedDate: postPublishedDate == freezed
          ? _value.postPublishedDate
          : postPublishedDate as DateTime,
      postPrice: postPrice == freezed ? _value.postPrice : postPrice as int,
      postUserId:
          postUserId == freezed ? _value.postUserId : postUserId as String,
      postUsername: postUsername == freezed
          ? _value.postUsername
          : postUsername as String,
      postCity: postCity == freezed ? _value.postCity : postCity as String,
      recentMessageContent: recentMessageContent == freezed
          ? _value.recentMessageContent
          : recentMessageContent as String,
      recentMessageDate: recentMessageDate == freezed
          ? _value.recentMessageDate
          : recentMessageDate as DateTime,
      displayUserName: displayUserName == freezed
          ? _value.displayUserName
          : displayUserName as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ConversationDto extends _ConversationDto {
  const _$_ConversationDto(
      {@required this.id,
      @required @ServerTimestampConverter() this.serverTimeStamp,
      @required this.postId,
      @required this.postTitle,
      @required this.postImageUrl,
      @required this.postPublishedDate,
      @required this.postPrice,
      @required this.postUserId,
      @required this.postUsername,
      @required this.postCity,
      @required this.recentMessageContent,
      @required this.recentMessageDate,
      @required this.displayUserName})
      : assert(id != null),
        assert(serverTimeStamp != null),
        assert(postId != null),
        assert(postTitle != null),
        assert(postImageUrl != null),
        assert(postPublishedDate != null),
        assert(postPrice != null),
        assert(postUserId != null),
        assert(postUsername != null),
        assert(postCity != null),
        assert(recentMessageContent != null),
        assert(recentMessageDate != null),
        assert(displayUserName != null),
        super._();

  factory _$_ConversationDto.fromJson(Map<String, dynamic> json) =>
      _$_$_ConversationDtoFromJson(json);

  @override
  final String id;
  @override
  @ServerTimestampConverter()
  final FieldValue serverTimeStamp;
  @override
  final String postId;
  @override
  final String postTitle;
  @override
  final String postImageUrl;
  @override
  final DateTime postPublishedDate;
  @override
  final int postPrice;
  @override
  final String postUserId;
  @override
  final String postUsername;
  @override
  final String postCity;
  @override // @required MessageDto messageDto,
  final String recentMessageContent;
  @override
  final DateTime recentMessageDate;
  @override
  final String displayUserName;

  @override
  String toString() {
    return 'ConversationDto(id: $id, serverTimeStamp: $serverTimeStamp, postId: $postId, postTitle: $postTitle, postImageUrl: $postImageUrl, postPublishedDate: $postPublishedDate, postPrice: $postPrice, postUserId: $postUserId, postUsername: $postUsername, postCity: $postCity, recentMessageContent: $recentMessageContent, recentMessageDate: $recentMessageDate, displayUserName: $displayUserName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ConversationDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.serverTimeStamp, serverTimeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.serverTimeStamp, serverTimeStamp)) &&
            (identical(other.postId, postId) ||
                const DeepCollectionEquality().equals(other.postId, postId)) &&
            (identical(other.postTitle, postTitle) ||
                const DeepCollectionEquality()
                    .equals(other.postTitle, postTitle)) &&
            (identical(other.postImageUrl, postImageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.postImageUrl, postImageUrl)) &&
            (identical(other.postPublishedDate, postPublishedDate) ||
                const DeepCollectionEquality()
                    .equals(other.postPublishedDate, postPublishedDate)) &&
            (identical(other.postPrice, postPrice) ||
                const DeepCollectionEquality()
                    .equals(other.postPrice, postPrice)) &&
            (identical(other.postUserId, postUserId) ||
                const DeepCollectionEquality()
                    .equals(other.postUserId, postUserId)) &&
            (identical(other.postUsername, postUsername) ||
                const DeepCollectionEquality()
                    .equals(other.postUsername, postUsername)) &&
            (identical(other.postCity, postCity) ||
                const DeepCollectionEquality()
                    .equals(other.postCity, postCity)) &&
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
      const DeepCollectionEquality().hash(serverTimeStamp) ^
      const DeepCollectionEquality().hash(postId) ^
      const DeepCollectionEquality().hash(postTitle) ^
      const DeepCollectionEquality().hash(postImageUrl) ^
      const DeepCollectionEquality().hash(postPublishedDate) ^
      const DeepCollectionEquality().hash(postPrice) ^
      const DeepCollectionEquality().hash(postUserId) ^
      const DeepCollectionEquality().hash(postUsername) ^
      const DeepCollectionEquality().hash(postCity) ^
      const DeepCollectionEquality().hash(recentMessageContent) ^
      const DeepCollectionEquality().hash(recentMessageDate) ^
      const DeepCollectionEquality().hash(displayUserName);

  @override
  _$ConversationDtoCopyWith<_ConversationDto> get copyWith =>
      __$ConversationDtoCopyWithImpl<_ConversationDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ConversationDtoToJson(this);
  }
}

abstract class _ConversationDto extends ConversationDto {
  const _ConversationDto._() : super._();
  const factory _ConversationDto(
      {@required String id,
      @required @ServerTimestampConverter() FieldValue serverTimeStamp,
      @required String postId,
      @required String postTitle,
      @required String postImageUrl,
      @required DateTime postPublishedDate,
      @required int postPrice,
      @required String postUserId,
      @required String postUsername,
      @required String postCity,
      @required String recentMessageContent,
      @required DateTime recentMessageDate,
      @required String displayUserName}) = _$_ConversationDto;

  factory _ConversationDto.fromJson(Map<String, dynamic> json) =
      _$_ConversationDto.fromJson;

  @override
  String get id;
  @override
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;
  @override
  String get postId;
  @override
  String get postTitle;
  @override
  String get postImageUrl;
  @override
  DateTime get postPublishedDate;
  @override
  int get postPrice;
  @override
  String get postUserId;
  @override
  String get postUsername;
  @override
  String get postCity;
  @override // @required MessageDto messageDto,
  String get recentMessageContent;
  @override
  DateTime get recentMessageDate;
  @override
  String get displayUserName;
  @override
  _$ConversationDtoCopyWith<_ConversationDto> get copyWith;
}
