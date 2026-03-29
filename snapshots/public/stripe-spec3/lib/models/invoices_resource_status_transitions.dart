// GENERATED CODE - DO NOT MODIFY BY HAND

/// 
final class InvoicesResourceStatusTransitions {const InvoicesResourceStatusTransitions({this.finalizedAt, this.markedUncollectibleAt, this.paidAt, this.voidedAt, });

factory InvoicesResourceStatusTransitions.fromJson(Map<String, dynamic> json) { return InvoicesResourceStatusTransitions(
  finalizedAt: json['finalized_at'] != null ? (json['finalized_at'] as num).toInt() : null,
  markedUncollectibleAt: json['marked_uncollectible_at'] != null ? (json['marked_uncollectible_at'] as num).toInt() : null,
  paidAt: json['paid_at'] != null ? (json['paid_at'] as num).toInt() : null,
  voidedAt: json['voided_at'] != null ? (json['voided_at'] as num).toInt() : null,
); }

/// The time that the invoice draft was finalized.
final int? finalizedAt;

/// The time that the invoice was marked uncollectible.
final int? markedUncollectibleAt;

/// The time that the invoice was paid.
final int? paidAt;

/// The time that the invoice was voided.
final int? voidedAt;

Map<String, dynamic> toJson() { return {
  'finalized_at': ?finalizedAt,
  'marked_uncollectible_at': ?markedUncollectibleAt,
  'paid_at': ?paidAt,
  'voided_at': ?voidedAt,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'finalized_at', 'marked_uncollectible_at', 'paid_at', 'voided_at'}.contains(key)); } 
InvoicesResourceStatusTransitions copyWith({int? Function()? finalizedAt, int? Function()? markedUncollectibleAt, int? Function()? paidAt, int? Function()? voidedAt, }) { return InvoicesResourceStatusTransitions(
  finalizedAt: finalizedAt != null ? finalizedAt() : this.finalizedAt,
  markedUncollectibleAt: markedUncollectibleAt != null ? markedUncollectibleAt() : this.markedUncollectibleAt,
  paidAt: paidAt != null ? paidAt() : this.paidAt,
  voidedAt: voidedAt != null ? voidedAt() : this.voidedAt,
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
