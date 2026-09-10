// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AmountDetailsShippingParam2AmountVariant2 {const AmountDetailsShippingParam2AmountVariant2._(this.value);

factory AmountDetailsShippingParam2AmountVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => AmountDetailsShippingParam2AmountVariant2._(json),
}; }

static const AmountDetailsShippingParam2AmountVariant2 $empty = AmountDetailsShippingParam2AmountVariant2._('');

static const List<AmountDetailsShippingParam2AmountVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AmountDetailsShippingParam2AmountVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AmountDetailsShippingParam2AmountVariant2($value)'; } 
 }

@immutable
final class AmountDetailsShippingParam2Amount {
  const AmountDetailsShippingParam2Amount({this.$int = const Omittable.absent(),
this.amountDetailsShippingParam2AmountVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const AmountDetailsShippingParam2Amount._({required this.rawValue, required this.$int,
required this.amountDetailsShippingParam2AmountVariant2,});
  factory AmountDetailsShippingParam2Amount.fromJson(Object? json) => AmountDetailsShippingParam2Amount._(
    rawValue: Omittable(json),
    $int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
amountDetailsShippingParam2AmountVariant2: parseAnyOfVariant<AmountDetailsShippingParam2AmountVariant2>(json, (value) => AmountDetailsShippingParam2AmountVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<int> $int;
final Omittable<AmountDetailsShippingParam2AmountVariant2> amountDetailsShippingParam2AmountVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $int.isPresent || amountDetailsShippingParam2AmountVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($int.isPresent) $int.value,
if (amountDetailsShippingParam2AmountVariant2.isPresent) amountDetailsShippingParam2AmountVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is AmountDetailsShippingParam2Amount && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'AmountDetailsShippingParam2Amount(${toJson()})';
}
