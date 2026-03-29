// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_accounts_account_request_company_verification_document.dart';final class PostAccountsAccountRequestCompanyVerification {const PostAccountsAccountRequestCompanyVerification({this.document});

factory PostAccountsAccountRequestCompanyVerification.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestCompanyVerification(
  document: json['document'] != null ? PostAccountsAccountRequestCompanyVerificationDocument.fromJson(json['document'] as Map<String, dynamic>) : null,
); }

final PostAccountsAccountRequestCompanyVerificationDocument? document;

Map<String, dynamic> toJson() { return {
  if (document != null) 'document': document?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostAccountsAccountRequestCompanyVerification copyWith({PostAccountsAccountRequestCompanyVerificationDocument Function()? document}) { return PostAccountsAccountRequestCompanyVerification(
  document: document != null ? document() : this.document,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestCompanyVerification &&
          document == other.document; } 
@override int get hashCode { return document.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestCompanyVerification(document: $document)'; } 
 }
