// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'post_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PostDto _$PostDtoFromJson(Map<String, dynamic> json) {
  return _PostDto.fromJson(json);
}

/// @nodoc
class _$PostDtoTearOff {
  const _$PostDtoTearOff();

// ignore: unused_element
  _PostDto call(
      {@required String id,
      @required String userId,
      @required String title,
      @required int price,
      @required String description,
      @required List<String> images,
      @required DateTime publishedDate,
      @required String city,
      @required String area,
      @required String country,
      @required String moreAccessories,
      @required bool avaliable,
      @required bool exhangable,
      @required bool negiotable,
      @required bool headphones,
      @required bool charger,
      @required String brand,
      @required String device,
      @required String age,
      @required String condition,
      @required String userAvatar,
      @required String userName,
      @required List<String> searchParams,
      @required List<dynamic> filterParams}) {
    return _PostDto(
      id: id,
      userId: userId,
      title: title,
      price: price,
      description: description,
      images: images,
      publishedDate: publishedDate,
      city: city,
      area: area,
      country: country,
      moreAccessories: moreAccessories,
      avaliable: avaliable,
      exhangable: exhangable,
      negiotable: negiotable,
      headphones: headphones,
      charger: charger,
      brand: brand,
      device: device,
      age: age,
      condition: condition,
      userAvatar: userAvatar,
      userName: userName,
      searchParams: searchParams,
      filterParams: filterParams,
    );
  }

// ignore: unused_element
  PostDto fromJson(Map<String, Object> json) {
    return PostDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PostDto = _$PostDtoTearOff();

/// @nodoc
mixin _$PostDto {
  String get id;
  String get userId;
  String get title;
  int get price;
  String get description;
  List<String>
      get images; // @required @ServerTimestampConverter() FieldValue publishedDate,
  DateTime get publishedDate;
  String get city;
  String get area;
  String get country;
  String get moreAccessories;
  bool get avaliable;
  bool get exhangable;
  bool get negiotable;
  bool get headphones;
  bool get charger;
  String get brand;
  String get device;
  String get age;
  String get condition;
  String get userAvatar;
  String get userName;
  List<String> get searchParams;
  List<dynamic> get filterParams;

  Map<String, dynamic> toJson();
  $PostDtoCopyWith<PostDto> get copyWith;
}

/// @nodoc
abstract class $PostDtoCopyWith<$Res> {
  factory $PostDtoCopyWith(PostDto value, $Res Function(PostDto) then) =
      _$PostDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String userId,
      String title,
      int price,
      String description,
      List<String> images,
      DateTime publishedDate,
      String city,
      String area,
      String country,
      String moreAccessories,
      bool avaliable,
      bool exhangable,
      bool negiotable,
      bool headphones,
      bool charger,
      String brand,
      String device,
      String age,
      String condition,
      String userAvatar,
      String userName,
      List<String> searchParams,
      List<dynamic> filterParams});
}

/// @nodoc
class _$PostDtoCopyWithImpl<$Res> implements $PostDtoCopyWith<$Res> {
  _$PostDtoCopyWithImpl(this._value, this._then);

