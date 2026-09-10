// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class BankConnectionsResourceTransactionResourceStatusTransitions {const BankConnectionsResourceTransactionResourceStatusTransitions({this.postedAt = const Omittable.absent(), this.voidAt = const Omittable.absent(), });

factory BankConnectionsResourceTransactionResourceStatusTransitions.fromJson(Map<String, dynamic> json) { return BankConnectionsResourceTransactionResourceStatusTransitions(
  postedAt: json.containsKey('posted_at') ? Omittable(json['posted_at'] != null ? (json['posted_at'] as num).toInt() : null) : const Omittable.absent(),
  voidAt: json.containsKey('void_at') ? Omittable(json['void_at'] != null ? (json['void_at'] as num).toInt() : null) : const Omittable.absent(),
); }

/// Time at which this transaction posted. Measured in seconds since the Unix epoch.
final Omittable<int?> postedAt;

/// Time at which this transaction was voided. Measured in seconds since the Unix epoch.
final Omittable<int?> voidAt;

Map<String, dynamic> toJson() { return {
  if (postedAt.isPresent) 'posted_at': postedAt.value,
  if (voidAt.isPresent) 'void_at': voidAt.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'posted_at', 'void_at'}.contains(key)); } 
BankConnectionsResourceTransactionResourceStatusTransitions copyWith({Omittable<int?>? postedAt, Omittable<int?>? voidAt, }) { return BankConnectionsResourceTransactionResourceStatusTransitions(
  postedAt: postedAt ?? this.postedAt,
  voidAt: voidAt ?? this.voidAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BankConnectionsResourceTransactionResourceStatusTransitions &&
          postedAt == other.postedAt &&
          voidAt == other.voidAt; } 
@override int get hashCode { return Object.hash(postedAt, voidAt); } 
@override String toString() { return 'BankConnectionsResourceTransactionResourceStatusTransitions(postedAt: $postedAt, voidAt: $voidAt)'; } 
 }
