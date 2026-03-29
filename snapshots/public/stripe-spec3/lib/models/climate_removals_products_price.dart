// GENERATED CODE - DO NOT MODIFY BY HAND

/// 
final class ClimateRemovalsProductsPrice {const ClimateRemovalsProductsPrice({required this.amountFees, required this.amountSubtotal, required this.amountTotal, });

factory ClimateRemovalsProductsPrice.fromJson(Map<String, dynamic> json) { return ClimateRemovalsProductsPrice(
  amountFees: (json['amount_fees'] as num).toInt(),
  amountSubtotal: (json['amount_subtotal'] as num).toInt(),
  amountTotal: (json['amount_total'] as num).toInt(),
); }

/// Fees for one metric ton of carbon removal in the currency's smallest unit.
final int amountFees;

/// Subtotal for one metric ton of carbon removal (excluding fees) in the currency's smallest unit.
final int amountSubtotal;

/// Total for one metric ton of carbon removal (including fees) in the currency's smallest unit.
final int amountTotal;

Map<String, dynamic> toJson() { return {
  'amount_fees': amountFees,
  'amount_subtotal': amountSubtotal,
  'amount_total': amountTotal,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('amount_fees') && json['amount_fees'] is num &&
      json.containsKey('amount_subtotal') && json['amount_subtotal'] is num &&
      json.containsKey('amount_total') && json['amount_total'] is num; } 
ClimateRemovalsProductsPrice copyWith({int? amountFees, int? amountSubtotal, int? amountTotal, }) { return ClimateRemovalsProductsPrice(
  amountFees: amountFees ?? this.amountFees,
  amountSubtotal: amountSubtotal ?? this.amountSubtotal,
  amountTotal: amountTotal ?? this.amountTotal,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ClimateRemovalsProductsPrice &&
          amountFees == other.amountFees &&
          amountSubtotal == other.amountSubtotal &&
          amountTotal == other.amountTotal; } 
@override int get hashCode { return Object.hash(amountFees, amountSubtotal, amountTotal); } 
@override String toString() { return 'ClimateRemovalsProductsPrice(amountFees: $amountFees, amountSubtotal: $amountSubtotal, amountTotal: $amountTotal)'; } 
 }
