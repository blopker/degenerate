// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AmountDetailsShippingParam3ToPostalCodeVariant2 {const AmountDetailsShippingParam3ToPostalCodeVariant2._(this.value);

factory AmountDetailsShippingParam3ToPostalCodeVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => AmountDetailsShippingParam3ToPostalCodeVariant2._(json),
}; }

static const AmountDetailsShippingParam3ToPostalCodeVariant2 $empty = AmountDetailsShippingParam3ToPostalCodeVariant2._('');

static const List<AmountDetailsShippingParam3ToPostalCodeVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AmountDetailsShippingParam3ToPostalCodeVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AmountDetailsShippingParam3ToPostalCodeVariant2($value)'; } 
 }

@immutable
final class AmountDetailsShippingParam3ToPostalCode {
  const AmountDetailsShippingParam3ToPostalCode({this.string = const Omittable.absent(),
this.amountDetailsShippingParam3ToPostalCodeVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const AmountDetailsShippingParam3ToPostalCode._({required this.rawValue, required this.string,
required this.amountDetailsShippingParam3ToPostalCodeVariant2,});
  factory AmountDetailsShippingParam3ToPostalCode.fromJson(Object? json) => AmountDetailsShippingParam3ToPostalCode._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
amountDetailsShippingParam3ToPostalCodeVariant2: parseAnyOfVariant<AmountDetailsShippingParam3ToPostalCodeVariant2>(json, (value) => AmountDetailsShippingParam3ToPostalCodeVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<AmountDetailsShippingParam3ToPostalCodeVariant2> amountDetailsShippingParam3ToPostalCodeVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || amountDetailsShippingParam3ToPostalCodeVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (amountDetailsShippingParam3ToPostalCodeVariant2.isPresent) amountDetailsShippingParam3ToPostalCodeVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is AmountDetailsShippingParam3ToPostalCode && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'AmountDetailsShippingParam3ToPostalCode(${toJson()})';
}
