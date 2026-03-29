// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsRequestDocumentsProofOfUltimateBeneficialOwnershipSigner {const PostAccountsRequestDocumentsProofOfUltimateBeneficialOwnershipSigner({this.person});

factory PostAccountsRequestDocumentsProofOfUltimateBeneficialOwnershipSigner.fromJson(Map<String, dynamic> json) { return PostAccountsRequestDocumentsProofOfUltimateBeneficialOwnershipSigner(
  person: json['person'] as String?,
); }

final String? person;

Map<String, dynamic> toJson() { return {
  'person': ?person,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostAccountsRequestDocumentsProofOfUltimateBeneficialOwnershipSigner copyWith({String Function()? person}) { return PostAccountsRequestDocumentsProofOfUltimateBeneficialOwnershipSigner(
  person: person != null ? person() : this.person,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsRequestDocumentsProofOfUltimateBeneficialOwnershipSigner &&
          person == other.person; } 
@override int get hashCode { return person.hashCode; } 
@override String toString() { return 'PostAccountsRequestDocumentsProofOfUltimateBeneficialOwnershipSigner(person: $person)'; } 
 }
