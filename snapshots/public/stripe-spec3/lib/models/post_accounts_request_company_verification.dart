// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_accounts_request_company_verification_document.dart';@immutable final class PostAccountsRequestCompanyVerification {const PostAccountsRequestCompanyVerification({this.document});

factory PostAccountsRequestCompanyVerification.fromJson(Map<String, dynamic> json) { return PostAccountsRequestCompanyVerification(
  document: json['document'] != null ? PostAccountsRequestCompanyVerificationDocument.fromJson(json['document'] as Map<String, dynamic>) : null,
); }

final PostAccountsRequestCompanyVerificationDocument? document;

Map<String, dynamic> toJson() { return {
  if (document != null) 'document': document?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'document'}.contains(key)); } 
PostAccountsRequestCompanyVerification copyWith({PostAccountsRequestCompanyVerificationDocument Function()? document}) { return PostAccountsRequestCompanyVerification(
  document: document != null ? document() : this.document,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsRequestCompanyVerification &&
          document == other.document; } 
@override int get hashCode { return document.hashCode; } 
@override String toString() { return 'PostAccountsRequestCompanyVerification(document: $document)'; } 
 }
