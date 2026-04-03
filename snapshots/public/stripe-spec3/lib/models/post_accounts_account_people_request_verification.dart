// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_accounts_account_people_request_verification_additional_document.dart';import 'post_accounts_account_people_request_verification_document.dart';/// The person's verification status.
@immutable final class PostAccountsAccountPeopleRequestVerification {const PostAccountsAccountPeopleRequestVerification({this.additionalDocument, this.document, });

factory PostAccountsAccountPeopleRequestVerification.fromJson(Map<String, dynamic> json) { return PostAccountsAccountPeopleRequestVerification(
  additionalDocument: json['additional_document'] != null ? PostAccountsAccountPeopleRequestVerificationAdditionalDocument.fromJson(json['additional_document'] as Map<String, dynamic>) : null,
  document: json['document'] != null ? PostAccountsAccountPeopleRequestVerificationDocument.fromJson(json['document'] as Map<String, dynamic>) : null,
); }

final PostAccountsAccountPeopleRequestVerificationAdditionalDocument? additionalDocument;

final PostAccountsAccountPeopleRequestVerificationDocument? document;

Map<String, dynamic> toJson() { return {
  if (additionalDocument != null) 'additional_document': additionalDocument?.toJson(),
  if (document != null) 'document': document?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'additional_document', 'document'}.contains(key)); } 
PostAccountsAccountPeopleRequestVerification copyWith({PostAccountsAccountPeopleRequestVerificationAdditionalDocument Function()? additionalDocument, PostAccountsAccountPeopleRequestVerificationDocument Function()? document, }) { return PostAccountsAccountPeopleRequestVerification(
  additionalDocument: additionalDocument != null ? additionalDocument() : this.additionalDocument,
  document: document != null ? document() : this.document,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountPeopleRequestVerification &&
          additionalDocument == other.additionalDocument &&
          document == other.document; } 
@override int get hashCode { return Object.hash(additionalDocument, document); } 
@override String toString() { return 'PostAccountsAccountPeopleRequestVerification(additionalDocument: $additionalDocument, document: $document)'; } 
 }
