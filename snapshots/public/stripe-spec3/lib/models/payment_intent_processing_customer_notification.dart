// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PaymentIntentProcessingCustomerNotification {const PaymentIntentProcessingCustomerNotification({this.approvalRequested = const Omittable.absent(), this.completesAt = const Omittable.absent(), });

factory PaymentIntentProcessingCustomerNotification.fromJson(Map<String, dynamic> json) { return PaymentIntentProcessingCustomerNotification(
  approvalRequested: json.containsKey('approval_requested') ? Omittable(json['approval_requested'] as bool?) : const Omittable.absent(),
  completesAt: json.containsKey('completes_at') ? Omittable(json['completes_at'] != null ? (json['completes_at'] as num).toInt() : null) : const Omittable.absent(),
); }

/// Whether customer approval has been requested for this payment. For payments greater than INR 15000 or mandate amount, the customer must provide explicit approval of the payment with their bank.
final Omittable<bool?> approvalRequested;

/// If customer approval is required, they need to provide approval before this time.
final Omittable<int?> completesAt;

Map<String, dynamic> toJson() { return {
  if (approvalRequested.isPresent) 'approval_requested': approvalRequested.value,
  if (completesAt.isPresent) 'completes_at': completesAt.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'approval_requested', 'completes_at'}.contains(key)); } 
PaymentIntentProcessingCustomerNotification copyWith({Omittable<bool?>? approvalRequested, Omittable<int?>? completesAt, }) { return PaymentIntentProcessingCustomerNotification(
  approvalRequested: approvalRequested ?? this.approvalRequested,
  completesAt: completesAt ?? this.completesAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentIntentProcessingCustomerNotification &&
          approvalRequested == other.approvalRequested &&
          completesAt == other.completesAt; } 
@override int get hashCode { return Object.hash(approvalRequested, completesAt); } 
@override String toString() { return 'PaymentIntentProcessingCustomerNotification(approvalRequested: $approvalRequested, completesAt: $completesAt)'; } 
 }
