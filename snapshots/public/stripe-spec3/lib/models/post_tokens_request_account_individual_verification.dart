// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_tokens_request_account_individual_verification_additional_document.dart';import 'post_tokens_request_account_individual_verification_document.dart';@immutable final class PostTokensRequestAccountIndividualVerification {const PostTokensRequestAccountIndividualVerification({this.additionalDocument, this.document, });

factory PostTokensRequestAccountIndividualVerification.fromJson(Map<String, dynamic> json) { return PostTokensRequestAccountIndividualVerification(
  additionalDocument: json['additional_document'] != null ? PostTokensRequestAccountIndividualVerificationAdditionalDocument.fromJson(json['additional_document'] as Map<String, dynamic>) : null,
  document: json['document'] != null ? PostTokensRequestAccountIndividualVerificationDocument.fromJson(json['document'] as Map<String, dynamic>) : null,
); }

final PostTokensRequestAccountIndividualVerificationAdditionalDocument? additionalDocument;

final PostTokensRequestAccountIndividualVerificationDocument? document;

Map<String, dynamic> toJson() { return {
  if (additionalDocument != null) 'additional_document': additionalDocument?.toJson(),
  if (document != null) 'document': document?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'additional_document', 'document'}.contains(key)); } 
PostTokensRequestAccountIndividualVerification copyWith({PostTokensRequestAccountIndividualVerificationAdditionalDocument Function()? additionalDocument, PostTokensRequestAccountIndividualVerificationDocument Function()? document, }) { return PostTokensRequestAccountIndividualVerification(
  additionalDocument: additionalDocument != null ? additionalDocument() : this.additionalDocument,
  document: document != null ? document() : this.document,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTokensRequestAccountIndividualVerification &&
          additionalDocument == other.additionalDocument &&
          document == other.document; } 
@override int get hashCode { return Object.hash(additionalDocument, document); } 
@override String toString() { return 'PostTokensRequestAccountIndividualVerification(additionalDocument: $additionalDocument, document: $document)'; } 
 }
