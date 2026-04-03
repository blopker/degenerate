// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'issuing_dispute_canceled_evidence.dart';import 'issuing_dispute_duplicate_evidence.dart';import 'issuing_dispute_fraudulent_evidence.dart';import 'issuing_dispute_merchandise_not_as_described_evidence.dart';import 'issuing_dispute_no_valid_authorization_evidence.dart';import 'issuing_dispute_not_received_evidence.dart';import 'issuing_dispute_other_evidence.dart';import 'issuing_dispute_service_not_as_described_evidence.dart';/// The reason for filing the dispute. Its value will match the field containing the evidence.
@immutable final class IssuingDisputeEvidenceReason {const IssuingDisputeEvidenceReason._(this.value);

factory IssuingDisputeEvidenceReason.fromJson(String json) { return switch (json) {
  'canceled' => canceled,
  'duplicate' => duplicate,
  'fraudulent' => fraudulent,
  'merchandise_not_as_described' => merchandiseNotAsDescribed,
  'no_valid_authorization' => noValidAuthorization,
  'not_received' => notReceived,
  'other' => $other,
  'service_not_as_described' => serviceNotAsDescribed,
  _ => IssuingDisputeEvidenceReason._(json),
}; }

static const IssuingDisputeEvidenceReason canceled = IssuingDisputeEvidenceReason._('canceled');

static const IssuingDisputeEvidenceReason duplicate = IssuingDisputeEvidenceReason._('duplicate');

static const IssuingDisputeEvidenceReason fraudulent = IssuingDisputeEvidenceReason._('fraudulent');

static const IssuingDisputeEvidenceReason merchandiseNotAsDescribed = IssuingDisputeEvidenceReason._('merchandise_not_as_described');

static const IssuingDisputeEvidenceReason noValidAuthorization = IssuingDisputeEvidenceReason._('no_valid_authorization');

static const IssuingDisputeEvidenceReason notReceived = IssuingDisputeEvidenceReason._('not_received');

static const IssuingDisputeEvidenceReason $other = IssuingDisputeEvidenceReason._('other');

static const IssuingDisputeEvidenceReason serviceNotAsDescribed = IssuingDisputeEvidenceReason._('service_not_as_described');

static const List<IssuingDisputeEvidenceReason> values = [canceled, duplicate, fraudulent, merchandiseNotAsDescribed, noValidAuthorization, notReceived, $other, serviceNotAsDescribed];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuingDisputeEvidenceReason && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IssuingDisputeEvidenceReason($value)'; } 
 }
