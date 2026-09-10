// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class TreasuryTransactionsResourceAbstractTransactionResourceStatusTransitions {const TreasuryTransactionsResourceAbstractTransactionResourceStatusTransitions({this.postedAt = const Omittable.absent(), this.voidAt = const Omittable.absent(), });

factory TreasuryTransactionsResourceAbstractTransactionResourceStatusTransitions.fromJson(Map<String, dynamic> json) { return TreasuryTransactionsResourceAbstractTransactionResourceStatusTransitions(
  postedAt: json.containsKey('posted_at') ? Omittable(json['posted_at'] != null ? (json['posted_at'] as num).toInt() : null) : const Omittable.absent(),
  voidAt: json.containsKey('void_at') ? Omittable(json['void_at'] != null ? (json['void_at'] as num).toInt() : null) : const Omittable.absent(),
); }

/// Timestamp describing when the Transaction changed status to `posted`.
final Omittable<int?> postedAt;

/// Timestamp describing when the Transaction changed status to `void`.
final Omittable<int?> voidAt;

Map<String, dynamic> toJson() { return {
  if (postedAt.isPresent) 'posted_at': postedAt.value,
  if (voidAt.isPresent) 'void_at': voidAt.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'posted_at', 'void_at'}.contains(key)); } 
TreasuryTransactionsResourceAbstractTransactionResourceStatusTransitions copyWith({Omittable<int?>? postedAt, Omittable<int?>? voidAt, }) { return TreasuryTransactionsResourceAbstractTransactionResourceStatusTransitions(
  postedAt: postedAt ?? this.postedAt,
  voidAt: voidAt ?? this.voidAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TreasuryTransactionsResourceAbstractTransactionResourceStatusTransitions &&
          postedAt == other.postedAt &&
          voidAt == other.voidAt; } 
@override int get hashCode { return Object.hash(postedAt, voidAt); } 
@override String toString() { return 'TreasuryTransactionsResourceAbstractTransactionResourceStatusTransitions(postedAt: $postedAt, voidAt: $voidAt)'; } 
 }
