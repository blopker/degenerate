// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_issuing_cardholders_cardholder_request_individual_verification_document.dart';final class PostIssuingCardholdersCardholderRequestIndividualVerification {const PostIssuingCardholdersCardholderRequestIndividualVerification({this.document});

factory PostIssuingCardholdersCardholderRequestIndividualVerification.fromJson(Map<String, dynamic> json) { return PostIssuingCardholdersCardholderRequestIndividualVerification(
  document: json['document'] != null ? PostIssuingCardholdersCardholderRequestIndividualVerificationDocument.fromJson(json['document'] as Map<String, dynamic>) : null,
); }

final PostIssuingCardholdersCardholderRequestIndividualVerificationDocument? document;

Map<String, dynamic> toJson() { return {
  if (document != null) 'document': document?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'document'}.contains(key)); } 
PostIssuingCardholdersCardholderRequestIndividualVerification copyWith({PostIssuingCardholdersCardholderRequestIndividualVerificationDocument Function()? document}) { return PostIssuingCardholdersCardholderRequestIndividualVerification(
  document: document != null ? document() : this.document,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostIssuingCardholdersCardholderRequestIndividualVerification &&
          document == other.document; } 
@override int get hashCode { return document.hashCode; } 
@override String toString() { return 'PostIssuingCardholdersCardholderRequestIndividualVerification(document: $document)'; } 
 }
