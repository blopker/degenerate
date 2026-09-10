// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PaymentIntentNextActionCardAwaitNotification {const PaymentIntentNextActionCardAwaitNotification({this.chargeAttemptAt = const Omittable.absent(), this.customerApprovalRequired = const Omittable.absent(), });

factory PaymentIntentNextActionCardAwaitNotification.fromJson(Map<String, dynamic> json) { return PaymentIntentNextActionCardAwaitNotification(
  chargeAttemptAt: json.containsKey('charge_attempt_at') ? Omittable(json['charge_attempt_at'] != null ? (json['charge_attempt_at'] as num).toInt() : null) : const Omittable.absent(),
  customerApprovalRequired: json.containsKey('customer_approval_required') ? Omittable(json['customer_approval_required'] as bool?) : const Omittable.absent(),
); }

/// The time that payment will be attempted. If customer approval is required, they need to provide approval before this time.
final Omittable<int?> chargeAttemptAt;

/// For payments greater than INR 15000, the customer must provide explicit approval of the payment with their bank. For payments of lower amount, no customer action is required.
final Omittable<bool?> customerApprovalRequired;

Map<String, dynamic> toJson() { return {
  if (chargeAttemptAt.isPresent) 'charge_attempt_at': chargeAttemptAt.value,
  if (customerApprovalRequired.isPresent) 'customer_approval_required': customerApprovalRequired.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'charge_attempt_at', 'customer_approval_required'}.contains(key)); } 
PaymentIntentNextActionCardAwaitNotification copyWith({Omittable<int?>? chargeAttemptAt, Omittable<bool?>? customerApprovalRequired, }) { return PaymentIntentNextActionCardAwaitNotification(
  chargeAttemptAt: chargeAttemptAt ?? this.chargeAttemptAt,
  customerApprovalRequired: customerApprovalRequired ?? this.customerApprovalRequired,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentIntentNextActionCardAwaitNotification &&
          chargeAttemptAt == other.chargeAttemptAt &&
          customerApprovalRequired == other.customerApprovalRequired; } 
@override int get hashCode { return Object.hash(chargeAttemptAt, customerApprovalRequired); } 
@override String toString() { return 'PaymentIntentNextActionCardAwaitNotification(chargeAttemptAt: $chargeAttemptAt, customerApprovalRequired: $customerApprovalRequired)'; } 
 }
