// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PaymentFlowsAmountDetailsResourceTax {const PaymentFlowsAmountDetailsResourceTax({this.totalTaxAmount = const Omittable.absent()});

factory PaymentFlowsAmountDetailsResourceTax.fromJson(Map<String, dynamic> json) { return PaymentFlowsAmountDetailsResourceTax(
  totalTaxAmount: json.containsKey('total_tax_amount') ? Omittable(json['total_tax_amount'] != null ? (json['total_tax_amount'] as num).toInt() : null) : const Omittable.absent(),
); }

/// The total amount of tax on the transaction represented in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal). Required for L2 rates. An integer greater than or equal to 0.
/// 
/// This field is mutually exclusive with the `amount_details[line_items][#][tax][total_tax_amount]` field.
final Omittable<int?> totalTaxAmount;

Map<String, dynamic> toJson() { return {
  if (totalTaxAmount.isPresent) 'total_tax_amount': totalTaxAmount.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'total_tax_amount'}.contains(key)); } 
PaymentFlowsAmountDetailsResourceTax copyWith({Omittable<int?>? totalTaxAmount}) { return PaymentFlowsAmountDetailsResourceTax(
  totalTaxAmount: totalTaxAmount ?? this.totalTaxAmount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentFlowsAmountDetailsResourceTax &&
          totalTaxAmount == other.totalTaxAmount; } 
@override int get hashCode { return totalTaxAmount.hashCode; } 
@override String toString() { return 'PaymentFlowsAmountDetailsResourceTax(totalTaxAmount: $totalTaxAmount)'; } 
 }
