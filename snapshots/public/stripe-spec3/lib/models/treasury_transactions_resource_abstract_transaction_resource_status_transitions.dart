// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class TreasuryTransactionsResourceAbstractTransactionResourceStatusTransitions {const TreasuryTransactionsResourceAbstractTransactionResourceStatusTransitions({this.postedAt, this.voidAt, });

factory TreasuryTransactionsResourceAbstractTransactionResourceStatusTransitions.fromJson(Map<String, dynamic> json) { return TreasuryTransactionsResourceAbstractTransactionResourceStatusTransitions(
  postedAt: json['posted_at'] != null ? (json['posted_at'] as num).toInt() : null,
  voidAt: json['void_at'] != null ? (json['void_at'] as num).toInt() : null,
); }

/// Timestamp describing when the Transaction changed status to `posted`.
final int? postedAt;

/// Timestamp describing when the Transaction changed status to `void`.
final int? voidAt;

Map<String, dynamic> toJson() { return {
  'posted_at': ?postedAt,
  'void_at': ?voidAt,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'posted_at', 'void_at'}.contains(key)); } 
TreasuryTransactionsResourceAbstractTransactionResourceStatusTransitions copyWith({int? Function()? postedAt, int? Function()? voidAt, }) { return TreasuryTransactionsResourceAbstractTransactionResourceStatusTransitions(
  postedAt: postedAt != null ? postedAt() : this.postedAt,
  voidAt: voidAt != null ? voidAt() : this.voidAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TreasuryTransactionsResourceAbstractTransactionResourceStatusTransitions &&
          postedAt == other.postedAt &&
          voidAt == other.voidAt; } 
@override int get hashCode { return Object.hash(postedAt, voidAt); } 
@override String toString() { return 'TreasuryTransactionsResourceAbstractTransactionResourceStatusTransitions(postedAt: $postedAt, voidAt: $voidAt)'; } 
 }
