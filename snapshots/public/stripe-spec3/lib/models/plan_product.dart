// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'deleted_product.dart';import 'product.dart';/// The product whose pricing this plan determines.
@immutable
final class PlanProduct {
  const PlanProduct({this.string = const Omittable.absent(),
this.product = const Omittable.absent(),
this.deletedProduct = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PlanProduct._({required this.rawValue, required this.string,
required this.product,
required this.deletedProduct,});
  factory PlanProduct.fromJson(Object? json) => PlanProduct._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
product: parseAnyOfVariant<Product>(json, (value) => Product.fromJson(value! as Map<String, dynamic>)),
deletedProduct: parseAnyOfVariant<DeletedProduct>(json, (value) => DeletedProduct.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<Product> product;
final Omittable<DeletedProduct> deletedProduct;

  /// Whether at least one known variant matched.
  bool get isValid => (rawValue.isPresent && rawValue.value == null) || string.isPresent || product.isPresent || deletedProduct.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (product.isPresent) product.value?.toJson(),
if (deletedProduct.isPresent) deletedProduct.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PlanProduct && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PlanProduct(${toJson()})';
}
