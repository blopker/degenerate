// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AmountDetailsShippingParam5ToPostalCodeVariant2 {const AmountDetailsShippingParam5ToPostalCodeVariant2._(this.value);

factory AmountDetailsShippingParam5ToPostalCodeVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => AmountDetailsShippingParam5ToPostalCodeVariant2._(json),
};}

static const AmountDetailsShippingParam5ToPostalCodeVariant2 $empty = AmountDetailsShippingParam5ToPostalCodeVariant2._('');

static const List<AmountDetailsShippingParam5ToPostalCodeVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is AmountDetailsShippingParam5ToPostalCodeVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'AmountDetailsShippingParam5ToPostalCodeVariant2($value)';}
}

@immutable
final class AmountDetailsShippingParam5ToPostalCode {
  const AmountDetailsShippingParam5ToPostalCode({this.string = const Omittable.absent(),
this.amountDetailsShippingParam5ToPostalCodeVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const AmountDetailsShippingParam5ToPostalCode._({required this.rawValue, required this.string,
required this.amountDetailsShippingParam5ToPostalCodeVariant2,});
  factory AmountDetailsShippingParam5ToPostalCode.fromJson(Object? json) => AmountDetailsShippingParam5ToPostalCode._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
amountDetailsShippingParam5ToPostalCodeVariant2: parseAnyOfVariant<AmountDetailsShippingParam5ToPostalCodeVariant2>(json, (value) => AmountDetailsShippingParam5ToPostalCodeVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<AmountDetailsShippingParam5ToPostalCodeVariant2> amountDetailsShippingParam5ToPostalCodeVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || amountDetailsShippingParam5ToPostalCodeVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (amountDetailsShippingParam5ToPostalCodeVariant2.isPresent) amountDetailsShippingParam5ToPostalCodeVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is AmountDetailsShippingParam5ToPostalCode && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'AmountDetailsShippingParam5ToPostalCode(${toJson()})';
}
