// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentIntentsRequestAmountDetailsLineItemsVariant1Tax {const PostPaymentIntentsRequestAmountDetailsLineItemsVariant1Tax({required this.totalTaxAmount});

factory PostPaymentIntentsRequestAmountDetailsLineItemsVariant1Tax.fromJson(Map<String, dynamic> json) { return PostPaymentIntentsRequestAmountDetailsLineItemsVariant1Tax(
  totalTaxAmount: (json['total_tax_amount'] as num).toInt(),
); }

final int totalTaxAmount;

Map<String, dynamic> toJson() { return {
  'total_tax_amount': totalTaxAmount,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('total_tax_amount') && json['total_tax_amount'] is num; } 
PostPaymentIntentsRequestAmountDetailsLineItemsVariant1Tax copyWith({int? totalTaxAmount}) { return PostPaymentIntentsRequestAmountDetailsLineItemsVariant1Tax(
  totalTaxAmount: totalTaxAmount ?? this.totalTaxAmount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentIntentsRequestAmountDetailsLineItemsVariant1Tax &&
          totalTaxAmount == other.totalTaxAmount; } 
@override int get hashCode { return totalTaxAmount.hashCode; } 
@override String toString() { return 'PostPaymentIntentsRequestAmountDetailsLineItemsVariant1Tax(totalTaxAmount: $totalTaxAmount)'; } 
 }
