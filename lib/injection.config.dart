// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:image_picker/image_picker.dart';

import 'application/auth/auth_bloc/auth_bloc.dart';
import 'infrastructure/core/avatar_picker_facade.dart';
import 'application/core/user_profile/avatar_user/avatar_user_bloc.dart';
import 'application/core/bottom_navigation/bottom_navigation_bloc.dart';
import 'application/chats/chat_form/chat_form_bloc.dart';
import 'infrastructure/chats/chat_repository.dart';
import 'application/chats/chat_watcher/chat_watcher_bloc.dart';
import 'application/chats/conversations_watcher/conversations_watcher_bloc.dart';
import 'infrastructure/auth/firebase_auth_facade.dart';
import 'infrastructure/core/firebase_injectable_module.dart';
import 'domain/auth/i_auth_facade.dart';
import 'domain/core/avatar/i_avatar_picker.dart';
import 'domain/chats/i_chat_repository.dart';
import 'domain/posts/i_post_repository.dart';
import 'domain/core/upload/i_upload_facade.dart';
import 'domain/auth/i_user_repository.dart';
import 'application/posts/post_actor/post_actor_bloc.dart';
import 'application/posts/post_form/post_form_bloc.dart';
import 'application/posts/post_form/post_picker_image/post_picker_image_bloc.dart';
import 'infrastructure/posts/post_repository.dart';
import 'application/posts/post_watcher/post_watcher_bloc.dart';
import 'application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'application/auth/sign_up_form/sign_up_form_bloc.dart';
import 'application/auth/social_sign_in/social_sign_in_bloc.dart';
import 'infrastructure/core/upload_facade.dart';
import 'application/core/user_profile/user_profile_bloc.dart';
import 'infrastructure/auth/user_repository.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.factory<BottomNavigationBloc>(() => BottomNavigationBloc());
  gh.lazySingleton<FirebaseAuth>(() => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<FirebaseFirestore>(() => firebaseInjectableModule.firestore);
  gh.lazySingleton<FirebaseStorage>(() => firebaseInjectableModule.storage);
  gh.lazySingleton<GoogleSignIn>(() => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<IChatRepository>(
      () => ChatRepository(get<FirebaseFirestore>()));
  gh.lazySingleton<IUploadFacade>(() => UploadFacade(get<FirebaseStorage>()));
  gh.lazySingleton<IUserRepository>(
      () => UserRepository(get<FirebaseFirestore>()));
  gh.lazySingleton<ImagePicker>(() => firebaseInjectableModule.imagePicker);
  gh.factory<UserProfileBloc>(() => UserProfileBloc(get<IUserRepository>()));
  gh.factory<ChatFormBloc>(() => ChatFormBloc(get<IChatRepository>()));
  gh.factory<ChatWatcherBloc>(() => ChatWatcherBloc(get<IChatRepository>()));
  gh.factory<ConversationsWatcherBloc>(
      () => ConversationsWatcherBloc(get<IChatRepository>()));
  gh.lazySingleton<IAuthFacade>(() => FirebaseAuthFacade(
        get<FirebaseAuth>(),
        get<GoogleSignIn>(),
        get<IUserRepository>(),
      ));
  gh.lazySingleton<IAvatarPickerFacade>(
      () => AvatarPickerFacade(get<ImagePicker>(), get<IUploadFacade>()));
  gh.lazySingleton<IPostRepository>(
      () => PostRepository(get<FirebaseFirestore>(), get<IUploadFacade>()));
  gh.factory<PostActorBloc>(() => PostActorBloc(get<IPostRepository>()));
  gh.factory<PostFormBloc>(() => PostFormBloc(get<IPostRepository>()));
  gh.factory<PostPickerImageBloc>(
      () => PostPickerImageBloc(get<IAvatarPickerFacade>()));
  gh.factory<PostWatcherBloc>(() => PostWatcherBloc(get<IPostRepository>()));
  gh.factory<SignInFormBloc>(() => SignInFormBloc(get<IAuthFacade>()));
  gh.factory<SignUpFormBloc>(() => SignUpFormBloc(get<IAuthFacade>()));
  gh.factory<SocialSignInBloc>(() => SocialSignInBloc(get<IAuthFacade>()));
  gh.factory<AuthBloc>(() => AuthBloc(get<IAuthFacade>()));
  gh.factory<AvatarUserBloc>(() => AvatarUserBloc(get<IAvatarPickerFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
