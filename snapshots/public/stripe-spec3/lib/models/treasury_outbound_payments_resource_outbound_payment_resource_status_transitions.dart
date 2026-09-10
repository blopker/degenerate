// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class TreasuryOutboundPaymentsResourceOutboundPaymentResourceStatusTransitions {const TreasuryOutboundPaymentsResourceOutboundPaymentResourceStatusTransitions({this.canceledAt = const Omittable.absent(), this.failedAt = const Omittable.absent(), this.postedAt = const Omittable.absent(), this.returnedAt = const Omittable.absent(), });

factory TreasuryOutboundPaymentsResourceOutboundPaymentResourceStatusTransitions.fromJson(Map<String, dynamic> json) { return TreasuryOutboundPaymentsResourceOutboundPaymentResourceStatusTransitions(
  canceledAt: json.containsKey('canceled_at') ? Omittable(json['canceled_at'] != null ? (json['canceled_at'] as num).toInt() : null) : const Omittable.absent(),
  failedAt: json.containsKey('failed_at') ? Omittable(json['failed_at'] != null ? (json['failed_at'] as num).toInt() : null) : const Omittable.absent(),
  postedAt: json.containsKey('posted_at') ? Omittable(json['posted_at'] != null ? (json['posted_at'] as num).toInt() : null) : const Omittable.absent(),
  returnedAt: json.containsKey('returned_at') ? Omittable(json['returned_at'] != null ? (json['returned_at'] as num).toInt() : null) : const Omittable.absent(),
); }

/// Timestamp describing when an OutboundPayment changed status to `canceled`.
final Omittable<int?> canceledAt;

/// Timestamp describing when an OutboundPayment changed status to `failed`.
final Omittable<int?> failedAt;

/// Timestamp describing when an OutboundPayment changed status to `posted`.
final Omittable<int?> postedAt;

/// Timestamp describing when an OutboundPayment changed status to `returned`.
final Omittable<int?> returnedAt;

Map<String, dynamic> toJson() { return {
  if (canceledAt.isPresent) 'canceled_at': canceledAt.value,
  if (failedAt.isPresent) 'failed_at': failedAt.value,
  if (postedAt.isPresent) 'posted_at': postedAt.value,
  if (returnedAt.isPresent) 'returned_at': returnedAt.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'canceled_at', 'failed_at', 'posted_at', 'returned_at'}.contains(key)); } 
TreasuryOutboundPaymentsResourceOutboundPaymentResourceStatusTransitions copyWith({Omittable<int?>? canceledAt, Omittable<int?>? failedAt, Omittable<int?>? postedAt, Omittable<int?>? returnedAt, }) { return TreasuryOutboundPaymentsResourceOutboundPaymentResourceStatusTransitions(
  canceledAt: canceledAt ?? this.canceledAt,
  failedAt: failedAt ?? this.failedAt,
  postedAt: postedAt ?? this.postedAt,
  returnedAt: returnedAt ?? this.returnedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TreasuryOutboundPaymentsResourceOutboundPaymentResourceStatusTransitions &&
          canceledAt == other.canceledAt &&
          failedAt == other.failedAt &&
          postedAt == other.postedAt &&
          returnedAt == other.returnedAt; } 
@override int get hashCode { return Object.hash(canceledAt, failedAt, postedAt, returnedAt); } 
@override String toString() { return 'TreasuryOutboundPaymentsResourceOutboundPaymentResourceStatusTransitions(canceledAt: $canceledAt, failedAt: $failedAt, postedAt: $postedAt, returnedAt: $returnedAt)'; } 
 }
