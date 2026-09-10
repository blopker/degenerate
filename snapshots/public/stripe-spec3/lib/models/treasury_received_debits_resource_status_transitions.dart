// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class TreasuryReceivedDebitsResourceStatusTransitions {const TreasuryReceivedDebitsResourceStatusTransitions({this.completedAt = const Omittable.absent()});

factory TreasuryReceivedDebitsResourceStatusTransitions.fromJson(Map<String, dynamic> json) { return TreasuryReceivedDebitsResourceStatusTransitions(
  completedAt: json.containsKey('completed_at') ? Omittable(json['completed_at'] != null ? (json['completed_at'] as num).toInt() : null) : const Omittable.absent(),
); }

/// Timestamp describing when the DebitReversal changed status to `completed`.
final Omittable<int?> completedAt;

Map<String, dynamic> toJson() { return {
  if (completedAt.isPresent) 'completed_at': completedAt.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'completed_at'}.contains(key)); } 
TreasuryReceivedDebitsResourceStatusTransitions copyWith({Omittable<int?>? completedAt}) { return TreasuryReceivedDebitsResourceStatusTransitions(
  completedAt: completedAt ?? this.completedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TreasuryReceivedDebitsResourceStatusTransitions &&
          completedAt == other.completedAt; } 
@override int get hashCode { return completedAt.hashCode; } 
@override String toString() { return 'TreasuryReceivedDebitsResourceStatusTransitions(completedAt: $completedAt)'; } 
 }
