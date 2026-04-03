// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTaxCalculationsRequestShippingCostTaxBehavior {const PostTaxCalculationsRequestShippingCostTaxBehavior._(this.value);

factory PostTaxCalculationsRequestShippingCostTaxBehavior.fromJson(String json) { return switch (json) {
  'exclusive' => exclusive,
  'inclusive' => inclusive,
  _ => PostTaxCalculationsRequestShippingCostTaxBehavior._(json),
}; }

static const PostTaxCalculationsRequestShippingCostTaxBehavior exclusive = PostTaxCalculationsRequestShippingCostTaxBehavior._('exclusive');

static const PostTaxCalculationsRequestShippingCostTaxBehavior inclusive = PostTaxCalculationsRequestShippingCostTaxBehavior._('inclusive');

static const List<PostTaxCalculationsRequestShippingCostTaxBehavior> values = [exclusive, inclusive];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTaxCalculationsRequestShippingCostTaxBehavior && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTaxCalculationsRequestShippingCostTaxBehavior($value)'; } 
 }
/// Shipping cost details to be used for the calculation.
@immutable final class PostTaxCalculationsRequestShippingCost {const PostTaxCalculationsRequestShippingCost({this.amount, this.shippingRate, this.taxBehavior, this.taxCode, });

factory PostTaxCalculationsRequestShippingCost.fromJson(Map<String, dynamic> json) { return PostTaxCalculationsRequestShippingCost(
  amount: json['amount'] != null ? (json['amount'] as num).toInt() : null,
  shippingRate: json['shipping_rate'] as String?,
  taxBehavior: json['tax_behavior'] != null ? PostTaxCalculationsRequestShippingCostTaxBehavior.fromJson(json['tax_behavior'] as String) : null,
  taxCode: json['tax_code'] as String?,
); }

final int? amount;

final String? shippingRate;

final PostTaxCalculationsRequestShippingCostTaxBehavior? taxBehavior;

final String? taxCode;

Map<String, dynamic> toJson() { return {
  'amount': ?amount,
  'shipping_rate': ?shippingRate,
  if (taxBehavior != null) 'tax_behavior': taxBehavior?.toJson(),
  'tax_code': ?taxCode,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'amount', 'shipping_rate', 'tax_behavior', 'tax_code'}.contains(key)); } 
PostTaxCalculationsRequestShippingCost copyWith({int Function()? amount, String Function()? shippingRate, PostTaxCalculationsRequestShippingCostTaxBehavior Function()? taxBehavior, String Function()? taxCode, }) { return PostTaxCalculationsRequestShippingCost(
  amount: amount != null ? amount() : this.amount,
  shippingRate: shippingRate != null ? shippingRate() : this.shippingRate,
  taxBehavior: taxBehavior != null ? taxBehavior() : this.taxBehavior,
  taxCode: taxCode != null ? taxCode() : this.taxCode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTaxCalculationsRequestShippingCost &&
          amount == other.amount &&
          shippingRate == other.shippingRate &&
          taxBehavior == other.taxBehavior &&
          taxCode == other.taxCode; } 
@override int get hashCode { return Object.hash(amount, shippingRate, taxBehavior, taxCode); } 
@override String toString() { return 'PostTaxCalculationsRequestShippingCost(amount: $amount, shippingRate: $shippingRate, taxBehavior: $taxBehavior, taxCode: $taxCode)'; } 
 }
