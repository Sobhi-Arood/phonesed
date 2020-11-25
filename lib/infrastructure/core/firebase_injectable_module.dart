import 'package:admob_flutter/admob_flutter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import 'package:';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';

@module
abstract class FirebaseInjectableModule {
  @lazySingleton
  GoogleSignIn get googleSignIn => GoogleSignIn();
  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;
  @lazySingleton
  FirebaseFirestore get firestore => FirebaseFirestore.instance;
  @lazySingleton
  FirebaseStorage get storage => FirebaseStorage.instance;
  @lazySingleton
  ImagePicker get imagePicker => ImagePicker();
  @lazySingleton
  FirebaseDynamicLinks get dynamicLinks => FirebaseDynamicLinks.instance;

  // @lazySingleton
  // Admob get admob => Admob.initialize();
}
