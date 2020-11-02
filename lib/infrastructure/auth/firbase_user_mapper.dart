import 'package:firebase_auth/firebase_auth.dart' as firbase;
import 'package:phonesed/domain/auth/value_objects.dart';
import 'package:phonesed/domain/core/unique_id.dart';
import 'package:phonesed/domain/entities/user.dart';

extension FirebaseUserDomainX on firbase.User {
  // User toDomain() {
  //   return User(
  //     id: UniqueId.fromUniqueString(uid),
  //     name: UserName(displayName),
  //     email: EmailAddress(email),
  //     phoneNumber: PhoneNumber(phoneNumber),
  //   );
  // }
}
