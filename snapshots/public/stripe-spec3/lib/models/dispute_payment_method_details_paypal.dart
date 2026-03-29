// GENERATED CODE - DO NOT MODIFY BY HAND

/// 
final class DisputePaymentMethodDetailsPaypal {const DisputePaymentMethodDetailsPaypal({this.caseId, this.reasonCode, });

factory DisputePaymentMethodDetailsPaypal.fromJson(Map<String, dynamic> json) { return DisputePaymentMethodDetailsPaypal(
  caseId: json['case_id'] as String?,
  reasonCode: json['reason_code'] as String?,
); }

/// The ID of the dispute in PayPal.
final String? caseId;

/// The reason for the dispute as defined by PayPal
final String? reasonCode;

Map<String, dynamic> toJson() { return {
  'case_id': ?caseId,
  'reason_code': ?reasonCode,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
DisputePaymentMethodDetailsPaypal copyWith({String? Function()? caseId, String? Function()? reasonCode, }) { return DisputePaymentMethodDetailsPaypal(
  caseId: caseId != null ? caseId() : this.caseId,
  reasonCode: reasonCode != null ? reasonCode() : this.reasonCode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DisputePaymentMethodDetailsPaypal &&
          caseId == other.caseId &&
          reasonCode == other.reasonCode; } 
@override int get hashCode { return Object.hash(caseId, reasonCode); } 
@override String toString() { return 'DisputePaymentMethodDetailsPaypal(caseId: $caseId, reasonCode: $reasonCode)'; } 
 }
