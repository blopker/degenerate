// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountRequestDocumentsProofOfRegistrationSigner {const PostAccountsAccountRequestDocumentsProofOfRegistrationSigner({this.person});

factory PostAccountsAccountRequestDocumentsProofOfRegistrationSigner.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestDocumentsProofOfRegistrationSigner(
  person: json['person'] as String?,
); }

final String? person;

Map<String, dynamic> toJson() { return {
  'person': ?person,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'person'}.contains(key)); } 
PostAccountsAccountRequestDocumentsProofOfRegistrationSigner copyWith({String Function()? person}) { return PostAccountsAccountRequestDocumentsProofOfRegistrationSigner(
  person: person != null ? person() : this.person,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestDocumentsProofOfRegistrationSigner &&
          person == other.person; } 
@override int get hashCode { return person.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestDocumentsProofOfRegistrationSigner(person: $person)'; } 
 }
