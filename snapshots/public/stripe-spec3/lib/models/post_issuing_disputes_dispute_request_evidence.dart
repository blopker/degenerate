// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'canceled2.dart';import 'duplicate2.dart';import 'fraudulent2.dart';import 'merchandise_not_as_described2.dart';import 'no_valid_authorization2.dart';import 'not_received2.dart';import 'other2.dart';import 'post_issuing_disputes_dispute_request_evidence_canceled.dart';import 'post_issuing_disputes_dispute_request_evidence_duplicate.dart';import 'post_issuing_disputes_dispute_request_evidence_fraudulent.dart';import 'post_issuing_disputes_dispute_request_evidence_merchandise_not_as_described.dart';import 'post_issuing_disputes_dispute_request_evidence_no_valid_authorization.dart';import 'post_issuing_disputes_dispute_request_evidence_not_received.dart';import 'post_issuing_disputes_dispute_request_evidence_other.dart';import 'post_issuing_disputes_dispute_request_evidence_service_not_as_described.dart';import 'service_not_as_described2.dart';final class PostIssuingDisputesDisputeRequestEvidenceReason {const PostIssuingDisputesDisputeRequestEvidenceReason._(this.value);

factory PostIssuingDisputesDisputeRequestEvidenceReason.fromJson(String json) { return switch (json) {
  'canceled' => canceled,
  'duplicate' => duplicate,
  'fraudulent' => fraudulent,
  'merchandise_not_as_described' => merchandiseNotAsDescribed,
  'no_valid_authorization' => noValidAuthorization,
  'not_received' => notReceived,
  'other' => $other,
  'service_not_as_described' => serviceNotAsDescribed,
  _ => PostIssuingDisputesDisputeRequestEvidenceReason._(json),
}; }

static const PostIssuingDisputesDisputeRequestEvidenceReason canceled = PostIssuingDisputesDisputeRequestEvidenceReason._('canceled');

static const PostIssuingDisputesDisputeRequestEvidenceReason duplicate = PostIssuingDisputesDisputeRequestEvidenceReason._('duplicate');

static const PostIssuingDisputesDisputeRequestEvidenceReason fraudulent = PostIssuingDisputesDisputeRequestEvidenceReason._('fraudulent');

static const PostIssuingDisputesDisputeRequestEvidenceReason merchandiseNotAsDescribed = PostIssuingDisputesDisputeRequestEvidenceReason._('merchandise_not_as_described');

static const PostIssuingDisputesDisputeRequestEvidenceReason noValidAuthorization = PostIssuingDisputesDisputeRequestEvidenceReason._('no_valid_authorization');

static const PostIssuingDisputesDisputeRequestEvidenceReason notReceived = PostIssuingDisputesDisputeRequestEvidenceReason._('not_received');

static const PostIssuingDisputesDisputeRequestEvidenceReason $other = PostIssuingDisputesDisputeRequestEvidenceReason._('other');

static const PostIssuingDisputesDisputeRequestEvidenceReason serviceNotAsDescribed = PostIssuingDisputesDisputeRequestEvidenceReason._('service_not_as_described');

static const List<PostIssuingDisputesDisputeRequestEvidenceReason> values = [canceled, duplicate, fraudulent, merchandiseNotAsDescribed, noValidAuthorization, notReceived, $other, serviceNotAsDescribed];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostIssuingDisputesDisputeRequestEvidenceReason && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostIssuingDisputesDisputeRequestEvidenceReason($value)'; } 
 }