  final PostDto _value;
  // ignore: unused_field
  final $Res Function(PostDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object userId = freezed,
    Object title = freezed,
    Object price = freezed,
    Object description = freezed,
    Object images = freezed,
    Object publishedDate = freezed,
    Object city = freezed,
    Object area = freezed,
    Object country = freezed,
    Object moreAccessories = freezed,
    Object avaliable = freezed,
    Object exhangable = freezed,
    Object negiotable = freezed,
    Object headphones = freezed,
    Object charger = freezed,
    Object brand = freezed,
    Object device = freezed,
    Object age = freezed,
    Object condition = freezed,
    Object userAvatar = freezed,
    Object userName = freezed,
    Object searchParams = freezed,
    Object filterParams = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      userId: userId == freezed ? _value.userId : userId as String,
      title: title == freezed ? _value.title : title as String,
      price: price == freezed ? _value.price : price as int,
      description:
          description == freezed ? _value.description : description as String,
      images: images == freezed ? _value.images : images as List<String>,
      publishedDate: publishedDate == freezed
          ? _value.publishedDate
          : publishedDate as DateTime,
      city: city == freezed ? _value.city : city as String,
      area: area == freezed ? _value.area : area as String,
      country: country == freezed ? _value.country : country as String,
      moreAccessories: moreAccessories == freezed
          ? _value.moreAccessories
          : moreAccessories as String,
      avaliable: avaliable == freezed ? _value.avaliable : avaliable as bool,
      exhangable:
          exhangable == freezed ? _value.exhangable : exhangable as bool,
      negiotable:
          negiotable == freezed ? _value.negiotable : negiotable as bool,
      headphones:
          headphones == freezed ? _value.headphones : headphones as bool,
      charger: charger == freezed ? _value.charger : charger as bool,
      brand: brand == freezed ? _value.brand : brand as String,
      device: device == freezed ? _value.device : device as String,
      age: age == freezed ? _value.age : age as String,
      condition: condition == freezed ? _value.condition : condition as String,
      userAvatar:
          userAvatar == freezed ? _value.userAvatar : userAvatar as String,
      userName: userName == freezed ? _value.userName : userName as String,
      searchParams: searchParams == freezed
          ? _value.searchParams
          : searchParams as List<String>,
      filterParams: filterParams == freezed
          ? _value.filterParams
          : filterParams as List<dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$PostDtoCopyWith<$Res> implements $PostDtoCopyWith<$Res> {
  factory _$PostDtoCopyWith(_PostDto value, $Res Function(_PostDto) then) =
      __$PostDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String userId,
      String title,
      int price,
      String description,
      List<String> images,
      DateTime publishedDate,
      String city,
      String area,
      String country,
      String moreAccessories,
      bool avaliable,
      bool exhangable,
      bool negiotable,
      bool headphones,
      bool charger,
      String brand,
      String device,
      String age,
      String condition,
      String userAvatar,
      String userName,
      List<String> searchParams,
      List<dynamic> filterParams});
}

