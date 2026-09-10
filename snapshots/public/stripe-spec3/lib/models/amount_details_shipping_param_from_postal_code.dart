// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AmountDetailsShippingParamFromPostalCodeVariant2 {const AmountDetailsShippingParamFromPostalCodeVariant2._(this.value);

factory AmountDetailsShippingParamFromPostalCodeVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => AmountDetailsShippingParamFromPostalCodeVariant2._(json),
};}

static const AmountDetailsShippingParamFromPostalCodeVariant2 $empty = AmountDetailsShippingParamFromPostalCodeVariant2._('');

static const List<AmountDetailsShippingParamFromPostalCodeVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is AmountDetailsShippingParamFromPostalCodeVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'AmountDetailsShippingParamFromPostalCodeVariant2($value)';}
}

@immutable
final class AmountDetailsShippingParamFromPostalCode {
  const AmountDetailsShippingParamFromPostalCode({this.string = const Omittable.absent(),
this.amountDetailsShippingParamFromPostalCodeVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const AmountDetailsShippingParamFromPostalCode._({required this.rawValue, required this.string,
required this.amountDetailsShippingParamFromPostalCodeVariant2,});
  factory AmountDetailsShippingParamFromPostalCode.fromJson(Object? json) => AmountDetailsShippingParamFromPostalCode._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
amountDetailsShippingParamFromPostalCodeVariant2: parseAnyOfVariant<AmountDetailsShippingParamFromPostalCodeVariant2>(json, (value) => AmountDetailsShippingParamFromPostalCodeVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<AmountDetailsShippingParamFromPostalCodeVariant2> amountDetailsShippingParamFromPostalCodeVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || amountDetailsShippingParamFromPostalCodeVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (amountDetailsShippingParamFromPostalCodeVariant2.isPresent) amountDetailsShippingParamFromPostalCodeVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is AmountDetailsShippingParamFromPostalCode && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'AmountDetailsShippingParamFromPostalCode(${toJson()})';
}
