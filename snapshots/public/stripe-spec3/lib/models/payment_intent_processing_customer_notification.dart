// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PaymentIntentProcessingCustomerNotification {const PaymentIntentProcessingCustomerNotification({this.approvalRequested, this.completesAt, });

factory PaymentIntentProcessingCustomerNotification.fromJson(Map<String, dynamic> json) { return PaymentIntentProcessingCustomerNotification(
  approvalRequested: json['approval_requested'] as bool?,
  completesAt: json['completes_at'] != null ? (json['completes_at'] as num).toInt() : null,
); }

/// Whether customer approval has been requested for this payment. For payments greater than INR 15000 or mandate amount, the customer must provide explicit approval of the payment with their bank.
final bool? approvalRequested;

/// If customer approval is required, they need to provide approval before this time.
final int? completesAt;

Map<String, dynamic> toJson() { return {
  'approval_requested': ?approvalRequested,
  'completes_at': ?completesAt,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'approval_requested', 'completes_at'}.contains(key)); } 
PaymentIntentProcessingCustomerNotification copyWith({bool? Function()? approvalRequested, int? Function()? completesAt, }) { return PaymentIntentProcessingCustomerNotification(
  approvalRequested: approvalRequested != null ? approvalRequested() : this.approvalRequested,
  completesAt: completesAt != null ? completesAt() : this.completesAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentIntentProcessingCustomerNotification &&
          approvalRequested == other.approvalRequested &&
          completesAt == other.completesAt; } 
@override int get hashCode { return Object.hash(approvalRequested, completesAt); } 
@override String toString() { return 'PaymentIntentProcessingCustomerNotification(approvalRequested: $approvalRequested, completesAt: $completesAt)'; } 
 }
