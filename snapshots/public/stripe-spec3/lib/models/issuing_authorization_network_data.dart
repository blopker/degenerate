// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class IssuingAuthorizationNetworkData {const IssuingAuthorizationNetworkData({this.acquiringInstitutionId, this.systemTraceAuditNumber, this.transactionId, });

factory IssuingAuthorizationNetworkData.fromJson(Map<String, dynamic> json) { return IssuingAuthorizationNetworkData(
  acquiringInstitutionId: json['acquiring_institution_id'] as String?,
  systemTraceAuditNumber: json['system_trace_audit_number'] as String?,
  transactionId: json['transaction_id'] as String?,
); }

/// Identifier assigned to the acquirer by the card network. Sometimes this value is not provided by the network; in this case, the value will be `null`.
final String? acquiringInstitutionId;

/// The System Trace Audit Number (STAN) is a 6-digit identifier assigned by the acquirer. Prefer `network_data.transaction_id` if present, unless you have special requirements.
final String? systemTraceAuditNumber;

/// Unique identifier for the authorization assigned by the card network used to match subsequent messages, disputes, and transactions.
final String? transactionId;

Map<String, dynamic> toJson() { return {
  'acquiring_institution_id': ?acquiringInstitutionId,
  'system_trace_audit_number': ?systemTraceAuditNumber,
  'transaction_id': ?transactionId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'acquiring_institution_id', 'system_trace_audit_number', 'transaction_id'}.contains(key)); } 
IssuingAuthorizationNetworkData copyWith({String? Function()? acquiringInstitutionId, String? Function()? systemTraceAuditNumber, String? Function()? transactionId, }) { return IssuingAuthorizationNetworkData(
  acquiringInstitutionId: acquiringInstitutionId != null ? acquiringInstitutionId() : this.acquiringInstitutionId,
  systemTraceAuditNumber: systemTraceAuditNumber != null ? systemTraceAuditNumber() : this.systemTraceAuditNumber,
  transactionId: transactionId != null ? transactionId() : this.transactionId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingAuthorizationNetworkData &&
          acquiringInstitutionId == other.acquiringInstitutionId &&
          systemTraceAuditNumber == other.systemTraceAuditNumber &&
          transactionId == other.transactionId; } 
@override int get hashCode { return Object.hash(acquiringInstitutionId, systemTraceAuditNumber, transactionId); } 
@override String toString() { return 'IssuingAuthorizationNetworkData(acquiringInstitutionId: $acquiringInstitutionId, systemTraceAuditNumber: $systemTraceAuditNumber, transactionId: $transactionId)'; } 
 }
