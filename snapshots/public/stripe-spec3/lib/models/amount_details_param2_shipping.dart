// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'amount_details_shipping_param4.dart';@immutable final class AmountDetailsParam2ShippingVariant2 {const AmountDetailsParam2ShippingVariant2._(this.value);

factory AmountDetailsParam2ShippingVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => AmountDetailsParam2ShippingVariant2._(json),
}; }

static const AmountDetailsParam2ShippingVariant2 $empty = AmountDetailsParam2ShippingVariant2._('');

static const List<AmountDetailsParam2ShippingVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AmountDetailsParam2ShippingVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AmountDetailsParam2ShippingVariant2($value)'; } 
 }

@immutable
final class AmountDetailsParam2Shipping {
  const AmountDetailsParam2Shipping({this.amountDetailsShippingParam4 = const Omittable.absent(),
this.amountDetailsParam2ShippingVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const AmountDetailsParam2Shipping._({required this.rawValue, required this.amountDetailsShippingParam4,
required this.amountDetailsParam2ShippingVariant2,});
  factory AmountDetailsParam2Shipping.fromJson(Object? json) => AmountDetailsParam2Shipping._(
    rawValue: Omittable(json),
    amountDetailsShippingParam4: parseAnyOfVariant<AmountDetailsShippingParam4>(json, (value) => AmountDetailsShippingParam4.fromJson(value! as Map<String, dynamic>)),
amountDetailsParam2ShippingVariant2: parseAnyOfVariant<AmountDetailsParam2ShippingVariant2>(json, (value) => AmountDetailsParam2ShippingVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<AmountDetailsShippingParam4> amountDetailsShippingParam4;
final Omittable<AmountDetailsParam2ShippingVariant2> amountDetailsParam2ShippingVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => amountDetailsShippingParam4.isPresent || amountDetailsParam2ShippingVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (amountDetailsShippingParam4.isPresent) amountDetailsShippingParam4.value?.toJson(),
if (amountDetailsParam2ShippingVariant2.isPresent) amountDetailsParam2ShippingVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is AmountDetailsParam2Shipping && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'AmountDetailsParam2Shipping(${toJson()})';
}
