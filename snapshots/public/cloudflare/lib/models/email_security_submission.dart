// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'email_security_disposition_label.dart';@immutable final class EmailSecuritySubmissionCustomerStatus {const EmailSecuritySubmissionCustomerStatus._(this.value);

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
@immutable final class EmailSecuritySubmission {const EmailSecuritySubmission({required this.requestedTs, required this.submissionId, this.customerStatus, this.originalDisposition = const Omittable.absent(), this.originalEdfHash = const Omittable.absent(), this.outcome = const Omittable.absent(), this.outcomeDisposition = const Omittable.absent(), this.requestedBy = const Omittable.absent(), this.requestedDisposition = const Omittable.absent(), this.status = const Omittable.absent(), this.subject = const Omittable.absent(), this.type = const Omittable.absent(), });

factory EmailSecuritySubmission.fromJson(Map<String, dynamic> json) { return EmailSecuritySubmission(
  customerStatus: json['customer_status'] != null ? EmailSecuritySubmissionCustomerStatus.fromJson(json['customer_status'] as String) : null,
  originalDisposition: json.containsKey('original_disposition') ? Omittable(json['original_disposition'] != null ? EmailSecurityDispositionLabel.fromJson(json['original_disposition'] as String) : null) : const Omittable.absent(),
  originalEdfHash: json.containsKey('original_edf_hash') ? Omittable(json['original_edf_hash'] as String?) : const Omittable.absent(),
  outcome: json.containsKey('outcome') ? Omittable(json['outcome'] as String?) : const Omittable.absent(),
  outcomeDisposition: json.containsKey('outcome_disposition') ? Omittable(json['outcome_disposition'] != null ? EmailSecurityDispositionLabel.fromJson(json['outcome_disposition'] as String) : null) : const Omittable.absent(),
  requestedBy: json.containsKey('requested_by') ? Omittable(json['requested_by'] as String?) : const Omittable.absent(),
  requestedDisposition: json.containsKey('requested_disposition') ? Omittable(json['requested_disposition'] != null ? EmailSecurityDispositionLabel.fromJson(json['requested_disposition'] as String) : null) : const Omittable.absent(),
  requestedTs: DateTime.parse(json['requested_ts'] as String),
  status: json.containsKey('status') ? Omittable(json['status'] as String?) : const Omittable.absent(),
  subject: json.containsKey('subject') ? Omittable(json['subject'] as String?) : const Omittable.absent(),
  submissionId: json['submission_id'] as String,
  type: json.containsKey('type') ? Omittable(json['type'] as String?) : const Omittable.absent(),
); }

final EmailSecuritySubmissionCustomerStatus? customerStatus;

final Omittable<EmailSecurityDispositionLabel?> originalDisposition;

final Omittable<String?> originalEdfHash;

final Omittable<String?> outcome;

final Omittable<EmailSecurityDispositionLabel?> outcomeDisposition;

final Omittable<String?> requestedBy;

final Omittable<EmailSecurityDispositionLabel?> requestedDisposition;

final DateTime requestedTs;

final Omittable<String?> status;

final Omittable<String?> subject;

final String submissionId;

final Omittable<String?> type;

Map<String, dynamic> toJson() { return {
  if (customerStatus != null) 'customer_status': customerStatus?.toJson(),
  if (originalDisposition.isPresent) 'original_disposition': originalDisposition.value?.toJson(),
  if (originalEdfHash.isPresent) 'original_edf_hash': originalEdfHash.value,
  if (outcome.isPresent) 'outcome': outcome.value,
  if (outcomeDisposition.isPresent) 'outcome_disposition': outcomeDisposition.value?.toJson(),
  if (requestedBy.isPresent) 'requested_by': requestedBy.value,
  if (requestedDisposition.isPresent) 'requested_disposition': requestedDisposition.value?.toJson(),
  'requested_ts': requestedTs.toIso8601String(),
  if (status.isPresent) 'status': status.value,
  if (subject.isPresent) 'subject': subject.value,
  'submission_id': submissionId,
  if (type.isPresent) 'type': type.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('requested_ts') && json['requested_ts'] is String &&
      json.containsKey('submission_id') && json['submission_id'] is String; } 
EmailSecuritySubmission copyWith({EmailSecuritySubmissionCustomerStatus? Function()? customerStatus, Omittable<EmailSecurityDispositionLabel?>? originalDisposition, Omittable<String?>? originalEdfHash, Omittable<String?>? outcome, Omittable<EmailSecurityDispositionLabel?>? outcomeDisposition, Omittable<String?>? requestedBy, Omittable<EmailSecurityDispositionLabel?>? requestedDisposition, DateTime? requestedTs, Omittable<String?>? status, Omittable<String?>? subject, String? submissionId, Omittable<String?>? type, }) { return EmailSecuritySubmission(
  customerStatus: customerStatus != null ? customerStatus() : this.customerStatus,
  originalDisposition: originalDisposition ?? this.originalDisposition,
  originalEdfHash: originalEdfHash ?? this.originalEdfHash,
  outcome: outcome ?? this.outcome,
  outcomeDisposition: outcomeDisposition ?? this.outcomeDisposition,
  requestedBy: requestedBy ?? this.requestedBy,
  requestedDisposition: requestedDisposition ?? this.requestedDisposition,
  requestedTs: requestedTs ?? this.requestedTs,
  status: status ?? this.status,
  subject: subject ?? this.subject,
  submissionId: submissionId ?? this.submissionId,
  type: type ?? this.type,
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
