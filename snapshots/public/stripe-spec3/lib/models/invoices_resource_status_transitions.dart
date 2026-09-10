// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class InvoicesResourceStatusTransitions {const InvoicesResourceStatusTransitions({this.finalizedAt = const Omittable.absent(), this.markedUncollectibleAt = const Omittable.absent(), this.paidAt = const Omittable.absent(), this.voidedAt = const Omittable.absent(), });

factory InvoicesResourceStatusTransitions.fromJson(Map<String, dynamic> json) { return InvoicesResourceStatusTransitions(
  finalizedAt: json.containsKey('finalized_at') ? Omittable(json['finalized_at'] != null ? (json['finalized_at'] as num).toInt() : null) : const Omittable.absent(),
  markedUncollectibleAt: json.containsKey('marked_uncollectible_at') ? Omittable(json['marked_uncollectible_at'] != null ? (json['marked_uncollectible_at'] as num).toInt() : null) : const Omittable.absent(),
  paidAt: json.containsKey('paid_at') ? Omittable(json['paid_at'] != null ? (json['paid_at'] as num).toInt() : null) : const Omittable.absent(),
  voidedAt: json.containsKey('voided_at') ? Omittable(json['voided_at'] != null ? (json['voided_at'] as num).toInt() : null) : const Omittable.absent(),
); }

/// The time that the invoice draft was finalized.
final Omittable<int?> finalizedAt;

/// The time that the invoice was marked uncollectible.
final Omittable<int?> markedUncollectibleAt;

/// The time that the invoice was paid.
final Omittable<int?> paidAt;

/// The time that the invoice was voided.
final Omittable<int?> voidedAt;

Map<String, dynamic> toJson() { return {
  if (finalizedAt.isPresent) 'finalized_at': finalizedAt.value,
  if (markedUncollectibleAt.isPresent) 'marked_uncollectible_at': markedUncollectibleAt.value,
  if (paidAt.isPresent) 'paid_at': paidAt.value,
  if (voidedAt.isPresent) 'voided_at': voidedAt.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'finalized_at', 'marked_uncollectible_at', 'paid_at', 'voided_at'}.contains(key)); } 
InvoicesResourceStatusTransitions copyWith({Omittable<int?>? finalizedAt, Omittable<int?>? markedUncollectibleAt, Omittable<int?>? paidAt, Omittable<int?>? voidedAt, }) { return InvoicesResourceStatusTransitions(
  finalizedAt: finalizedAt ?? this.finalizedAt,
  markedUncollectibleAt: markedUncollectibleAt ?? this.markedUncollectibleAt,
  paidAt: paidAt ?? this.paidAt,
  voidedAt: voidedAt ?? this.voidedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InvoicesResourceStatusTransitions &&
          finalizedAt == other.finalizedAt &&
          markedUncollectibleAt == other.markedUncollectibleAt &&
          paidAt == other.paidAt &&
          voidedAt == other.voidedAt; } 
@override int get hashCode { return Object.hash(finalizedAt, markedUncollectibleAt, paidAt, voidedAt); } 
@override String toString() { return 'InvoicesResourceStatusTransitions(finalizedAt: $finalizedAt, markedUncollectibleAt: $markedUncollectibleAt, paidAt: $paidAt, voidedAt: $voidedAt)'; } 
 }
