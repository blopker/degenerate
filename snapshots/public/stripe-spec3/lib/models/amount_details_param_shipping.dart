// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'amount_details_shipping_param2.dart';@immutable final class AmountDetailsParamShippingVariant2 {const AmountDetailsParamShippingVariant2._(this.value);

factory AmountDetailsParamShippingVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => AmountDetailsParamShippingVariant2._(json),
};}

static const AmountDetailsParamShippingVariant2 $empty = AmountDetailsParamShippingVariant2._('');

static const List<AmountDetailsParamShippingVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is AmountDetailsParamShippingVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'AmountDetailsParamShippingVariant2($value)';}
}

@immutable
final class AmountDetailsParamShipping {
  const AmountDetailsParamShipping({this.amountDetailsShippingParam2 = const Omittable.absent(),
this.amountDetailsParamShippingVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const AmountDetailsParamShipping._({required this.rawValue, required this.amountDetailsShippingParam2,
required this.amountDetailsParamShippingVariant2,});
  factory AmountDetailsParamShipping.fromJson(Object? json) => AmountDetailsParamShipping._(
    rawValue: Omittable(json),
    amountDetailsShippingParam2: parseAnyOfVariant<AmountDetailsShippingParam2>(json, (value) => AmountDetailsShippingParam2.fromJson(value! as Map<String, dynamic>)),
amountDetailsParamShippingVariant2: parseAnyOfVariant<AmountDetailsParamShippingVariant2>(json, (value) => AmountDetailsParamShippingVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<AmountDetailsShippingParam2> amountDetailsShippingParam2;
final Omittable<AmountDetailsParamShippingVariant2> amountDetailsParamShippingVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => amountDetailsShippingParam2.isPresent || amountDetailsParamShippingVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (amountDetailsShippingParam2.isPresent) amountDetailsShippingParam2.value?.toJson(),
if (amountDetailsParamShippingVariant2.isPresent) amountDetailsParamShippingVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is AmountDetailsParamShipping && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'AmountDetailsParamShipping(${toJson()})';
}
