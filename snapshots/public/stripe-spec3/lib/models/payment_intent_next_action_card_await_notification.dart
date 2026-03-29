// GENERATED CODE - DO NOT MODIFY BY HAND

/// 
final class PaymentIntentNextActionCardAwaitNotification {const PaymentIntentNextActionCardAwaitNotification({this.chargeAttemptAt, this.customerApprovalRequired, });

factory PaymentIntentNextActionCardAwaitNotification.fromJson(Map<String, dynamic> json) { return PaymentIntentNextActionCardAwaitNotification(
  chargeAttemptAt: json['charge_attempt_at'] != null ? (json['charge_attempt_at'] as num).toInt() : null,
  customerApprovalRequired: json['customer_approval_required'] as bool?,
); }

/// The time that payment will be attempted. If customer approval is required, they need to provide approval before this time.
final int? chargeAttemptAt;

/// For payments greater than INR 15000, the customer must provide explicit approval of the payment with their bank. For payments of lower amount, no customer action is required.
final bool? customerApprovalRequired;

Map<String, dynamic> toJson() { return {
  'charge_attempt_at': ?chargeAttemptAt,
  'customer_approval_required': ?customerApprovalRequired,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'charge_attempt_at', 'customer_approval_required'}.contains(key)); } 
PaymentIntentNextActionCardAwaitNotification copyWith({int? Function()? chargeAttemptAt, bool? Function()? customerApprovalRequired, }) { return PaymentIntentNextActionCardAwaitNotification(
  chargeAttemptAt: chargeAttemptAt != null ? chargeAttemptAt() : this.chargeAttemptAt,
  customerApprovalRequired: customerApprovalRequired != null ? customerApprovalRequired() : this.customerApprovalRequired,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentIntentNextActionCardAwaitNotification &&
          chargeAttemptAt == other.chargeAttemptAt &&
          customerApprovalRequired == other.customerApprovalRequired; } 
@override int get hashCode { return Object.hash(chargeAttemptAt, customerApprovalRequired); } 
@override String toString() { return 'PaymentIntentNextActionCardAwaitNotification(chargeAttemptAt: $chargeAttemptAt, customerApprovalRequired: $customerApprovalRequired)'; } 
 }
