part of 'post_share_bloc.dart';

@freezed
abstract class PostShareEvent with _$PostShareEvent {
  const factory PostShareEvent.shareLinkRecevied() = _ShareLinkRecevied;
  const factory PostShareEvent.postRecevied(String postId) = _PostRecevied;
  const factory PostShareEvent.sharePostClicked(
          String postId, String title, String description, String imageUrl) =
      _SharePostClicked;
}
