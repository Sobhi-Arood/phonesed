part of 'post_watcher_bloc.dart';

@freezed
abstract class PostWatcherEvent with _$PostWatcherEvent {
  const factory PostWatcherEvent.watchAllStarted() = _WatchAllStarted;
  const factory PostWatcherEvent.watchAllFavoritesStarted() =
      _WatchAllFavoritesStarted;
  const factory PostWatcherEvent.watchMyPostsStarted() = _WatchMyPostsStarted;
  const factory PostWatcherEvent.watchFilteredPostsStarted(
    String city,
    String brand,
    bool exchangable,
    bool headphones,
    String price,
    // int price,
  ) = _WatchFilteredPostsStarted;
  // const factory PostWatcherEvent.searchChanged(String query) = _SearchChanged;
  const factory PostWatcherEvent.watchRelatedStarted(
      String brand, String currentId) = _WatchRelatedStarted;
  const factory PostWatcherEvent.postsReceived(
      Either<PostFailure, KtList<Post>> failureOrPosts) = _PostsReceived;
}