/// @nodoc
class __$PostDtoCopyWithImpl<$Res> extends _$PostDtoCopyWithImpl<$Res>
    implements _$PostDtoCopyWith<$Res> {
  __$PostDtoCopyWithImpl(_PostDto _value, $Res Function(_PostDto) _then)
      : super(_value, (v) => _then(v as _PostDto));

  @override
  _PostDto get _value => super._value as _PostDto;

  @override
  $Res call({
    Object id = freezed,
    Object userId = freezed,
    Object title = freezed,
    Object price = freezed,
    Object description = freezed,
    Object images = freezed,
    Object publishedDate = freezed,
    Object city = freezed,
    Object area = freezed,
    Object country = freezed,
    Object moreAccessories = freezed,
    Object avaliable = freezed,
    Object exhangable = freezed,
    Object negiotable = freezed,
    Object headphones = freezed,
    Object charger = freezed,
    Object brand = freezed,
    Object device = freezed,
    Object age = freezed,
    Object condition = freezed,
    Object userAvatar = freezed,
    Object userName = freezed,
    Object searchParams = freezed,
    Object filterParams = freezed,
  }) {
    return _then(_PostDto(
      id: id == freezed ? _value.id : id as String,
      userId: userId == freezed ? _value.userId : userId as String,
      title: title == freezed ? _value.title : title as String,
      price: price == freezed ? _value.price : price as int,
      description:
          description == freezed ? _value.description : description as String,
      images: images == freezed ? _value.images : images as List<String>,
      publishedDate: publishedDate == freezed
          ? _value.publishedDate
          : publishedDate as DateTime,
      city: city == freezed ? _value.city : city as String,
      area: area == freezed ? _value.area : area as String,
      country: country == freezed ? _value.country : country as String,
      moreAccessories: moreAccessories == freezed
          ? _value.moreAccessories
          : moreAccessories as String,
      avaliable: avaliable == freezed ? _value.avaliable : avaliable as bool,
      exhangable:
          exhangable == freezed ? _value.exhangable : exhangable as bool,
      negiotable:
          negiotable == freezed ? _value.negiotable : negiotable as bool,
      headphones:
          headphones == freezed ? _value.headphones : headphones as bool,
      charger: charger == freezed ? _value.charger : charger as bool,
      brand: brand == freezed ? _value.brand : brand as String,
      device: device == freezed ? _value.device : device as String,
      age: age == freezed ? _value.age : age as String,
      condition: condition == freezed ? _value.condition : condition as String,
      userAvatar:
          userAvatar == freezed ? _value.userAvatar : userAvatar as String,
      userName: userName == freezed ? _value.userName : userName as String,
      searchParams: searchParams == freezed
          ? _value.searchParams
          : searchParams as List<String>,
      filterParams: filterParams == freezed
          ? _value.filterParams
          : filterParams as List<dynamic>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PostDto extends _PostDto {
  const _$_PostDto(
      {@required this.id,
      @required this.userId,
      @required this.title,
      @required this.price,
      @required this.description,
      @required this.images,
      @required this.publishedDate,
      @required this.city,
      @required this.area,
      @required this.country,
      @required this.moreAccessories,
      @required this.avaliable,
      @required this.exhangable,
      @required this.negiotable,
      @required this.headphones,
      @required this.charger,
      @required this.brand,
      @required this.device,
      @required this.age,
      @required this.condition,
      @required this.userAvatar,
      @required this.userName,
      @required this.searchParams,
      @required this.filterParams})
      : assert(id != null),
        assert(userId != null),
        assert(title != null),
        assert(price != null),
        assert(description != null),
        assert(images != null),
        assert(publishedDate != null),
        assert(city != null),
        assert(area != null),
        assert(country != null),
        assert(moreAccessories != null),
        assert(avaliable != null),
        assert(exhangable != null),
        assert(negiotable != null),
        assert(headphones != null),
        assert(charger != null),
        assert(brand != null),
        assert(device != null),
        assert(age != null),
        assert(condition != null),
        assert(userAvatar != null),
        assert(userName != null),
        assert(searchParams != null),
        assert(filterParams != null),
        super._();

  factory _$_PostDto.fromJson(Map<String, dynamic> json) =>
      _$_$_PostDtoFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String title;
  @override
  final int price;
  @override
  final String description;
  @override
  final List<String> images;
  @override // @required @ServerTimestampConverter() FieldValue publishedDate,
  final DateTime publishedDate;
  @override
  final String city;
  @override
  final String area;
  @override
  final String country;
  @override
  final String moreAccessories;
  @override
  final bool avaliable;
  @override
  final bool exhangable;
  @override
  final bool negiotable;
  @override
  final bool headphones;
  @override
  final bool charger;
  @override
  final String brand;
  @override
  final String device;
  @override
  final String age;
  @override
  final String condition;
  @override
  final String userAvatar;
  @override
  final String userName;
  @override
  final List<String> searchParams;
  @override
  final List<dynamic> filterParams;

  @override
  String toString() {
    return 'PostDto(id: $id, userId: $userId, title: $title, price: $price, description: $description, images: $images, publishedDate: $publishedDate, city: $city, area: $area, country: $country, moreAccessories: $moreAccessories, avaliable: $avaliable, exhangable: $exhangable, negiotable: $negiotable, headphones: $headphones, charger: $charger, brand: $brand, device: $device, age: $age, condition: $condition, userAvatar: $userAvatar, userName: $userName, searchParams: $searchParams, filterParams: $filterParams)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.publishedDate, publishedDate) ||
                const DeepCollectionEquality()
                    .equals(other.publishedDate, publishedDate)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.area, area) ||
                const DeepCollectionEquality().equals(other.area, area)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.moreAccessories, moreAccessories) ||
                const DeepCollectionEquality()
                    .equals(other.moreAccessories, moreAccessories)) &&
            (identical(other.avaliable, avaliable) ||
                const DeepCollectionEquality()
                    .equals(other.avaliable, avaliable)) &&
            (identical(other.exhangable, exhangable) ||
                const DeepCollectionEquality()
                    .equals(other.exhangable, exhangable)) &&
            (identical(other.negiotable, negiotable) ||
                const DeepCollectionEquality()
                    .equals(other.negiotable, negiotable)) &&
            (identical(other.headphones, headphones) ||
                const DeepCollectionEquality()
                    .equals(other.headphones, headphones)) &&
            (identical(other.charger, charger) ||
                const DeepCollectionEquality()
                    .equals(other.charger, charger)) &&
            (identical(other.brand, brand) ||
                const DeepCollectionEquality().equals(other.brand, brand)) &&
            (identical(other.device, device) ||
                const DeepCollectionEquality().equals(other.device, device)) &&
            (identical(other.age, age) ||
                const DeepCollectionEquality().equals(other.age, age)) &&
            (identical(other.condition, condition) ||
                const DeepCollectionEquality()
                    .equals(other.condition, condition)) &&
            (identical(other.userAvatar, userAvatar) ||
                const DeepCollectionEquality()
                    .equals(other.userAvatar, userAvatar)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.searchParams, searchParams) ||
                const DeepCollectionEquality()
                    .equals(other.searchParams, searchParams)) &&
            (identical(other.filterParams, filterParams) ||
                const DeepCollectionEquality()
                    .equals(other.filterParams, filterParams)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(publishedDate) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(area) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(moreAccessories) ^
      const DeepCollectionEquality().hash(avaliable) ^
      const DeepCollectionEquality().hash(exhangable) ^
      const DeepCollectionEquality().hash(negiotable) ^
      const DeepCollectionEquality().hash(headphones) ^
      const DeepCollectionEquality().hash(charger) ^
      const DeepCollectionEquality().hash(brand) ^
      const DeepCollectionEquality().hash(device) ^
      const DeepCollectionEquality().hash(age) ^
      const DeepCollectionEquality().hash(condition) ^
      const DeepCollectionEquality().hash(userAvatar) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(searchParams) ^
      const DeepCollectionEquality().hash(filterParams);

  @override
  _$PostDtoCopyWith<_PostDto> get copyWith =>
      __$PostDtoCopyWithImpl<_PostDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PostDtoToJson(this);
  }
}

abstract class _PostDto extends PostDto {
  const _PostDto._() : super._();
  const factory _PostDto(
      {@required String id,
      @required String userId,
      @required String title,
      @required int price,
      @required String description,
      @required List<String> images,
      @required DateTime publishedDate,
      @required String city,
      @required String area,
      @required String country,
      @required String moreAccessories,
      @required bool avaliable,
      @required bool exhangable,
      @required bool negiotable,
      @required bool headphones,
      @required bool charger,
      @required String brand,
      @required String device,
      @required String age,
      @required String condition,
      @required String userAvatar,
      @required String userName,
      @required List<String> searchParams,
      @required List<dynamic> filterParams}) = _$_PostDto;

  factory _PostDto.fromJson(Map<String, dynamic> json) = _$_PostDto.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get title;
  @override
  int get price;
  @override
  String get description;
  @override
  List<String> get images;
  @override // @required @ServerTimestampConverter() FieldValue publishedDate,
  DateTime get publishedDate;
  @override
  String get city;
  @override
  String get area;
  @override
  String get country;
  @override
  String get moreAccessories;
  @override
  bool get avaliable;
  @override
  bool get exhangable;
  @override
  bool get negiotable;
  @override
  bool get headphones;
  @override
  bool get charger;
  @override
  String get brand;
  @override
  String get device;
  @override
  String get age;
  @override
  String get condition;
  @override
  String get userAvatar;
  @override
  String get userName;
  @override
  List<String> get searchParams;
  @override
  List<dynamic> get filterParams;
  @override
  _$PostDtoCopyWith<_PostDto> get copyWith;
}
