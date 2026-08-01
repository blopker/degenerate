// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class QuotesResourceStatusTransitions {const QuotesResourceStatusTransitions({this.acceptedAt = const Omittable.absent(), this.canceledAt = const Omittable.absent(), this.finalizedAt = const Omittable.absent(), });

factory QuotesResourceStatusTransitions.fromJson(Map<String, dynamic> json) { return QuotesResourceStatusTransitions(
  acceptedAt: json.containsKey('accepted_at') ? Omittable(json['accepted_at'] != null ? (json['accepted_at'] as num).toInt() : null) : const Omittable.absent(),
  canceledAt: json.containsKey('canceled_at') ? Omittable(json['canceled_at'] != null ? (json['canceled_at'] as num).toInt() : null) : const Omittable.absent(),
  finalizedAt: json.containsKey('finalized_at') ? Omittable(json['finalized_at'] != null ? (json['finalized_at'] as num).toInt() : null) : const Omittable.absent(),
); }

/// The time that the quote was accepted. Measured in seconds since Unix epoch.
final Omittable<int?> acceptedAt;

/// The time that the quote was canceled. Measured in seconds since Unix epoch.
final Omittable<int?> canceledAt;

/// The time that the quote was finalized. Measured in seconds since Unix epoch.
final Omittable<int?> finalizedAt;

Map<String, dynamic> toJson() { return {
  if (acceptedAt.isPresent) 'accepted_at': acceptedAt.value,
  if (canceledAt.isPresent) 'canceled_at': canceledAt.value,
  if (finalizedAt.isPresent) 'finalized_at': finalizedAt.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'accepted_at', 'canceled_at', 'finalized_at'}.contains(key)); } 
QuotesResourceStatusTransitions copyWith({Omittable<int?>? acceptedAt, Omittable<int?>? canceledAt, Omittable<int?>? finalizedAt, }) { return QuotesResourceStatusTransitions(
  acceptedAt: acceptedAt ?? this.acceptedAt,
  canceledAt: canceledAt ?? this.canceledAt,
  finalizedAt: finalizedAt ?? this.finalizedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is QuotesResourceStatusTransitions &&
          acceptedAt == other.acceptedAt &&
          canceledAt == other.canceledAt &&
          finalizedAt == other.finalizedAt; } 
@override int get hashCode { return Object.hash(acceptedAt, canceledAt, finalizedAt); } 
@override String toString() { return 'QuotesResourceStatusTransitions(acceptedAt: $acceptedAt, canceledAt: $canceledAt, finalizedAt: $finalizedAt)'; } 
 }
