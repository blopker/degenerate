// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class TreasuryInboundTransfersResourceInboundTransferResourceStatusTransitions {const TreasuryInboundTransfersResourceInboundTransferResourceStatusTransitions({this.canceledAt = const Omittable.absent(), this.failedAt = const Omittable.absent(), this.succeededAt = const Omittable.absent(), });

factory TreasuryInboundTransfersResourceInboundTransferResourceStatusTransitions.fromJson(Map<String, dynamic> json) { return TreasuryInboundTransfersResourceInboundTransferResourceStatusTransitions(
  canceledAt: json.containsKey('canceled_at') ? Omittable(json['canceled_at'] != null ? (json['canceled_at'] as num).toInt() : null) : const Omittable.absent(),
  failedAt: json.containsKey('failed_at') ? Omittable(json['failed_at'] != null ? (json['failed_at'] as num).toInt() : null) : const Omittable.absent(),
  succeededAt: json.containsKey('succeeded_at') ? Omittable(json['succeeded_at'] != null ? (json['succeeded_at'] as num).toInt() : null) : const Omittable.absent(),
); }

/// Timestamp describing when an InboundTransfer changed status to `canceled`.
final Omittable<int?> canceledAt;

/// Timestamp describing when an InboundTransfer changed status to `failed`.
final Omittable<int?> failedAt;

/// Timestamp describing when an InboundTransfer changed status to `succeeded`.
final Omittable<int?> succeededAt;

Map<String, dynamic> toJson() { return {
  if (canceledAt.isPresent) 'canceled_at': canceledAt.value,
  if (failedAt.isPresent) 'failed_at': failedAt.value,
  if (succeededAt.isPresent) 'succeeded_at': succeededAt.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'canceled_at', 'failed_at', 'succeeded_at'}.contains(key)); } 
TreasuryInboundTransfersResourceInboundTransferResourceStatusTransitions copyWith({Omittable<int?>? canceledAt, Omittable<int?>? failedAt, Omittable<int?>? succeededAt, }) { return TreasuryInboundTransfersResourceInboundTransferResourceStatusTransitions(
  canceledAt: canceledAt ?? this.canceledAt,
  failedAt: failedAt ?? this.failedAt,
  succeededAt: succeededAt ?? this.succeededAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TreasuryInboundTransfersResourceInboundTransferResourceStatusTransitions &&
          canceledAt == other.canceledAt &&
          failedAt == other.failedAt &&
          succeededAt == other.succeededAt; } 
@override int get hashCode { return Object.hash(canceledAt, failedAt, succeededAt); } 
@override String toString() { return 'TreasuryInboundTransfersResourceInboundTransferResourceStatusTransitions(canceledAt: $canceledAt, failedAt: $failedAt, succeededAt: $succeededAt)'; } 
 }
