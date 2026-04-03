// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AmountDetailsTaxParam {const AmountDetailsTaxParam({required this.totalTaxAmount});

factory AmountDetailsTaxParam.fromJson(Map<String, dynamic> json) { return AmountDetailsTaxParam(
  totalTaxAmount: (json['total_tax_amount'] as num).toInt(),
); }

final int totalTaxAmount;

Map<String, dynamic> toJson() { return {
  'total_tax_amount': totalTaxAmount,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('total_tax_amount') && json['total_tax_amount'] is num; } 
AmountDetailsTaxParam copyWith({int? totalTaxAmount}) { return AmountDetailsTaxParam(
  totalTaxAmount: totalTaxAmount ?? this.totalTaxAmount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AmountDetailsTaxParam &&
          totalTaxAmount == other.totalTaxAmount; } 
@override int get hashCode { return totalTaxAmount.hashCode; } 
@override String toString() { return 'AmountDetailsTaxParam(totalTaxAmount: $totalTaxAmount)'; } 
 }
