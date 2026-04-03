// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostInvoicesRequestShippingCostShippingRateDataFixedAmountCurrencyOptionsValueTaxBehavior {const PostInvoicesRequestShippingCostShippingRateDataFixedAmountCurrencyOptionsValueTaxBehavior._(this.value);

factory PostInvoicesRequestShippingCostShippingRateDataFixedAmountCurrencyOptionsValueTaxBehavior.fromJson(String json) { return switch (json) {
  'exclusive' => exclusive,
  'inclusive' => inclusive,
  'unspecified' => unspecified,
  _ => PostInvoicesRequestShippingCostShippingRateDataFixedAmountCurrencyOptionsValueTaxBehavior._(json),
}; }

static const PostInvoicesRequestShippingCostShippingRateDataFixedAmountCurrencyOptionsValueTaxBehavior exclusive = PostInvoicesRequestShippingCostShippingRateDataFixedAmountCurrencyOptionsValueTaxBehavior._('exclusive');

static const PostInvoicesRequestShippingCostShippingRateDataFixedAmountCurrencyOptionsValueTaxBehavior inclusive = PostInvoicesRequestShippingCostShippingRateDataFixedAmountCurrencyOptionsValueTaxBehavior._('inclusive');

static const PostInvoicesRequestShippingCostShippingRateDataFixedAmountCurrencyOptionsValueTaxBehavior unspecified = PostInvoicesRequestShippingCostShippingRateDataFixedAmountCurrencyOptionsValueTaxBehavior._('unspecified');

static const List<PostInvoicesRequestShippingCostShippingRateDataFixedAmountCurrencyOptionsValueTaxBehavior> values = [exclusive, inclusive, unspecified];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesRequestShippingCostShippingRateDataFixedAmountCurrencyOptionsValueTaxBehavior && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesRequestShippingCostShippingRateDataFixedAmountCurrencyOptionsValueTaxBehavior($value)'; } 
 }
@immutable final class PostInvoicesRequestShippingCostShippingRateDataFixedAmountCurrencyOptionsValue {const PostInvoicesRequestShippingCostShippingRateDataFixedAmountCurrencyOptionsValue({required this.amount, this.taxBehavior, });

factory PostInvoicesRequestShippingCostShippingRateDataFixedAmountCurrencyOptionsValue.fromJson(Map<String, dynamic> json) { return PostInvoicesRequestShippingCostShippingRateDataFixedAmountCurrencyOptionsValue(
  amount: (json['amount'] as num).toInt(),
  taxBehavior: json['tax_behavior'] != null ? PostInvoicesRequestShippingCostShippingRateDataFixedAmountCurrencyOptionsValueTaxBehavior.fromJson(json['tax_behavior'] as String) : null,
); }

final int amount;

final PostInvoicesRequestShippingCostShippingRateDataFixedAmountCurrencyOptionsValueTaxBehavior? taxBehavior;

Map<String, dynamic> toJson() { return {
  'amount': amount,
  if (taxBehavior != null) 'tax_behavior': taxBehavior?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('amount') && json['amount'] is num; } 
PostInvoicesRequestShippingCostShippingRateDataFixedAmountCurrencyOptionsValue copyWith({int? amount, PostInvoicesRequestShippingCostShippingRateDataFixedAmountCurrencyOptionsValueTaxBehavior Function()? taxBehavior, }) { return PostInvoicesRequestShippingCostShippingRateDataFixedAmountCurrencyOptionsValue(
  amount: amount ?? this.amount,
  taxBehavior: taxBehavior != null ? taxBehavior() : this.taxBehavior,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostInvoicesRequestShippingCostShippingRateDataFixedAmountCurrencyOptionsValue &&
          amount == other.amount &&
          taxBehavior == other.taxBehavior; } 
@override int get hashCode { return Object.hash(amount, taxBehavior); } 
@override String toString() { return 'PostInvoicesRequestShippingCostShippingRateDataFixedAmountCurrencyOptionsValue(amount: $amount, taxBehavior: $taxBehavior)'; } 
 }
