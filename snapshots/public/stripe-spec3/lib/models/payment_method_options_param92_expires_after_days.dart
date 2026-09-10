// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentMethodOptionsParam92ExpiresAfterDaysVariant2 {const PaymentMethodOptionsParam92ExpiresAfterDaysVariant2._(this.value);

factory PaymentMethodOptionsParam92ExpiresAfterDaysVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PaymentMethodOptionsParam92ExpiresAfterDaysVariant2._(json),
}; }

static const PaymentMethodOptionsParam92ExpiresAfterDaysVariant2 $empty = PaymentMethodOptionsParam92ExpiresAfterDaysVariant2._('');

static const List<PaymentMethodOptionsParam92ExpiresAfterDaysVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam92ExpiresAfterDaysVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam92ExpiresAfterDaysVariant2($value)'; } 
 }

@immutable
final class PaymentMethodOptionsParam92ExpiresAfterDays {
  const PaymentMethodOptionsParam92ExpiresAfterDays({this.$int = const Omittable.absent(),
this.paymentMethodOptionsParam92ExpiresAfterDaysVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PaymentMethodOptionsParam92ExpiresAfterDays._({required this.rawValue, required this.$int,
required this.paymentMethodOptionsParam92ExpiresAfterDaysVariant2,});
  factory PaymentMethodOptionsParam92ExpiresAfterDays.fromJson(Object? json) => PaymentMethodOptionsParam92ExpiresAfterDays._(
    rawValue: Omittable(json),
    $int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
paymentMethodOptionsParam92ExpiresAfterDaysVariant2: parseAnyOfVariant<PaymentMethodOptionsParam92ExpiresAfterDaysVariant2>(json, (value) => PaymentMethodOptionsParam92ExpiresAfterDaysVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<int> $int;
final Omittable<PaymentMethodOptionsParam92ExpiresAfterDaysVariant2> paymentMethodOptionsParam92ExpiresAfterDaysVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $int.isPresent || paymentMethodOptionsParam92ExpiresAfterDaysVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($int.isPresent) $int.value,
if (paymentMethodOptionsParam92ExpiresAfterDaysVariant2.isPresent) paymentMethodOptionsParam92ExpiresAfterDaysVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PaymentMethodOptionsParam92ExpiresAfterDays && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PaymentMethodOptionsParam92ExpiresAfterDays(${toJson()})';
}
