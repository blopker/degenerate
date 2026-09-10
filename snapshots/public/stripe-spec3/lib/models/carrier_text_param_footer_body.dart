// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CarrierTextParamFooterBodyVariant2 {const CarrierTextParamFooterBodyVariant2._(this.value);

factory CarrierTextParamFooterBodyVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => CarrierTextParamFooterBodyVariant2._(json),
}; }

static const CarrierTextParamFooterBodyVariant2 $empty = CarrierTextParamFooterBodyVariant2._('');

static const List<CarrierTextParamFooterBodyVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CarrierTextParamFooterBodyVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CarrierTextParamFooterBodyVariant2($value)'; } 
 }

@immutable
final class CarrierTextParamFooterBody {
  const CarrierTextParamFooterBody({this.string = const Omittable.absent(),
this.carrierTextParamFooterBodyVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const CarrierTextParamFooterBody._({required this.rawValue, required this.string,
required this.carrierTextParamFooterBodyVariant2,});
  factory CarrierTextParamFooterBody.fromJson(Object? json) => CarrierTextParamFooterBody._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
carrierTextParamFooterBodyVariant2: parseAnyOfVariant<CarrierTextParamFooterBodyVariant2>(json, (value) => CarrierTextParamFooterBodyVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<CarrierTextParamFooterBodyVariant2> carrierTextParamFooterBodyVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || carrierTextParamFooterBodyVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (carrierTextParamFooterBodyVariant2.isPresent) carrierTextParamFooterBodyVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is CarrierTextParamFooterBody && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'CarrierTextParamFooterBody(${toJson()})';
}
