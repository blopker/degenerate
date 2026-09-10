// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tax_code.dart';/// A [tax code](https://docs.stripe.com/tax/tax-categories) ID.
@immutable
final class ProductTaxCode {
  const ProductTaxCode({this.string = const Omittable.absent(),
this.taxCode = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const ProductTaxCode._({required this.rawValue, required this.string,
required this.taxCode,});
  factory ProductTaxCode.fromJson(Object? json) => ProductTaxCode._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
taxCode: parseAnyOfVariant<TaxCode>(json, (value) => TaxCode.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<TaxCode> taxCode;

  /// Whether at least one known variant matched.
  bool get isValid => (rawValue.isPresent && rawValue.value == null) || string.isPresent || taxCode.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (taxCode.isPresent) taxCode.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is ProductTaxCode && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'ProductTaxCode(${toJson()})';
}
