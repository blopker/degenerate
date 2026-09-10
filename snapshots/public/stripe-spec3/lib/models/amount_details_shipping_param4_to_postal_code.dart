// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AmountDetailsShippingParam4ToPostalCodeVariant2 {const AmountDetailsShippingParam4ToPostalCodeVariant2._(this.value);

factory AmountDetailsShippingParam4ToPostalCodeVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => AmountDetailsShippingParam4ToPostalCodeVariant2._(json),
};}

static const AmountDetailsShippingParam4ToPostalCodeVariant2 $empty = AmountDetailsShippingParam4ToPostalCodeVariant2._('');

static const List<AmountDetailsShippingParam4ToPostalCodeVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is AmountDetailsShippingParam4ToPostalCodeVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'AmountDetailsShippingParam4ToPostalCodeVariant2($value)';}
}

@immutable
final class AmountDetailsShippingParam4ToPostalCode {
  const AmountDetailsShippingParam4ToPostalCode({this.string = const Omittable.absent(),
this.amountDetailsShippingParam4ToPostalCodeVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const AmountDetailsShippingParam4ToPostalCode._({required this.rawValue, required this.string,
required this.amountDetailsShippingParam4ToPostalCodeVariant2,});
  factory AmountDetailsShippingParam4ToPostalCode.fromJson(Object? json) => AmountDetailsShippingParam4ToPostalCode._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
amountDetailsShippingParam4ToPostalCodeVariant2: parseAnyOfVariant<AmountDetailsShippingParam4ToPostalCodeVariant2>(json, (value) => AmountDetailsShippingParam4ToPostalCodeVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<AmountDetailsShippingParam4ToPostalCodeVariant2> amountDetailsShippingParam4ToPostalCodeVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || amountDetailsShippingParam4ToPostalCodeVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (amountDetailsShippingParam4ToPostalCodeVariant2.isPresent) amountDetailsShippingParam4ToPostalCodeVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is AmountDetailsShippingParam4ToPostalCode && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'AmountDetailsShippingParam4ToPostalCode(${toJson()})';
}
