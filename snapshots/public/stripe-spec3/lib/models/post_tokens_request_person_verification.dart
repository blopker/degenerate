// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_tokens_request_person_verification_additional_document.dart';import 'post_tokens_request_person_verification_document.dart';@immutable final class PostTokensRequestPersonVerification {const PostTokensRequestPersonVerification({this.additionalDocument, this.document, });

factory PostTokensRequestPersonVerification.fromJson(Map<String, dynamic> json) { return PostTokensRequestPersonVerification(
  additionalDocument: json['additional_document'] != null ? PostTokensRequestPersonVerificationAdditionalDocument.fromJson(json['additional_document'] as Map<String, dynamic>) : null,
  document: json['document'] != null ? PostTokensRequestPersonVerificationDocument.fromJson(json['document'] as Map<String, dynamic>) : null,
); }

final PostTokensRequestPersonVerificationAdditionalDocument? additionalDocument;

final PostTokensRequestPersonVerificationDocument? document;

Map<String, dynamic> toJson() { return {
  if (additionalDocument != null) 'additional_document': additionalDocument?.toJson(),
  if (document != null) 'document': document?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'additional_document', 'document'}.contains(key)); } 
PostTokensRequestPersonVerification copyWith({PostTokensRequestPersonVerificationAdditionalDocument Function()? additionalDocument, PostTokensRequestPersonVerificationDocument Function()? document, }) { return PostTokensRequestPersonVerification(
  additionalDocument: additionalDocument != null ? additionalDocument() : this.additionalDocument,
  document: document != null ? document() : this.document,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTokensRequestPersonVerification &&
          additionalDocument == other.additionalDocument &&
          document == other.document; } 
@override int get hashCode { return Object.hash(additionalDocument, document); } 
@override String toString() { return 'PostTokensRequestPersonVerification(additionalDocument: $additionalDocument, document: $document)'; } 
 }
