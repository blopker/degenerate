// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'price.dart';/// The ID of the [Price](https://docs.stripe.com/api/prices) object that is the default price for this product.
@immutable
final class ProductDefaultPrice {
  const ProductDefaultPrice({this.string = const Omittable.absent(),
this.price = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const ProductDefaultPrice._({required this.rawValue, required this.string,
required this.price,});
  factory ProductDefaultPrice.fromJson(Object? json) => ProductDefaultPrice._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
price: parseAnyOfVariant<Price>(json, (value) => Price.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<Price> price;

  /// Whether at least one known variant matched.
  bool get isValid => (rawValue.isPresent && rawValue.value == null) || string.isPresent || price.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (price.isPresent) price.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is ProductDefaultPrice && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'ProductDefaultPrice(${toJson()})';
}
