// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AmountDetailsShippingParam5FromPostalCodeVariant2 {const AmountDetailsShippingParam5FromPostalCodeVariant2._(this.value);

factory AmountDetailsShippingParam5FromPostalCodeVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => AmountDetailsShippingParam5FromPostalCodeVariant2._(json),
}; }

static const AmountDetailsShippingParam5FromPostalCodeVariant2 $empty = AmountDetailsShippingParam5FromPostalCodeVariant2._('');

static const List<AmountDetailsShippingParam5FromPostalCodeVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AmountDetailsShippingParam5FromPostalCodeVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AmountDetailsShippingParam5FromPostalCodeVariant2($value)'; } 
 }

@immutable
final class AmountDetailsShippingParam5FromPostalCode {
  const AmountDetailsShippingParam5FromPostalCode({this.string = const Omittable.absent(),
this.amountDetailsShippingParam5FromPostalCodeVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const AmountDetailsShippingParam5FromPostalCode._({required this.rawValue, required this.string,
required this.amountDetailsShippingParam5FromPostalCodeVariant2,});
  factory AmountDetailsShippingParam5FromPostalCode.fromJson(Object? json) => AmountDetailsShippingParam5FromPostalCode._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
amountDetailsShippingParam5FromPostalCodeVariant2: parseAnyOfVariant<AmountDetailsShippingParam5FromPostalCodeVariant2>(json, (value) => AmountDetailsShippingParam5FromPostalCodeVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<AmountDetailsShippingParam5FromPostalCodeVariant2> amountDetailsShippingParam5FromPostalCodeVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || amountDetailsShippingParam5FromPostalCodeVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (amountDetailsShippingParam5FromPostalCodeVariant2.isPresent) amountDetailsShippingParam5FromPostalCodeVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is AmountDetailsShippingParam5FromPostalCode && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'AmountDetailsShippingParam5FromPostalCode(${toJson()})';
}
