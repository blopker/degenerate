// GENERATED CODE - DO NOT MODIFY BY HAND

final class AmountDetailsTaxParam5 {const AmountDetailsTaxParam5({required this.totalTaxAmount});

factory AmountDetailsTaxParam5.fromJson(Map<String, dynamic> json) { return AmountDetailsTaxParam5(
  totalTaxAmount: (json['total_tax_amount'] as num).toInt(),
); }

final int totalTaxAmount;

Map<String, dynamic> toJson() { return {
  'total_tax_amount': totalTaxAmount,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('total_tax_amount') && json['total_tax_amount'] is num; } 
AmountDetailsTaxParam5 copyWith({int? totalTaxAmount}) { return AmountDetailsTaxParam5(
  totalTaxAmount: totalTaxAmount ?? this.totalTaxAmount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AmountDetailsTaxParam5 &&
          totalTaxAmount == other.totalTaxAmount; } 
@override int get hashCode { return totalTaxAmount.hashCode; } 
@override String toString() { return 'AmountDetailsTaxParam5(totalTaxAmount: $totalTaxAmount)'; } 
 }
