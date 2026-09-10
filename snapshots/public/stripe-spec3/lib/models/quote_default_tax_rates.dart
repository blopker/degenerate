// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tax_rate.dart';
@immutable
final class QuoteDefaultTaxRates {
  const QuoteDefaultTaxRates({this.string = const Omittable.absent(),
this.taxRate = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const QuoteDefaultTaxRates._({required this.rawValue, required this.string,
required this.taxRate,});
  factory QuoteDefaultTaxRates.fromJson(Object? json) => QuoteDefaultTaxRates._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
taxRate: parseAnyOfVariant<TaxRate>(json, (value) => TaxRate.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<TaxRate> taxRate;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || taxRate.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (taxRate.isPresent) taxRate.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is QuoteDefaultTaxRates && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'QuoteDefaultTaxRates(${toJson()})';
}
