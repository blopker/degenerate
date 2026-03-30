// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_accounts_account_people_person_request_verification_additional_document.dart';import 'post_accounts_account_people_person_request_verification_document.dart';/// The person's verification status.
final class PostAccountsAccountPeoplePersonRequestVerification {const PostAccountsAccountPeoplePersonRequestVerification({this.additionalDocument, this.document, });

factory PostAccountsAccountPeoplePersonRequestVerification.fromJson(Map<String, dynamic> json) { return PostAccountsAccountPeoplePersonRequestVerification(
  additionalDocument: json['additional_document'] != null ? PostAccountsAccountPeoplePersonRequestVerificationAdditionalDocument.fromJson(json['additional_document'] as Map<String, dynamic>) : null,
  document: json['document'] != null ? PostAccountsAccountPeoplePersonRequestVerificationDocument.fromJson(json['document'] as Map<String, dynamic>) : null,
); }

final PostAccountsAccountPeoplePersonRequestVerificationAdditionalDocument? additionalDocument;

final PostAccountsAccountPeoplePersonRequestVerificationDocument? document;

Map<String, dynamic> toJson() { return {
  if (additionalDocument != null) 'additional_document': additionalDocument?.toJson(),
  if (document != null) 'document': document?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'additional_document', 'document'}.contains(key)); } 
PostAccountsAccountPeoplePersonRequestVerification copyWith({PostAccountsAccountPeoplePersonRequestVerificationAdditionalDocument Function()? additionalDocument, PostAccountsAccountPeoplePersonRequestVerificationDocument Function()? document, }) { return PostAccountsAccountPeoplePersonRequestVerification(
  additionalDocument: additionalDocument != null ? additionalDocument() : this.additionalDocument,
  document: document != null ? document() : this.document,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountPeoplePersonRequestVerification &&
          additionalDocument == other.additionalDocument &&
          document == other.document; } 
@override int get hashCode { return Object.hash(additionalDocument, document); } 
@override String toString() { return 'PostAccountsAccountPeoplePersonRequestVerification(additionalDocument: $additionalDocument, document: $document)'; } 
 }
