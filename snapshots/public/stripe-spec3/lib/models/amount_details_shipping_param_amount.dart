// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AmountDetailsShippingParamAmountVariant2 {const AmountDetailsShippingParamAmountVariant2._(this.value);

factory AmountDetailsShippingParamAmountVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => AmountDetailsShippingParamAmountVariant2._(json),
}; }

static const AmountDetailsShippingParamAmountVariant2 $empty = AmountDetailsShippingParamAmountVariant2._('');

static const List<AmountDetailsShippingParamAmountVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AmountDetailsShippingParamAmountVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AmountDetailsShippingParamAmountVariant2($value)'; } 
 }

@immutable
final class AmountDetailsShippingParamAmount {
  const AmountDetailsShippingParamAmount({this.$int = const Omittable.absent(),
this.amountDetailsShippingParamAmountVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const AmountDetailsShippingParamAmount._({required this.rawValue, required this.$int,
required this.amountDetailsShippingParamAmountVariant2,});
  factory AmountDetailsShippingParamAmount.fromJson(Object? json) => AmountDetailsShippingParamAmount._(
    rawValue: Omittable(json),
    $int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
amountDetailsShippingParamAmountVariant2: parseAnyOfVariant<AmountDetailsShippingParamAmountVariant2>(json, (value) => AmountDetailsShippingParamAmountVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<int> $int;
final Omittable<AmountDetailsShippingParamAmountVariant2> amountDetailsShippingParamAmountVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $int.isPresent || amountDetailsShippingParamAmountVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($int.isPresent) $int.value,
if (amountDetailsShippingParamAmountVariant2.isPresent) amountDetailsShippingParamAmountVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is AmountDetailsShippingParamAmount && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'AmountDetailsShippingParamAmount(${toJson()})';
}
