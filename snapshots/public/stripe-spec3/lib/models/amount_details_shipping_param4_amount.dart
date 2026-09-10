// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AmountDetailsShippingParam4AmountVariant2 {const AmountDetailsShippingParam4AmountVariant2._(this.value);

factory AmountDetailsShippingParam4AmountVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => AmountDetailsShippingParam4AmountVariant2._(json),
};}

static const AmountDetailsShippingParam4AmountVariant2 $empty = AmountDetailsShippingParam4AmountVariant2._('');

static const List<AmountDetailsShippingParam4AmountVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is AmountDetailsShippingParam4AmountVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'AmountDetailsShippingParam4AmountVariant2($value)';}
}

@immutable
final class AmountDetailsShippingParam4Amount {
  const AmountDetailsShippingParam4Amount({this.$int = const Omittable.absent(),
this.amountDetailsShippingParam4AmountVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const AmountDetailsShippingParam4Amount._({required this.rawValue, required this.$int,
required this.amountDetailsShippingParam4AmountVariant2,});
  factory AmountDetailsShippingParam4Amount.fromJson(Object? json) => AmountDetailsShippingParam4Amount._(
    rawValue: Omittable(json),
    $int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
amountDetailsShippingParam4AmountVariant2: parseAnyOfVariant<AmountDetailsShippingParam4AmountVariant2>(json, (value) => AmountDetailsShippingParam4AmountVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<int> $int;
final Omittable<AmountDetailsShippingParam4AmountVariant2> amountDetailsShippingParam4AmountVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $int.isPresent || amountDetailsShippingParam4AmountVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($int.isPresent) $int.value,
if (amountDetailsShippingParam4AmountVariant2.isPresent) amountDetailsShippingParam4AmountVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is AmountDetailsShippingParam4Amount && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'AmountDetailsShippingParam4Amount(${toJson()})';
}
