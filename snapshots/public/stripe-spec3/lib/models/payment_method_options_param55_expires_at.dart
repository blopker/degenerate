// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentMethodOptionsParam55ExpiresAtVariant2 {const PaymentMethodOptionsParam55ExpiresAtVariant2._(this.value);

factory PaymentMethodOptionsParam55ExpiresAtVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PaymentMethodOptionsParam55ExpiresAtVariant2._(json),
};}

static const PaymentMethodOptionsParam55ExpiresAtVariant2 $empty = PaymentMethodOptionsParam55ExpiresAtVariant2._('');

static const List<PaymentMethodOptionsParam55ExpiresAtVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PaymentMethodOptionsParam55ExpiresAtVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PaymentMethodOptionsParam55ExpiresAtVariant2($value)';}
}

@immutable
final class PaymentMethodOptionsParam55ExpiresAt {
  const PaymentMethodOptionsParam55ExpiresAt({this.$int = const Omittable.absent(),
this.paymentMethodOptionsParam55ExpiresAtVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PaymentMethodOptionsParam55ExpiresAt._({required this.rawValue, required this.$int,
required this.paymentMethodOptionsParam55ExpiresAtVariant2,});
  factory PaymentMethodOptionsParam55ExpiresAt.fromJson(Object? json) => PaymentMethodOptionsParam55ExpiresAt._(
    rawValue: Omittable(json),
    $int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
paymentMethodOptionsParam55ExpiresAtVariant2: parseAnyOfVariant<PaymentMethodOptionsParam55ExpiresAtVariant2>(json, (value) => PaymentMethodOptionsParam55ExpiresAtVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<int> $int;
final Omittable<PaymentMethodOptionsParam55ExpiresAtVariant2> paymentMethodOptionsParam55ExpiresAtVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $int.isPresent || paymentMethodOptionsParam55ExpiresAtVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($int.isPresent) $int.value,
if (paymentMethodOptionsParam55ExpiresAtVariant2.isPresent) paymentMethodOptionsParam55ExpiresAtVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PaymentMethodOptionsParam55ExpiresAt && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PaymentMethodOptionsParam55ExpiresAt(${toJson()})';
}
