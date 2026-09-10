// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CarrierTextParamFooterTitleVariant2 {const CarrierTextParamFooterTitleVariant2._(this.value);

factory CarrierTextParamFooterTitleVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => CarrierTextParamFooterTitleVariant2._(json),
}; }

static const CarrierTextParamFooterTitleVariant2 $empty = CarrierTextParamFooterTitleVariant2._('');

static const List<CarrierTextParamFooterTitleVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CarrierTextParamFooterTitleVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CarrierTextParamFooterTitleVariant2($value)'; } 
 }

@immutable
final class CarrierTextParamFooterTitle {
  const CarrierTextParamFooterTitle({this.string = const Omittable.absent(),
this.carrierTextParamFooterTitleVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const CarrierTextParamFooterTitle._({required this.rawValue, required this.string,
required this.carrierTextParamFooterTitleVariant2,});
  factory CarrierTextParamFooterTitle.fromJson(Object? json) => CarrierTextParamFooterTitle._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
carrierTextParamFooterTitleVariant2: parseAnyOfVariant<CarrierTextParamFooterTitleVariant2>(json, (value) => CarrierTextParamFooterTitleVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<CarrierTextParamFooterTitleVariant2> carrierTextParamFooterTitleVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || carrierTextParamFooterTitleVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (carrierTextParamFooterTitleVariant2.isPresent) carrierTextParamFooterTitleVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is CarrierTextParamFooterTitle && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'CarrierTextParamFooterTitle(${toJson()})';
}
