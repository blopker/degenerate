// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountRequestDocumentsProofOfUltimateBeneficialOwnershipSigner {const PostAccountsAccountRequestDocumentsProofOfUltimateBeneficialOwnershipSigner({this.person});

factory PostAccountsAccountRequestDocumentsProofOfUltimateBeneficialOwnershipSigner.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestDocumentsProofOfUltimateBeneficialOwnershipSigner(
  person: json['person'] as String?,
); }

final String? person;

Map<String, dynamic> toJson() { return {
  'person': ?person,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'person'}.contains(key)); } 
PostAccountsAccountRequestDocumentsProofOfUltimateBeneficialOwnershipSigner copyWith({String Function()? person}) { return PostAccountsAccountRequestDocumentsProofOfUltimateBeneficialOwnershipSigner(
  person: person != null ? person() : this.person,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestDocumentsProofOfUltimateBeneficialOwnershipSigner &&
          person == other.person; } 
@override int get hashCode { return person.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestDocumentsProofOfUltimateBeneficialOwnershipSigner(person: $person)'; } 
 }
