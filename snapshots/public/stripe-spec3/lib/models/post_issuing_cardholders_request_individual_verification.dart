// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_issuing_cardholders_request_individual_verification_document.dart';@immutable final class PostIssuingCardholdersRequestIndividualVerification {const PostIssuingCardholdersRequestIndividualVerification({this.document});

factory PostIssuingCardholdersRequestIndividualVerification.fromJson(Map<String, dynamic> json) { return PostIssuingCardholdersRequestIndividualVerification(
  document: json['document'] != null ? PostIssuingCardholdersRequestIndividualVerificationDocument.fromJson(json['document'] as Map<String, dynamic>) : null,
); }

final PostIssuingCardholdersRequestIndividualVerificationDocument? document;

Map<String, dynamic> toJson() { return {
  if (document != null) 'document': document?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'document'}.contains(key)); } 
PostIssuingCardholdersRequestIndividualVerification copyWith({PostIssuingCardholdersRequestIndividualVerificationDocument Function()? document}) { return PostIssuingCardholdersRequestIndividualVerification(
  document: document != null ? document() : this.document,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostIssuingCardholdersRequestIndividualVerification &&
          document == other.document; } 
@override int get hashCode { return document.hashCode; } 
@override String toString() { return 'PostIssuingCardholdersRequestIndividualVerification(document: $document)'; } 
 }
