// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AmountDetailsShippingParam3FromPostalCodeVariant2 {const AmountDetailsShippingParam3FromPostalCodeVariant2._(this.value);

factory AmountDetailsShippingParam3FromPostalCodeVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => AmountDetailsShippingParam3FromPostalCodeVariant2._(json),
}; }

static const AmountDetailsShippingParam3FromPostalCodeVariant2 $empty = AmountDetailsShippingParam3FromPostalCodeVariant2._('');

static const List<AmountDetailsShippingParam3FromPostalCodeVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AmountDetailsShippingParam3FromPostalCodeVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AmountDetailsShippingParam3FromPostalCodeVariant2($value)'; } 
 }

@immutable
final class AmountDetailsShippingParam3FromPostalCode {
  const AmountDetailsShippingParam3FromPostalCode({this.string = const Omittable.absent(),
this.amountDetailsShippingParam3FromPostalCodeVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const AmountDetailsShippingParam3FromPostalCode._({required this.rawValue, required this.string,
required this.amountDetailsShippingParam3FromPostalCodeVariant2,});
  factory AmountDetailsShippingParam3FromPostalCode.fromJson(Object? json) => AmountDetailsShippingParam3FromPostalCode._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
amountDetailsShippingParam3FromPostalCodeVariant2: parseAnyOfVariant<AmountDetailsShippingParam3FromPostalCodeVariant2>(json, (value) => AmountDetailsShippingParam3FromPostalCodeVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<AmountDetailsShippingParam3FromPostalCodeVariant2> amountDetailsShippingParam3FromPostalCodeVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || amountDetailsShippingParam3FromPostalCodeVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (amountDetailsShippingParam3FromPostalCodeVariant2.isPresent) amountDetailsShippingParam3FromPostalCodeVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is AmountDetailsShippingParam3FromPostalCode && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'AmountDetailsShippingParam3FromPostalCode(${toJson()})';
}
