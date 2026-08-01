// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class InvoicesPaymentsInvoicePaymentStatusTransitions {const InvoicesPaymentsInvoicePaymentStatusTransitions({this.canceledAt = const Omittable.absent(), this.paidAt = const Omittable.absent(), });

factory InvoicesPaymentsInvoicePaymentStatusTransitions.fromJson(Map<String, dynamic> json) { return InvoicesPaymentsInvoicePaymentStatusTransitions(
  canceledAt: json.containsKey('canceled_at') ? Omittable(json['canceled_at'] != null ? (json['canceled_at'] as num).toInt() : null) : const Omittable.absent(),
  paidAt: json.containsKey('paid_at') ? Omittable(json['paid_at'] != null ? (json['paid_at'] as num).toInt() : null) : const Omittable.absent(),
); }

/// The time that the payment was canceled.
final Omittable<int?> canceledAt;

/// The time that the payment succeeded.
final Omittable<int?> paidAt;

Map<String, dynamic> toJson() { return {
  if (canceledAt.isPresent) 'canceled_at': canceledAt.value,
  if (paidAt.isPresent) 'paid_at': paidAt.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'canceled_at', 'paid_at'}.contains(key)); } 
InvoicesPaymentsInvoicePaymentStatusTransitions copyWith({Omittable<int?>? canceledAt, Omittable<int?>? paidAt, }) { return InvoicesPaymentsInvoicePaymentStatusTransitions(
  canceledAt: canceledAt ?? this.canceledAt,
  paidAt: paidAt ?? this.paidAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InvoicesPaymentsInvoicePaymentStatusTransitions &&
          canceledAt == other.canceledAt &&
          paidAt == other.paidAt; } 
@override int get hashCode { return Object.hash(canceledAt, paidAt); } 
@override String toString() { return 'InvoicesPaymentsInvoicePaymentStatusTransitions(canceledAt: $canceledAt, paidAt: $paidAt)'; } 
 }
