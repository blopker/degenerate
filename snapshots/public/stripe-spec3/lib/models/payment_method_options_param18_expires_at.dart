// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentMethodOptionsParam18ExpiresAtVariant2 {const PaymentMethodOptionsParam18ExpiresAtVariant2._(this.value);

factory PaymentMethodOptionsParam18ExpiresAtVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PaymentMethodOptionsParam18ExpiresAtVariant2._(json),
}; }

static const PaymentMethodOptionsParam18ExpiresAtVariant2 $empty = PaymentMethodOptionsParam18ExpiresAtVariant2._('');

static const List<PaymentMethodOptionsParam18ExpiresAtVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam18ExpiresAtVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam18ExpiresAtVariant2($value)'; } 
 }

@immutable
final class PaymentMethodOptionsParam18ExpiresAt {
  const PaymentMethodOptionsParam18ExpiresAt({this.$int = const Omittable.absent(),
this.paymentMethodOptionsParam18ExpiresAtVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PaymentMethodOptionsParam18ExpiresAt._({required this.rawValue, required this.$int,
required this.paymentMethodOptionsParam18ExpiresAtVariant2,});
  factory PaymentMethodOptionsParam18ExpiresAt.fromJson(Object? json) => PaymentMethodOptionsParam18ExpiresAt._(
    rawValue: Omittable(json),
    $int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
paymentMethodOptionsParam18ExpiresAtVariant2: parseAnyOfVariant<PaymentMethodOptionsParam18ExpiresAtVariant2>(json, (value) => PaymentMethodOptionsParam18ExpiresAtVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<int> $int;
final Omittable<PaymentMethodOptionsParam18ExpiresAtVariant2> paymentMethodOptionsParam18ExpiresAtVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $int.isPresent || paymentMethodOptionsParam18ExpiresAtVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($int.isPresent) $int.value,
if (paymentMethodOptionsParam18ExpiresAtVariant2.isPresent) paymentMethodOptionsParam18ExpiresAtVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PaymentMethodOptionsParam18ExpiresAt && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PaymentMethodOptionsParam18ExpiresAt(${toJson()})';
}
