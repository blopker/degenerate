// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class IssuingAuthorizationNetworkData {const IssuingAuthorizationNetworkData({this.acquiringInstitutionId = const Omittable.absent(), this.systemTraceAuditNumber = const Omittable.absent(), this.transactionId = const Omittable.absent(), });

factory IssuingAuthorizationNetworkData.fromJson(Map<String, dynamic> json) { return IssuingAuthorizationNetworkData(
  acquiringInstitutionId: json.containsKey('acquiring_institution_id') ? Omittable(json['acquiring_institution_id'] as String?) : const Omittable.absent(),
  systemTraceAuditNumber: json.containsKey('system_trace_audit_number') ? Omittable(json['system_trace_audit_number'] as String?) : const Omittable.absent(),
  transactionId: json.containsKey('transaction_id') ? Omittable(json['transaction_id'] as String?) : const Omittable.absent(),
); }

/// Identifier assigned to the acquirer by the card network. Sometimes this value is not provided by the network; in this case, the value will be `null`.
final Omittable<String?> acquiringInstitutionId;

/// The System Trace Audit Number (STAN) is a 6-digit identifier assigned by the acquirer. Prefer `network_data.transaction_id` if present, unless you have special requirements.
final Omittable<String?> systemTraceAuditNumber;

/// Unique identifier for the authorization assigned by the card network used to match subsequent messages, disputes, and transactions.
final Omittable<String?> transactionId;

Map<String, dynamic> toJson() { return {
  if (acquiringInstitutionId.isPresent) 'acquiring_institution_id': acquiringInstitutionId.value,
  if (systemTraceAuditNumber.isPresent) 'system_trace_audit_number': systemTraceAuditNumber.value,
  if (transactionId.isPresent) 'transaction_id': transactionId.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'acquiring_institution_id', 'system_trace_audit_number', 'transaction_id'}.contains(key)); } 
IssuingAuthorizationNetworkData copyWith({Omittable<String?>? acquiringInstitutionId, Omittable<String?>? systemTraceAuditNumber, Omittable<String?>? transactionId, }) { return IssuingAuthorizationNetworkData(
  acquiringInstitutionId: acquiringInstitutionId ?? this.acquiringInstitutionId,
  systemTraceAuditNumber: systemTraceAuditNumber ?? this.systemTraceAuditNumber,
  transactionId: transactionId ?? this.transactionId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingAuthorizationNetworkData &&
          acquiringInstitutionId == other.acquiringInstitutionId &&
          systemTraceAuditNumber == other.systemTraceAuditNumber &&
          transactionId == other.transactionId; } 
@override int get hashCode { return Object.hash(acquiringInstitutionId, systemTraceAuditNumber, transactionId); } 
@override String toString() { return 'IssuingAuthorizationNetworkData(acquiringInstitutionId: $acquiringInstitutionId, systemTraceAuditNumber: $systemTraceAuditNumber, transactionId: $transactionId)'; } 
 }
