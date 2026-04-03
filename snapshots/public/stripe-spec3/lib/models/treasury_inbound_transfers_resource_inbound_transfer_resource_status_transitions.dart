// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class TreasuryInboundTransfersResourceInboundTransferResourceStatusTransitions {const TreasuryInboundTransfersResourceInboundTransferResourceStatusTransitions({this.canceledAt, this.failedAt, this.succeededAt, });

factory TreasuryInboundTransfersResourceInboundTransferResourceStatusTransitions.fromJson(Map<String, dynamic> json) { return TreasuryInboundTransfersResourceInboundTransferResourceStatusTransitions(
  canceledAt: json['canceled_at'] != null ? (json['canceled_at'] as num).toInt() : null,
  failedAt: json['failed_at'] != null ? (json['failed_at'] as num).toInt() : null,
  succeededAt: json['succeeded_at'] != null ? (json['succeeded_at'] as num).toInt() : null,
); }

/// Timestamp describing when an InboundTransfer changed status to `canceled`.
final int? canceledAt;

/// Timestamp describing when an InboundTransfer changed status to `failed`.
final int? failedAt;

/// Timestamp describing when an InboundTransfer changed status to `succeeded`.
final int? succeededAt;

Map<String, dynamic> toJson() { return {
  'canceled_at': ?canceledAt,
  'failed_at': ?failedAt,
  'succeeded_at': ?succeededAt,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'canceled_at', 'failed_at', 'succeeded_at'}.contains(key)); } 
TreasuryInboundTransfersResourceInboundTransferResourceStatusTransitions copyWith({int? Function()? canceledAt, int? Function()? failedAt, int? Function()? succeededAt, }) { return TreasuryInboundTransfersResourceInboundTransferResourceStatusTransitions(
  canceledAt: canceledAt != null ? canceledAt() : this.canceledAt,
  failedAt: failedAt != null ? failedAt() : this.failedAt,
  succeededAt: succeededAt != null ? succeededAt() : this.succeededAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TreasuryInboundTransfersResourceInboundTransferResourceStatusTransitions &&
          canceledAt == other.canceledAt &&
          failedAt == other.failedAt &&
          succeededAt == other.succeededAt; } 
@override int get hashCode { return Object.hash(canceledAt, failedAt, succeededAt); } 
@override String toString() { return 'TreasuryInboundTransfersResourceInboundTransferResourceStatusTransitions(canceledAt: $canceledAt, failedAt: $failedAt, succeededAt: $succeededAt)'; } 
 }
