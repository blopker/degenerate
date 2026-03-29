// GENERATED CODE - DO NOT MODIFY BY HAND

import 'email_security_disposition_label.dart';final class EmailSecuritySubmissionCustomerStatus {const EmailSecuritySubmissionCustomerStatus._(this.value);

factory EmailSecuritySubmissionCustomerStatus.fromJson(String json) { return switch (json) {
  'escalated' => escalated,
  'reviewed' => reviewed,
  'unreviewed' => unreviewed,
  _ => EmailSecuritySubmissionCustomerStatus._(json),
}; }

static const EmailSecuritySubmissionCustomerStatus escalated = EmailSecuritySubmissionCustomerStatus._('escalated');

static const EmailSecuritySubmissionCustomerStatus reviewed = EmailSecuritySubmissionCustomerStatus._('reviewed');

static const EmailSecuritySubmissionCustomerStatus unreviewed = EmailSecuritySubmissionCustomerStatus._('unreviewed');

static const List<EmailSecuritySubmissionCustomerStatus> values = [escalated, reviewed, unreviewed];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EmailSecuritySubmissionCustomerStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'EmailSecuritySubmissionCustomerStatus($value)'; } 
 }
final class EmailSecuritySubmission {const EmailSecuritySubmission({this.customerStatus, this.originalDisposition, this.originalEdfHash, this.outcome, this.outcomeDisposition, this.requestedBy, this.requestedDisposition, required this.requestedTs, this.status, this.subject, required this.submissionId, this.type, });

factory EmailSecuritySubmission.fromJson(Map<String, dynamic> json) { return EmailSecuritySubmission(
  customerStatus: json['customer_status'] != null ? EmailSecuritySubmissionCustomerStatus.fromJson(json['customer_status'] as String) : null,
  originalDisposition: json['original_disposition'] != null ? EmailSecurityDispositionLabel.fromJson(json['original_disposition'] as String) : null,
  originalEdfHash: json['original_edf_hash'] as String?,
  outcome: json['outcome'] as String?,
  outcomeDisposition: json['outcome_disposition'] != null ? EmailSecurityDispositionLabel.fromJson(json['outcome_disposition'] as String) : null,
  requestedBy: json['requested_by'] as String?,
  requestedDisposition: json['requested_disposition'] != null ? EmailSecurityDispositionLabel.fromJson(json['requested_disposition'] as String) : null,
  requestedTs: DateTime.parse(json['requested_ts'] as String),
  status: json['status'] as String?,
  subject: json['subject'] as String?,
  submissionId: json['submission_id'] as String,
  type: json['type'] as String?,
); }

final EmailSecuritySubmissionCustomerStatus? customerStatus;

final EmailSecurityDispositionLabel? originalDisposition;

final String? originalEdfHash;

final String? outcome;

final EmailSecurityDispositionLabel? outcomeDisposition;

final String? requestedBy;

final EmailSecurityDispositionLabel? requestedDisposition;

final DateTime requestedTs;

final String? status;

final String? subject;

final String submissionId;

final String? type;

Map<String, dynamic> toJson() { return {
  if (customerStatus != null) 'customer_status': customerStatus?.toJson(),
  if (originalDisposition != null) 'original_disposition': originalDisposition?.toJson(),
  'original_edf_hash': ?originalEdfHash,
  'outcome': ?outcome,
  if (outcomeDisposition != null) 'outcome_disposition': outcomeDisposition?.toJson(),
  'requested_by': ?requestedBy,
  if (requestedDisposition != null) 'requested_disposition': requestedDisposition?.toJson(),
  'requested_ts': requestedTs.toIso8601String(),
  'status': ?status,
  'subject': ?subject,
  'submission_id': submissionId,
  'type': ?type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('requested_ts') && json['requested_ts'] is String &&
      json.containsKey('submission_id') && json['submission_id'] is String; } 
EmailSecuritySubmission copyWith({EmailSecuritySubmissionCustomerStatus Function()? customerStatus, EmailSecurityDispositionLabel? Function()? originalDisposition, String? Function()? originalEdfHash, String? Function()? outcome, EmailSecurityDispositionLabel? Function()? outcomeDisposition, String? Function()? requestedBy, EmailSecurityDispositionLabel? Function()? requestedDisposition, DateTime? requestedTs, String? Function()? status, String? Function()? subject, String? submissionId, String? Function()? type, }) { return EmailSecuritySubmission(
  customerStatus: customerStatus != null ? customerStatus() : this.customerStatus,
  originalDisposition: originalDisposition != null ? originalDisposition() : this.originalDisposition,
  originalEdfHash: originalEdfHash != null ? originalEdfHash() : this.originalEdfHash,
  outcome: outcome != null ? outcome() : this.outcome,
  outcomeDisposition: outcomeDisposition != null ? outcomeDisposition() : this.outcomeDisposition,
  requestedBy: requestedBy != null ? requestedBy() : this.requestedBy,
  requestedDisposition: requestedDisposition != null ? requestedDisposition() : this.requestedDisposition,
  requestedTs: requestedTs ?? this.requestedTs,
  status: status != null ? status() : this.status,
  subject: subject != null ? subject() : this.subject,
  submissionId: submissionId ?? this.submissionId,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailSecuritySubmission &&
          customerStatus == other.customerStatus &&
          originalDisposition == other.originalDisposition &&
          originalEdfHash == other.originalEdfHash &&
          outcome == other.outcome &&
          outcomeDisposition == other.outcomeDisposition &&
          requestedBy == other.requestedBy &&
          requestedDisposition == other.requestedDisposition &&
          requestedTs == other.requestedTs &&
          status == other.status &&
          subject == other.subject &&
          submissionId == other.submissionId &&
          type == other.type; } 
@override int get hashCode { return Object.hash(customerStatus, originalDisposition, originalEdfHash, outcome, outcomeDisposition, requestedBy, requestedDisposition, requestedTs, status, subject, submissionId, type); } 
@override String toString() { return 'EmailSecuritySubmission(customerStatus: $customerStatus, originalDisposition: $originalDisposition, originalEdfHash: $originalEdfHash, outcome: $outcome, outcomeDisposition: $outcomeDisposition, requestedBy: $requestedBy, requestedDisposition: $requestedDisposition, requestedTs: $requestedTs, status: $status, subject: $subject, submissionId: $submissionId, type: $type)'; } 
 }
