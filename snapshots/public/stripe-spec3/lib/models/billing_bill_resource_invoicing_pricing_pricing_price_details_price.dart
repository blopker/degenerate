// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'price.dart';/// The ID of the price this item is associated with.
@immutable
final class BillingBillResourceInvoicingPricingPricingPriceDetailsPrice {
  const BillingBillResourceInvoicingPricingPricingPriceDetailsPrice({this.string = const Omittable.absent(),
this.price = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const BillingBillResourceInvoicingPricingPricingPriceDetailsPrice._({required this.rawValue, required this.string,
required this.price,});
  factory BillingBillResourceInvoicingPricingPricingPriceDetailsPrice.fromJson(Object? json) => BillingBillResourceInvoicingPricingPricingPriceDetailsPrice._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
price: parseAnyOfVariant<Price>(json, (value) => Price.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<Price> price;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || price.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (price.isPresent) price.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is BillingBillResourceInvoicingPricingPricingPriceDetailsPrice && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'BillingBillResourceInvoicingPricingPricingPriceDetailsPrice(${toJson()})';
}