/// 
@immutable final class IssuingDisputeEvidence {const IssuingDisputeEvidence({required this.reason, this.canceled, this.duplicate, this.fraudulent, this.merchandiseNotAsDescribed, this.noValidAuthorization, this.notReceived, this.other, this.serviceNotAsDescribed, });

factory IssuingDisputeEvidence.fromJson(Map<String, dynamic> json) { return IssuingDisputeEvidence(
  canceled: json['canceled'] != null ? IssuingDisputeCanceledEvidence.fromJson(json['canceled'] as Map<String, dynamic>) : null,
  duplicate: json['duplicate'] != null ? IssuingDisputeDuplicateEvidence.fromJson(json['duplicate'] as Map<String, dynamic>) : null,
  fraudulent: json['fraudulent'] != null ? IssuingDisputeFraudulentEvidence.fromJson(json['fraudulent'] as Map<String, dynamic>) : null,
  merchandiseNotAsDescribed: json['merchandise_not_as_described'] != null ? IssuingDisputeMerchandiseNotAsDescribedEvidence.fromJson(json['merchandise_not_as_described'] as Map<String, dynamic>) : null,
  noValidAuthorization: json['no_valid_authorization'] != null ? IssuingDisputeNoValidAuthorizationEvidence.fromJson(json['no_valid_authorization'] as Map<String, dynamic>) : null,
  notReceived: json['not_received'] != null ? IssuingDisputeNotReceivedEvidence.fromJson(json['not_received'] as Map<String, dynamic>) : null,
  other: json['other'] != null ? IssuingDisputeOtherEvidence.fromJson(json['other'] as Map<String, dynamic>) : null,
  reason: IssuingDisputeEvidenceReason.fromJson(json['reason'] as String),
  serviceNotAsDescribed: json['service_not_as_described'] != null ? IssuingDisputeServiceNotAsDescribedEvidence.fromJson(json['service_not_as_described'] as Map<String, dynamic>) : null,
); }

final IssuingDisputeCanceledEvidence? canceled;

final IssuingDisputeDuplicateEvidence? duplicate;

final IssuingDisputeFraudulentEvidence? fraudulent;

final IssuingDisputeMerchandiseNotAsDescribedEvidence? merchandiseNotAsDescribed;

final IssuingDisputeNoValidAuthorizationEvidence? noValidAuthorization;

final IssuingDisputeNotReceivedEvidence? notReceived;

final IssuingDisputeOtherEvidence? other;

/// The reason for filing the dispute. Its value will match the field containing the evidence.
final IssuingDisputeEvidenceReason reason;

final IssuingDisputeServiceNotAsDescribedEvidence? serviceNotAsDescribed;

Map<String, dynamic> toJson() { return {
  if (canceled != null) 'canceled': canceled?.toJson(),
  if (duplicate != null) 'duplicate': duplicate?.toJson(),
  if (fraudulent != null) 'fraudulent': fraudulent?.toJson(),
  if (merchandiseNotAsDescribed != null) 'merchandise_not_as_described': merchandiseNotAsDescribed?.toJson(),
  if (noValidAuthorization != null) 'no_valid_authorization': noValidAuthorization?.toJson(),
  if (notReceived != null) 'not_received': notReceived?.toJson(),
  if (other != null) 'other': other?.toJson(),
  'reason': reason.toJson(),
  if (serviceNotAsDescribed != null) 'service_not_as_described': serviceNotAsDescribed?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('reason'); } 
IssuingDisputeEvidence copyWith({IssuingDisputeCanceledEvidence Function()? canceled, IssuingDisputeDuplicateEvidence Function()? duplicate, IssuingDisputeFraudulentEvidence Function()? fraudulent, IssuingDisputeMerchandiseNotAsDescribedEvidence Function()? merchandiseNotAsDescribed, IssuingDisputeNoValidAuthorizationEvidence Function()? noValidAuthorization, IssuingDisputeNotReceivedEvidence Function()? notReceived, IssuingDisputeOtherEvidence Function()? other, IssuingDisputeEvidenceReason? reason, IssuingDisputeServiceNotAsDescribedEvidence Function()? serviceNotAsDescribed, }) { return IssuingDisputeEvidence(
  canceled: canceled != null ? canceled() : this.canceled,
  duplicate: duplicate != null ? duplicate() : this.duplicate,
  fraudulent: fraudulent != null ? fraudulent() : this.fraudulent,
  merchandiseNotAsDescribed: merchandiseNotAsDescribed != null ? merchandiseNotAsDescribed() : this.merchandiseNotAsDescribed,
  noValidAuthorization: noValidAuthorization != null ? noValidAuthorization() : this.noValidAuthorization,
  notReceived: notReceived != null ? notReceived() : this.notReceived,
  other: other != null ? other() : this.other,
  reason: reason ?? this.reason,
  serviceNotAsDescribed: serviceNotAsDescribed != null ? serviceNotAsDescribed() : this.serviceNotAsDescribed,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingDisputeEvidence &&
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
@override String toString() { return 'IssuingDisputeEvidence(canceled: $canceled, duplicate: $duplicate, fraudulent: $fraudulent, merchandiseNotAsDescribed: $merchandiseNotAsDescribed, noValidAuthorization: $noValidAuthorization, notReceived: $notReceived, other: $other, reason: $reason, serviceNotAsDescribed: $serviceNotAsDescribed)'; } 
 }
