// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'amount_details_tax_param4.dart';@immutable final class AmountDetailsParam2TaxVariant2 {const AmountDetailsParam2TaxVariant2._(this.value);

factory AmountDetailsParam2TaxVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => AmountDetailsParam2TaxVariant2._(json),
}; }

static const AmountDetailsParam2TaxVariant2 $empty = AmountDetailsParam2TaxVariant2._('');

static const List<AmountDetailsParam2TaxVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AmountDetailsParam2TaxVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AmountDetailsParam2TaxVariant2($value)'; } 
 }

@immutable
final class AmountDetailsParam2Tax {
  const AmountDetailsParam2Tax({this.amountDetailsTaxParam4 = const Omittable.absent(),
this.amountDetailsParam2TaxVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const AmountDetailsParam2Tax._({required this.rawValue, required this.amountDetailsTaxParam4,
required this.amountDetailsParam2TaxVariant2,});
  factory AmountDetailsParam2Tax.fromJson(Object? json) => AmountDetailsParam2Tax._(
    rawValue: Omittable(json),
    amountDetailsTaxParam4: parseAnyOfVariant<AmountDetailsTaxParam4>(json, (value) => AmountDetailsTaxParam4.fromJson(value! as Map<String, dynamic>)),
amountDetailsParam2TaxVariant2: parseAnyOfVariant<AmountDetailsParam2TaxVariant2>(json, (value) => AmountDetailsParam2TaxVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<AmountDetailsTaxParam4> amountDetailsTaxParam4;
final Omittable<AmountDetailsParam2TaxVariant2> amountDetailsParam2TaxVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => amountDetailsTaxParam4.isPresent || amountDetailsParam2TaxVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (amountDetailsTaxParam4.isPresent) amountDetailsTaxParam4.value?.toJson(),
if (amountDetailsParam2TaxVariant2.isPresent) amountDetailsParam2TaxVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is AmountDetailsParam2Tax && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'AmountDetailsParam2Tax(${toJson()})';
}
