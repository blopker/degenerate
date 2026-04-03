// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsRequestDocumentsProofOfRegistrationSigner {const PostAccountsRequestDocumentsProofOfRegistrationSigner({this.person});

factory PostAccountsRequestDocumentsProofOfRegistrationSigner.fromJson(Map<String, dynamic> json) { return PostAccountsRequestDocumentsProofOfRegistrationSigner(
  person: json['person'] as String?,
); }

final String? person;

Map<String, dynamic> toJson() { return {
  'person': ?person,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'person'}.contains(key)); } 
PostAccountsRequestDocumentsProofOfRegistrationSigner copyWith({String Function()? person}) { return PostAccountsRequestDocumentsProofOfRegistrationSigner(
  person: person != null ? person() : this.person,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsRequestDocumentsProofOfRegistrationSigner &&
          person == other.person; } 
@override int get hashCode { return person.hashCode; } 
@override String toString() { return 'PostAccountsRequestDocumentsProofOfRegistrationSigner(person: $person)'; } 
 }
