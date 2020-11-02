import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:phonesed/domain/auth/i_auth_facade.dart';
import 'package:phonesed/domain/core/errors.dart';
import 'package:phonesed/injection.dart';

extension ServerTimestampX on FieldValue {
  // DateTime toDateTimeConvert() {
  //   return serverTimestamp();
  // }
}

extension FirestoreX on FirebaseFirestore {
  Future<DocumentReference> userDocument() async {
    final userId = await getIt<IAuthFacade>().getSignedInUserUid();
    final user = userId.getOrElse(() => throw NotAuthenticatedError());
    return FirebaseFirestore.instance.collection('Users').doc(user);
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get postsCollection => collection('Posts');
  // CollectionReference get postsCollection => collection('Users').doc().snapshots();
}