/// Evidence provided for the dispute.
final class PostIssuingDisputesDisputeRequestEvidence {const PostIssuingDisputesDisputeRequestEvidence({this.canceled, this.duplicate, this.fraudulent, this.merchandiseNotAsDescribed, this.noValidAuthorization, this.notReceived, this.other, this.reason, this.serviceNotAsDescribed, });

factory PostIssuingDisputesDisputeRequestEvidence.fromJson(Map<String, dynamic> json) { return PostIssuingDisputesDisputeRequestEvidence(
  canceled: json['canceled'] != null ? OneOf2.parse(json['canceled'], fromA: (v) => Canceled2.fromJson(v as Map<String, dynamic>), fromB: (v) => PostIssuingDisputesDisputeRequestEvidenceCanceledVariant2.fromJson(v as String),) : null,
  duplicate: json['duplicate'] != null ? OneOf2.parse(json['duplicate'], fromA: (v) => Duplicate2.fromJson(v as Map<String, dynamic>), fromB: (v) => PostIssuingDisputesDisputeRequestEvidenceDuplicateVariant2.fromJson(v as String),) : null,
  fraudulent: json['fraudulent'] != null ? OneOf2.parse(json['fraudulent'], fromA: (v) => Fraudulent2.fromJson(v as Map<String, dynamic>), fromB: (v) => PostIssuingDisputesDisputeRequestEvidenceFraudulentVariant2.fromJson(v as String),) : null,
  merchandiseNotAsDescribed: json['merchandise_not_as_described'] != null ? OneOf2.parse(json['merchandise_not_as_described'], fromA: (v) => MerchandiseNotAsDescribed2.fromJson(v as Map<String, dynamic>), fromB: (v) => PostIssuingDisputesDisputeRequestEvidenceMerchandiseNotAsDescribedVariant2.fromJson(v as String),) : null,
  noValidAuthorization: json['no_valid_authorization'] != null ? OneOf2.parse(json['no_valid_authorization'], fromA: (v) => NoValidAuthorization2.fromJson(v as Map<String, dynamic>), fromB: (v) => PostIssuingDisputesDisputeRequestEvidenceNoValidAuthorizationVariant2.fromJson(v as String),) : null,
  notReceived: json['not_received'] != null ? OneOf2.parse(json['not_received'], fromA: (v) => NotReceived2.fromJson(v as Map<String, dynamic>), fromB: (v) => PostIssuingDisputesDisputeRequestEvidenceNotReceivedVariant2.fromJson(v as String),) : null,
  other: json['other'] != null ? OneOf2.parse(json['other'], fromA: (v) => Other2.fromJson(v as Map<String, dynamic>), fromB: (v) => PostIssuingDisputesDisputeRequestEvidenceOtherVariant2.fromJson(v as String),) : null,
  reason: json['reason'] != null ? PostIssuingDisputesDisputeRequestEvidenceReason.fromJson(json['reason'] as String) : null,
  serviceNotAsDescribed: json['service_not_as_described'] != null ? OneOf2.parse(json['service_not_as_described'], fromA: (v) => ServiceNotAsDescribed2.fromJson(v as Map<String, dynamic>), fromB: (v) => PostIssuingDisputesDisputeRequestEvidenceServiceNotAsDescribedVariant2.fromJson(v as String),) : null,
); }

final PostIssuingDisputesDisputeRequestEvidenceCanceled? canceled;

final PostIssuingDisputesDisputeRequestEvidenceDuplicate? duplicate;

final PostIssuingDisputesDisputeRequestEvidenceFraudulent? fraudulent;

final PostIssuingDisputesDisputeRequestEvidenceMerchandiseNotAsDescribed? merchandiseNotAsDescribed;

final PostIssuingDisputesDisputeRequestEvidenceNoValidAuthorization? noValidAuthorization;

final PostIssuingDisputesDisputeRequestEvidenceNotReceived? notReceived;

final PostIssuingDisputesDisputeRequestEvidenceOther? other;

final PostIssuingDisputesDisputeRequestEvidenceReason? reason;

final PostIssuingDisputesDisputeRequestEvidenceServiceNotAsDescribed? serviceNotAsDescribed;

Map<String, dynamic> toJson() { return {
  if (canceled != null) 'canceled': canceled?.toJson(),
  if (duplicate != null) 'duplicate': duplicate?.toJson(),
  if (fraudulent != null) 'fraudulent': fraudulent?.toJson(),
  if (merchandiseNotAsDescribed != null) 'merchandise_not_as_described': merchandiseNotAsDescribed?.toJson(),
  if (noValidAuthorization != null) 'no_valid_authorization': noValidAuthorization?.toJson(),
  if (notReceived != null) 'not_received': notReceived?.toJson(),
  if (other != null) 'other': other?.toJson(),
  if (reason != null) 'reason': reason?.toJson(),
  if (serviceNotAsDescribed != null) 'service_not_as_described': serviceNotAsDescribed?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostIssuingDisputesDisputeRequestEvidence copyWith({PostIssuingDisputesDisputeRequestEvidenceCanceled Function()? canceled, PostIssuingDisputesDisputeRequestEvidenceDuplicate Function()? duplicate, PostIssuingDisputesDisputeRequestEvidenceFraudulent Function()? fraudulent, PostIssuingDisputesDisputeRequestEvidenceMerchandiseNotAsDescribed Function()? merchandiseNotAsDescribed, PostIssuingDisputesDisputeRequestEvidenceNoValidAuthorization Function()? noValidAuthorization, PostIssuingDisputesDisputeRequestEvidenceNotReceived Function()? notReceived, PostIssuingDisputesDisputeRequestEvidenceOther Function()? other, PostIssuingDisputesDisputeRequestEvidenceReason Function()? reason, PostIssuingDisputesDisputeRequestEvidenceServiceNotAsDescribed Function()? serviceNotAsDescribed, }) { return PostIssuingDisputesDisputeRequestEvidence(
  canceled: canceled != null ? canceled() : this.canceled,
  duplicate: duplicate != null ? duplicate() : this.duplicate,
  fraudulent: fraudulent != null ? fraudulent() : this.fraudulent,
  merchandiseNotAsDescribed: merchandiseNotAsDescribed != null ? merchandiseNotAsDescribed() : this.merchandiseNotAsDescribed,
  noValidAuthorization: noValidAuthorization != null ? noValidAuthorization() : this.noValidAuthorization,
  notReceived: notReceived != null ? notReceived() : this.notReceived,
  other: other != null ? other() : this.other,
  reason: reason != null ? reason() : this.reason,
  serviceNotAsDescribed: serviceNotAsDescribed != null ? serviceNotAsDescribed() : this.serviceNotAsDescribed,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostIssuingDisputesDisputeRequestEvidence &&
          canceled == other.canceled &&
          duplicate == other.duplicate &&
          fraudulent == other.fraudulent &&
          merchandiseNotAsDescribed == other.merchandiseNotAsDescribed &&
          noValidAuthorization == other.noValidAuthorization &&
          notReceived == other.notReceived &&
          this.other == other.other &&
          reason == other.reason &&
          serviceNotAsDescribed == other.serviceNotAsDescribed; } 
@override int get hashCode { return Object.hash(canceled, duplicate, fraudulent, merchandiseNotAsDescribed, noValidAuthorization, notReceived, other, reason, serviceNotAsDescribed); } 
@override String toString() { return 'PostIssuingDisputesDisputeRequestEvidence(canceled: $canceled, duplicate: $duplicate, fraudulent: $fraudulent, merchandiseNotAsDescribed: $merchandiseNotAsDescribed, noValidAuthorization: $noValidAuthorization, notReceived: $notReceived, other: $other, reason: $reason, serviceNotAsDescribed: $serviceNotAsDescribed)'; } 
 }
