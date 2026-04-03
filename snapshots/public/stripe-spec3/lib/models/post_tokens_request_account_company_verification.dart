// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_tokens_request_account_company_verification_document.dart';@immutable final class PostTokensRequestAccountCompanyVerification {const PostTokensRequestAccountCompanyVerification({this.document});

factory PostTokensRequestAccountCompanyVerification.fromJson(Map<String, dynamic> json) { return PostTokensRequestAccountCompanyVerification(
  document: json['document'] != null ? PostTokensRequestAccountCompanyVerificationDocument.fromJson(json['document'] as Map<String, dynamic>) : null,
); }

final PostTokensRequestAccountCompanyVerificationDocument? document;

Map<String, dynamic> toJson() { return {
  if (document != null) 'document': document?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'document'}.contains(key)); } 
PostTokensRequestAccountCompanyVerification copyWith({PostTokensRequestAccountCompanyVerificationDocument Function()? document}) { return PostTokensRequestAccountCompanyVerification(
  document: document != null ? document() : this.document,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTokensRequestAccountCompanyVerification &&
          document == other.document; } 
@override int get hashCode { return document.hashCode; } 
@override String toString() { return 'PostTokensRequestAccountCompanyVerification(document: $document)'; } 
 }
