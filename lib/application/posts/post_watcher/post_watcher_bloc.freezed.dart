// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'post_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PostWatcherEventTearOff {
  const _$PostWatcherEventTearOff();

// ignore: unused_element
  _WatchAllStarted watchAllStarted() {
    return const _WatchAllStarted();
  }

// ignore: unused_element
  _WatchAllFavoritesStarted watchAllFavoritesStarted() {
    return const _WatchAllFavoritesStarted();
  }

// ignore: unused_element
  _WatchMyPostsStarted watchMyPostsStarted() {
    return const _WatchMyPostsStarted();
  }

// ignore: unused_element
  _WatchFilteredPostsStarted watchFilteredPostsStarted(String city,
      String brand, bool exchangable, bool headphones, String price) {
    return _WatchFilteredPostsStarted(
      city,
      brand,
      exchangable,
      headphones,
      price,
    );
  }

// ignore: unused_element
  _WatchRelatedStarted watchRelatedStarted(String brand, String currentId) {
    return _WatchRelatedStarted(
      brand,
      currentId,
    );
  }

// ignore: unused_element
  _PostsReceived postsReceived(
      Either<PostFailure, KtList<Post>> failureOrPosts) {
    return _PostsReceived(
      failureOrPosts,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PostWatcherEvent = _$PostWatcherEventTearOff();

/// @nodoc
mixin _$PostWatcherEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(),
    @required Result watchAllFavoritesStarted(),
    @required Result watchMyPostsStarted(),
    @required
        Result watchFilteredPostsStarted(String city, String brand,
            bool exchangable, bool headphones, String price),
    @required Result watchRelatedStarted(String brand, String currentId),
    @required
        Result postsReceived(Either<PostFailure, KtList<Post>> failureOrPosts),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result watchAllFavoritesStarted(),
    Result watchMyPostsStarted(),
    Result watchFilteredPostsStarted(String city, String brand,
        bool exchangable, bool headphones, String price),
    Result watchRelatedStarted(String brand, String currentId),
    Result postsReceived(Either<PostFailure, KtList<Post>> failureOrPosts),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result watchAllFavoritesStarted(_WatchAllFavoritesStarted value),
    @required Result watchMyPostsStarted(_WatchMyPostsStarted value),
    @required
        Result watchFilteredPostsStarted(_WatchFilteredPostsStarted value),
    @required Result watchRelatedStarted(_WatchRelatedStarted value),
    @required Result postsReceived(_PostsReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result watchAllFavoritesStarted(_WatchAllFavoritesStarted value),
    Result watchMyPostsStarted(_WatchMyPostsStarted value),
    Result watchFilteredPostsStarted(_WatchFilteredPostsStarted value),
    Result watchRelatedStarted(_WatchRelatedStarted value),
    Result postsReceived(_PostsReceived value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $PostWatcherEventCopyWith<$Res> {
  factory $PostWatcherEventCopyWith(
          PostWatcherEvent value, $Res Function(PostWatcherEvent) then) =
      _$PostWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostWatcherEventCopyWithImpl<$Res>
    implements $PostWatcherEventCopyWith<$Res> {
  _$PostWatcherEventCopyWithImpl(this._value, this._then);

  final PostWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(PostWatcherEvent) _then;
}

/// @nodoc
abstract class _$WatchAllStartedCopyWith<$Res> {
  factory _$WatchAllStartedCopyWith(
          _WatchAllStarted value, $Res Function(_WatchAllStarted) then) =
      __$WatchAllStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchAllStartedCopyWithImpl<$Res>
    extends _$PostWatcherEventCopyWithImpl<$Res>
    implements _$WatchAllStartedCopyWith<$Res> {
  __$WatchAllStartedCopyWithImpl(
      _WatchAllStarted _value, $Res Function(_WatchAllStarted) _then)
      : super(_value, (v) => _then(v as _WatchAllStarted));

  @override
  _WatchAllStarted get _value => super._value as _WatchAllStarted;
}

/// @nodoc
class _$_WatchAllStarted implements _WatchAllStarted {
  const _$_WatchAllStarted();

  @override
  String toString() {
    return 'PostWatcherEvent.watchAllStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchAllStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(),
    @required Result watchAllFavoritesStarted(),
    @required Result watchMyPostsStarted(),
    @required
        Result watchFilteredPostsStarted(String city, String brand,
            bool exchangable, bool headphones, String price),
    @required Result watchRelatedStarted(String brand, String currentId),
    @required
        Result postsReceived(Either<PostFailure, KtList<Post>> failureOrPosts),
  }) {
    assert(watchAllStarted != null);
    assert(watchAllFavoritesStarted != null);
    assert(watchMyPostsStarted != null);
    assert(watchFilteredPostsStarted != null);
    assert(watchRelatedStarted != null);
    assert(postsReceived != null);
    return watchAllStarted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result watchAllFavoritesStarted(),
    Result watchMyPostsStarted(),
    Result watchFilteredPostsStarted(String city, String brand,
        bool exchangable, bool headphones, String price),
    Result watchRelatedStarted(String brand, String currentId),
    Result postsReceived(Either<PostFailure, KtList<Post>> failureOrPosts),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result watchAllFavoritesStarted(_WatchAllFavoritesStarted value),
    @required Result watchMyPostsStarted(_WatchMyPostsStarted value),
    @required
        Result watchFilteredPostsStarted(_WatchFilteredPostsStarted value),
    @required Result watchRelatedStarted(_WatchRelatedStarted value),
    @required Result postsReceived(_PostsReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(watchAllFavoritesStarted != null);
    assert(watchMyPostsStarted != null);
    assert(watchFilteredPostsStarted != null);
    assert(watchRelatedStarted != null);
    assert(postsReceived != null);
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result watchAllFavoritesStarted(_WatchAllFavoritesStarted value),
    Result watchMyPostsStarted(_WatchMyPostsStarted value),
    Result watchFilteredPostsStarted(_WatchFilteredPostsStarted value),
    Result watchRelatedStarted(_WatchRelatedStarted value),
    Result postsReceived(_PostsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements PostWatcherEvent {
  const factory _WatchAllStarted() = _$_WatchAllStarted;
}

/// @nodoc
abstract class _$WatchAllFavoritesStartedCopyWith<$Res> {
  factory _$WatchAllFavoritesStartedCopyWith(_WatchAllFavoritesStarted value,
          $Res Function(_WatchAllFavoritesStarted) then) =
      __$WatchAllFavoritesStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchAllFavoritesStartedCopyWithImpl<$Res>
    extends _$PostWatcherEventCopyWithImpl<$Res>
    implements _$WatchAllFavoritesStartedCopyWith<$Res> {
  __$WatchAllFavoritesStartedCopyWithImpl(_WatchAllFavoritesStarted _value,
      $Res Function(_WatchAllFavoritesStarted) _then)
      : super(_value, (v) => _then(v as _WatchAllFavoritesStarted));

  @override
  _WatchAllFavoritesStarted get _value =>
      super._value as _WatchAllFavoritesStarted;
}

/// @nodoc
class _$_WatchAllFavoritesStarted implements _WatchAllFavoritesStarted {
  const _$_WatchAllFavoritesStarted();

  @override
  String toString() {
    return 'PostWatcherEvent.watchAllFavoritesStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchAllFavoritesStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(),
    @required Result watchAllFavoritesStarted(),
    @required Result watchMyPostsStarted(),
    @required
        Result watchFilteredPostsStarted(String city, String brand,
            bool exchangable, bool headphones, String price),
    @required Result watchRelatedStarted(String brand, String currentId),
    @required
        Result postsReceived(Either<PostFailure, KtList<Post>> failureOrPosts),
  }) {
    assert(watchAllStarted != null);
    assert(watchAllFavoritesStarted != null);
    assert(watchMyPostsStarted != null);
    assert(watchFilteredPostsStarted != null);
    assert(watchRelatedStarted != null);
    assert(postsReceived != null);
    return watchAllFavoritesStarted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result watchAllFavoritesStarted(),
    Result watchMyPostsStarted(),
    Result watchFilteredPostsStarted(String city, String brand,
        bool exchangable, bool headphones, String price),
    Result watchRelatedStarted(String brand, String currentId),
    Result postsReceived(Either<PostFailure, KtList<Post>> failureOrPosts),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllFavoritesStarted != null) {
      return watchAllFavoritesStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result watchAllFavoritesStarted(_WatchAllFavoritesStarted value),
    @required Result watchMyPostsStarted(_WatchMyPostsStarted value),
    @required
        Result watchFilteredPostsStarted(_WatchFilteredPostsStarted value),
    @required Result watchRelatedStarted(_WatchRelatedStarted value),
    @required Result postsReceived(_PostsReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(watchAllFavoritesStarted != null);
    assert(watchMyPostsStarted != null);
    assert(watchFilteredPostsStarted != null);
    assert(watchRelatedStarted != null);
    assert(postsReceived != null);
    return watchAllFavoritesStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result watchAllFavoritesStarted(_WatchAllFavoritesStarted value),
    Result watchMyPostsStarted(_WatchMyPostsStarted value),
    Result watchFilteredPostsStarted(_WatchFilteredPostsStarted value),
    Result watchRelatedStarted(_WatchRelatedStarted value),
    Result postsReceived(_PostsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllFavoritesStarted != null) {
      return watchAllFavoritesStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllFavoritesStarted implements PostWatcherEvent {
  const factory _WatchAllFavoritesStarted() = _$_WatchAllFavoritesStarted;
}

/// @nodoc
abstract class _$WatchMyPostsStartedCopyWith<$Res> {
  factory _$WatchMyPostsStartedCopyWith(_WatchMyPostsStarted value,
          $Res Function(_WatchMyPostsStarted) then) =
      __$WatchMyPostsStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchMyPostsStartedCopyWithImpl<$Res>
    extends _$PostWatcherEventCopyWithImpl<$Res>
    implements _$WatchMyPostsStartedCopyWith<$Res> {
  __$WatchMyPostsStartedCopyWithImpl(
      _WatchMyPostsStarted _value, $Res Function(_WatchMyPostsStarted) _then)
      : super(_value, (v) => _then(v as _WatchMyPostsStarted));

  @override
  _WatchMyPostsStarted get _value => super._value as _WatchMyPostsStarted;
}

/// @nodoc
class _$_WatchMyPostsStarted implements _WatchMyPostsStarted {
  const _$_WatchMyPostsStarted();

  @override
  String toString() {
    return 'PostWatcherEvent.watchMyPostsStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchMyPostsStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(),
    @required Result watchAllFavoritesStarted(),
    @required Result watchMyPostsStarted(),
    @required
        Result watchFilteredPostsStarted(String city, String brand,
            bool exchangable, bool headphones, String price),
    @required Result watchRelatedStarted(String brand, String currentId),
    @required
        Result postsReceived(Either<PostFailure, KtList<Post>> failureOrPosts),
  }) {
    assert(watchAllStarted != null);
    assert(watchAllFavoritesStarted != null);
    assert(watchMyPostsStarted != null);
    assert(watchFilteredPostsStarted != null);
    assert(watchRelatedStarted != null);
    assert(postsReceived != null);
    return watchMyPostsStarted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result watchAllFavoritesStarted(),
    Result watchMyPostsStarted(),
    Result watchFilteredPostsStarted(String city, String brand,
        bool exchangable, bool headphones, String price),
    Result watchRelatedStarted(String brand, String currentId),
    Result postsReceived(Either<PostFailure, KtList<Post>> failureOrPosts),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchMyPostsStarted != null) {
      return watchMyPostsStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result watchAllFavoritesStarted(_WatchAllFavoritesStarted value),
    @required Result watchMyPostsStarted(_WatchMyPostsStarted value),
    @required
        Result watchFilteredPostsStarted(_WatchFilteredPostsStarted value),
    @required Result watchRelatedStarted(_WatchRelatedStarted value),
    @required Result postsReceived(_PostsReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(watchAllFavoritesStarted != null);
    assert(watchMyPostsStarted != null);
    assert(watchFilteredPostsStarted != null);
    assert(watchRelatedStarted != null);
    assert(postsReceived != null);
    return watchMyPostsStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result watchAllFavoritesStarted(_WatchAllFavoritesStarted value),
    Result watchMyPostsStarted(_WatchMyPostsStarted value),
    Result watchFilteredPostsStarted(_WatchFilteredPostsStarted value),
    Result watchRelatedStarted(_WatchRelatedStarted value),
    Result postsReceived(_PostsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchMyPostsStarted != null) {
      return watchMyPostsStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchMyPostsStarted implements PostWatcherEvent {
  const factory _WatchMyPostsStarted() = _$_WatchMyPostsStarted;
}

/// @nodoc
abstract class _$WatchFilteredPostsStartedCopyWith<$Res> {
  factory _$WatchFilteredPostsStartedCopyWith(_WatchFilteredPostsStarted value,
          $Res Function(_WatchFilteredPostsStarted) then) =
      __$WatchFilteredPostsStartedCopyWithImpl<$Res>;
  $Res call(
      {String city,
      String brand,
      bool exchangable,
      bool headphones,
      String price});
}

/// @nodoc
class __$WatchFilteredPostsStartedCopyWithImpl<$Res>
    extends _$PostWatcherEventCopyWithImpl<$Res>
    implements _$WatchFilteredPostsStartedCopyWith<$Res> {
  __$WatchFilteredPostsStartedCopyWithImpl(_WatchFilteredPostsStarted _value,
      $Res Function(_WatchFilteredPostsStarted) _then)
      : super(_value, (v) => _then(v as _WatchFilteredPostsStarted));

  @override
  _WatchFilteredPostsStarted get _value =>
      super._value as _WatchFilteredPostsStarted;

  @override
  $Res call({
    Object city = freezed,
    Object brand = freezed,
    Object exchangable = freezed,
    Object headphones = freezed,
    Object price = freezed,
  }) {
    return _then(_WatchFilteredPostsStarted(
      city == freezed ? _value.city : city as String,
      brand == freezed ? _value.brand : brand as String,
      exchangable == freezed ? _value.exchangable : exchangable as bool,
      headphones == freezed ? _value.headphones : headphones as bool,
      price == freezed ? _value.price : price as String,
    ));
  }
}

/// @nodoc
class _$_WatchFilteredPostsStarted implements _WatchFilteredPostsStarted {
  const _$_WatchFilteredPostsStarted(
      this.city, this.brand, this.exchangable, this.headphones, this.price)
      : assert(city != null),
        assert(brand != null),
        assert(exchangable != null),
        assert(headphones != null),
        assert(price != null);

  @override
  final String city;
  @override
  final String brand;
  @override
  final bool exchangable;
  @override
  final bool headphones;
  @override
  final String price;

  @override
  String toString() {
    return 'PostWatcherEvent.watchFilteredPostsStarted(city: $city, brand: $brand, exchangable: $exchangable, headphones: $headphones, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WatchFilteredPostsStarted &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.brand, brand) ||
                const DeepCollectionEquality().equals(other.brand, brand)) &&
            (identical(other.exchangable, exchangable) ||
                const DeepCollectionEquality()
                    .equals(other.exchangable, exchangable)) &&
            (identical(other.headphones, headphones) ||
                const DeepCollectionEquality()
                    .equals(other.headphones, headphones)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(brand) ^
      const DeepCollectionEquality().hash(exchangable) ^
      const DeepCollectionEquality().hash(headphones) ^
      const DeepCollectionEquality().hash(price);

  @override
  _$WatchFilteredPostsStartedCopyWith<_WatchFilteredPostsStarted>
      get copyWith =>
          __$WatchFilteredPostsStartedCopyWithImpl<_WatchFilteredPostsStarted>(
              this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(),
    @required Result watchAllFavoritesStarted(),
    @required Result watchMyPostsStarted(),
    @required
        Result watchFilteredPostsStarted(String city, String brand,
            bool exchangable, bool headphones, String price),
    @required Result watchRelatedStarted(String brand, String currentId),
    @required
        Result postsReceived(Either<PostFailure, KtList<Post>> failureOrPosts),
  }) {
    assert(watchAllStarted != null);
    assert(watchAllFavoritesStarted != null);
    assert(watchMyPostsStarted != null);
    assert(watchFilteredPostsStarted != null);
    assert(watchRelatedStarted != null);
    assert(postsReceived != null);
    return watchFilteredPostsStarted(
        city, brand, exchangable, headphones, price);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result watchAllFavoritesStarted(),
    Result watchMyPostsStarted(),
    Result watchFilteredPostsStarted(String city, String brand,
        bool exchangable, bool headphones, String price),
    Result watchRelatedStarted(String brand, String currentId),
    Result postsReceived(Either<PostFailure, KtList<Post>> failureOrPosts),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchFilteredPostsStarted != null) {
      return watchFilteredPostsStarted(
          city, brand, exchangable, headphones, price);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result watchAllFavoritesStarted(_WatchAllFavoritesStarted value),
    @required Result watchMyPostsStarted(_WatchMyPostsStarted value),
    @required
        Result watchFilteredPostsStarted(_WatchFilteredPostsStarted value),
    @required Result watchRelatedStarted(_WatchRelatedStarted value),
    @required Result postsReceived(_PostsReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(watchAllFavoritesStarted != null);
    assert(watchMyPostsStarted != null);
    assert(watchFilteredPostsStarted != null);
    assert(watchRelatedStarted != null);
    assert(postsReceived != null);
    return watchFilteredPostsStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result watchAllFavoritesStarted(_WatchAllFavoritesStarted value),
    Result watchMyPostsStarted(_WatchMyPostsStarted value),
    Result watchFilteredPostsStarted(_WatchFilteredPostsStarted value),
    Result watchRelatedStarted(_WatchRelatedStarted value),
    Result postsReceived(_PostsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchFilteredPostsStarted != null) {
      return watchFilteredPostsStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchFilteredPostsStarted implements PostWatcherEvent {
  const factory _WatchFilteredPostsStarted(
      String city,
      String brand,
      bool exchangable,
      bool headphones,
      String price) = _$_WatchFilteredPostsStarted;

  String get city;
  String get brand;
  bool get exchangable;
  bool get headphones;
  String get price;
  _$WatchFilteredPostsStartedCopyWith<_WatchFilteredPostsStarted> get copyWith;
}

/// @nodoc
abstract class _$WatchRelatedStartedCopyWith<$Res> {
  factory _$WatchRelatedStartedCopyWith(_WatchRelatedStarted value,
          $Res Function(_WatchRelatedStarted) then) =
      __$WatchRelatedStartedCopyWithImpl<$Res>;
  $Res call({String brand, String currentId});
}

/// @nodoc
class __$WatchRelatedStartedCopyWithImpl<$Res>
    extends _$PostWatcherEventCopyWithImpl<$Res>
    implements _$WatchRelatedStartedCopyWith<$Res> {
  __$WatchRelatedStartedCopyWithImpl(
      _WatchRelatedStarted _value, $Res Function(_WatchRelatedStarted) _then)
      : super(_value, (v) => _then(v as _WatchRelatedStarted));

  @override
  _WatchRelatedStarted get _value => super._value as _WatchRelatedStarted;

  @override
  $Res call({
    Object brand = freezed,
    Object currentId = freezed,
  }) {
    return _then(_WatchRelatedStarted(
      brand == freezed ? _value.brand : brand as String,
      currentId == freezed ? _value.currentId : currentId as String,
    ));
  }
}

/// @nodoc
class _$_WatchRelatedStarted implements _WatchRelatedStarted {
  const _$_WatchRelatedStarted(this.brand, this.currentId)
      : assert(brand != null),
        assert(currentId != null);

  @override
  final String brand;
  @override
  final String currentId;

  @override
  String toString() {
    return 'PostWatcherEvent.watchRelatedStarted(brand: $brand, currentId: $currentId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WatchRelatedStarted &&
            (identical(other.brand, brand) ||
                const DeepCollectionEquality().equals(other.brand, brand)) &&
            (identical(other.currentId, currentId) ||
                const DeepCollectionEquality()
                    .equals(other.currentId, currentId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(brand) ^
      const DeepCollectionEquality().hash(currentId);

  @override
  _$WatchRelatedStartedCopyWith<_WatchRelatedStarted> get copyWith =>
      __$WatchRelatedStartedCopyWithImpl<_WatchRelatedStarted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(),
    @required Result watchAllFavoritesStarted(),
    @required Result watchMyPostsStarted(),
    @required
        Result watchFilteredPostsStarted(String city, String brand,
            bool exchangable, bool headphones, String price),
    @required Result watchRelatedStarted(String brand, String currentId),
    @required
        Result postsReceived(Either<PostFailure, KtList<Post>> failureOrPosts),
  }) {
    assert(watchAllStarted != null);
    assert(watchAllFavoritesStarted != null);
    assert(watchMyPostsStarted != null);
    assert(watchFilteredPostsStarted != null);
    assert(watchRelatedStarted != null);
    assert(postsReceived != null);
    return watchRelatedStarted(brand, currentId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result watchAllFavoritesStarted(),
    Result watchMyPostsStarted(),
    Result watchFilteredPostsStarted(String city, String brand,
        bool exchangable, bool headphones, String price),
    Result watchRelatedStarted(String brand, String currentId),
    Result postsReceived(Either<PostFailure, KtList<Post>> failureOrPosts),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchRelatedStarted != null) {
      return watchRelatedStarted(brand, currentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result watchAllFavoritesStarted(_WatchAllFavoritesStarted value),
    @required Result watchMyPostsStarted(_WatchMyPostsStarted value),
    @required
        Result watchFilteredPostsStarted(_WatchFilteredPostsStarted value),
    @required Result watchRelatedStarted(_WatchRelatedStarted value),
    @required Result postsReceived(_PostsReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(watchAllFavoritesStarted != null);
    assert(watchMyPostsStarted != null);
    assert(watchFilteredPostsStarted != null);
    assert(watchRelatedStarted != null);
    assert(postsReceived != null);
    return watchRelatedStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result watchAllFavoritesStarted(_WatchAllFavoritesStarted value),
    Result watchMyPostsStarted(_WatchMyPostsStarted value),
    Result watchFilteredPostsStarted(_WatchFilteredPostsStarted value),
    Result watchRelatedStarted(_WatchRelatedStarted value),
    Result postsReceived(_PostsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchRelatedStarted != null) {
      return watchRelatedStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchRelatedStarted implements PostWatcherEvent {
  const factory _WatchRelatedStarted(String brand, String currentId) =
      _$_WatchRelatedStarted;

  String get brand;
  String get currentId;
  _$WatchRelatedStartedCopyWith<_WatchRelatedStarted> get copyWith;
}

/// @nodoc
abstract class _$PostsReceivedCopyWith<$Res> {
  factory _$PostsReceivedCopyWith(
          _PostsReceived value, $Res Function(_PostsReceived) then) =
      __$PostsReceivedCopyWithImpl<$Res>;
  $Res call({Either<PostFailure, KtList<Post>> failureOrPosts});
}

/// @nodoc
class __$PostsReceivedCopyWithImpl<$Res>
    extends _$PostWatcherEventCopyWithImpl<$Res>
    implements _$PostsReceivedCopyWith<$Res> {
  __$PostsReceivedCopyWithImpl(
      _PostsReceived _value, $Res Function(_PostsReceived) _then)
      : super(_value, (v) => _then(v as _PostsReceived));

  @override
  _PostsReceived get _value => super._value as _PostsReceived;

  @override
  $Res call({
    Object failureOrPosts = freezed,
  }) {
    return _then(_PostsReceived(
      failureOrPosts == freezed
          ? _value.failureOrPosts
          : failureOrPosts as Either<PostFailure, KtList<Post>>,
    ));
  }
}

/// @nodoc
class _$_PostsReceived implements _PostsReceived {
  const _$_PostsReceived(this.failureOrPosts) : assert(failureOrPosts != null);

  @override
  final Either<PostFailure, KtList<Post>> failureOrPosts;

  @override
  String toString() {
    return 'PostWatcherEvent.postsReceived(failureOrPosts: $failureOrPosts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostsReceived &&
            (identical(other.failureOrPosts, failureOrPosts) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrPosts, failureOrPosts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrPosts);

  @override
  _$PostsReceivedCopyWith<_PostsReceived> get copyWith =>
      __$PostsReceivedCopyWithImpl<_PostsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(),
    @required Result watchAllFavoritesStarted(),
    @required Result watchMyPostsStarted(),
    @required
        Result watchFilteredPostsStarted(String city, String brand,
            bool exchangable, bool headphones, String price),
    @required Result watchRelatedStarted(String brand, String currentId),
    @required
        Result postsReceived(Either<PostFailure, KtList<Post>> failureOrPosts),
  }) {
    assert(watchAllStarted != null);
    assert(watchAllFavoritesStarted != null);
    assert(watchMyPostsStarted != null);
    assert(watchFilteredPostsStarted != null);
    assert(watchRelatedStarted != null);
    assert(postsReceived != null);
    return postsReceived(failureOrPosts);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result watchAllFavoritesStarted(),
    Result watchMyPostsStarted(),
    Result watchFilteredPostsStarted(String city, String brand,
        bool exchangable, bool headphones, String price),
    Result watchRelatedStarted(String brand, String currentId),
    Result postsReceived(Either<PostFailure, KtList<Post>> failureOrPosts),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (postsReceived != null) {
      return postsReceived(failureOrPosts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result watchAllFavoritesStarted(_WatchAllFavoritesStarted value),
    @required Result watchMyPostsStarted(_WatchMyPostsStarted value),
    @required
        Result watchFilteredPostsStarted(_WatchFilteredPostsStarted value),
    @required Result watchRelatedStarted(_WatchRelatedStarted value),
    @required Result postsReceived(_PostsReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(watchAllFavoritesStarted != null);
    assert(watchMyPostsStarted != null);
    assert(watchFilteredPostsStarted != null);
    assert(watchRelatedStarted != null);
    assert(postsReceived != null);
    return postsReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result watchAllFavoritesStarted(_WatchAllFavoritesStarted value),
    Result watchMyPostsStarted(_WatchMyPostsStarted value),
    Result watchFilteredPostsStarted(_WatchFilteredPostsStarted value),
    Result watchRelatedStarted(_WatchRelatedStarted value),
    Result postsReceived(_PostsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (postsReceived != null) {
      return postsReceived(this);
    }
    return orElse();
  }
}

abstract class _PostsReceived implements PostWatcherEvent {
  const factory _PostsReceived(
      Either<PostFailure, KtList<Post>> failureOrPosts) = _$_PostsReceived;

  Either<PostFailure, KtList<Post>> get failureOrPosts;
  _$PostsReceivedCopyWith<_PostsReceived> get copyWith;
}

/// @nodoc
class _$PostWatcherStateTearOff {
  const _$PostWatcherStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(KtList<Post> posts) {
    return _LoadSuccess(
      posts,
    );
  }

// ignore: unused_element
  _LoadFailure loadFailure(PostFailure postFailure) {
    return _LoadFailure(
      postFailure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PostWatcherState = _$PostWatcherStateTearOff();

/// @nodoc
mixin _$PostWatcherState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Post> posts),
    @required Result loadFailure(PostFailure postFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Post> posts),
    Result loadFailure(PostFailure postFailure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $PostWatcherStateCopyWith<$Res> {
  factory $PostWatcherStateCopyWith(
          PostWatcherState value, $Res Function(PostWatcherState) then) =
      _$PostWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostWatcherStateCopyWithImpl<$Res>
    implements $PostWatcherStateCopyWith<$Res> {
  _$PostWatcherStateCopyWithImpl(this._value, this._then);

  final PostWatcherState _value;
  // ignore: unused_field
  final $Res Function(PostWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$PostWatcherStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'PostWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Post> posts),
    @required Result loadFailure(PostFailure postFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Post> posts),
    Result loadFailure(PostFailure postFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PostWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$PostWatcherStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc
class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'PostWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Post> posts),
    @required Result loadFailure(PostFailure postFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Post> posts),
    Result loadFailure(PostFailure postFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements PostWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<Post> posts});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$PostWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object posts = freezed,
  }) {
    return _then(_LoadSuccess(
      posts == freezed ? _value.posts : posts as KtList<Post>,
    ));
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.posts) : assert(posts != null);

  @override
  final KtList<Post> posts;

  @override
  String toString() {
    return 'PostWatcherState.loadSuccess(posts: $posts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.posts, posts) ||
                const DeepCollectionEquality().equals(other.posts, posts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(posts);

  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Post> posts),
    @required Result loadFailure(PostFailure postFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(posts);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Post> posts),
    Result loadFailure(PostFailure postFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(posts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements PostWatcherState {
  const factory _LoadSuccess(KtList<Post> posts) = _$_LoadSuccess;

  KtList<Post> get posts;
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({PostFailure postFailure});

  $PostFailureCopyWith<$Res> get postFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$PostWatcherStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object postFailure = freezed,
  }) {
    return _then(_LoadFailure(
      postFailure == freezed ? _value.postFailure : postFailure as PostFailure,
    ));
  }

  @override
  $PostFailureCopyWith<$Res> get postFailure {
    if (_value.postFailure == null) {
      return null;
    }
    return $PostFailureCopyWith<$Res>(_value.postFailure, (value) {
      return _then(_value.copyWith(postFailure: value));
    });
  }
}

/// @nodoc
class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.postFailure) : assert(postFailure != null);

  @override
  final PostFailure postFailure;

  @override
  String toString() {
    return 'PostWatcherState.loadFailure(postFailure: $postFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.postFailure, postFailure) ||
                const DeepCollectionEquality()
                    .equals(other.postFailure, postFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(postFailure);

  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Post> posts),
    @required Result loadFailure(PostFailure postFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(postFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Post> posts),
    Result loadFailure(PostFailure postFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(postFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements PostWatcherState {
  const factory _LoadFailure(PostFailure postFailure) = _$_LoadFailure;

  PostFailure get postFailure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
