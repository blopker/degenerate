// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AmountDetailsParam2DiscountAmountVariant2 {const AmountDetailsParam2DiscountAmountVariant2._(this.value);

factory AmountDetailsParam2DiscountAmountVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => AmountDetailsParam2DiscountAmountVariant2._(json),
}; }

static const AmountDetailsParam2DiscountAmountVariant2 $empty = AmountDetailsParam2DiscountAmountVariant2._('');

static const List<AmountDetailsParam2DiscountAmountVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AmountDetailsParam2DiscountAmountVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AmountDetailsParam2DiscountAmountVariant2($value)'; } 
 }

@immutable
final class AmountDetailsParam2DiscountAmount {
  const AmountDetailsParam2DiscountAmount({this.$int = const Omittable.absent(),
this.amountDetailsParam2DiscountAmountVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const AmountDetailsParam2DiscountAmount._({required this.rawValue, required this.$int,
required this.amountDetailsParam2DiscountAmountVariant2,});
  factory AmountDetailsParam2DiscountAmount.fromJson(Object? json) => AmountDetailsParam2DiscountAmount._(
    rawValue: Omittable(json),
    $int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
amountDetailsParam2DiscountAmountVariant2: parseAnyOfVariant<AmountDetailsParam2DiscountAmountVariant2>(json, (value) => AmountDetailsParam2DiscountAmountVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<int> $int;
final Omittable<AmountDetailsParam2DiscountAmountVariant2> amountDetailsParam2DiscountAmountVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $int.isPresent || amountDetailsParam2DiscountAmountVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($int.isPresent) $int.value,
if (amountDetailsParam2DiscountAmountVariant2.isPresent) amountDetailsParam2DiscountAmountVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is AmountDetailsParam2DiscountAmount && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'AmountDetailsParam2DiscountAmount(${toJson()})';
}
