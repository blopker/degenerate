// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'installment_plan5.dart';@immutable final class PaymentIntentParam3InstallmentsPlanVariant2 {const PaymentIntentParam3InstallmentsPlanVariant2._(this.value);

factory PaymentIntentParam3InstallmentsPlanVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PaymentIntentParam3InstallmentsPlanVariant2._(json),
}; }

static const PaymentIntentParam3InstallmentsPlanVariant2 $empty = PaymentIntentParam3InstallmentsPlanVariant2._('');

static const List<PaymentIntentParam3InstallmentsPlanVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentParam3InstallmentsPlanVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentParam3InstallmentsPlanVariant2($value)'; } 
 }

@immutable
final class PaymentIntentParam3InstallmentsPlan {
  const PaymentIntentParam3InstallmentsPlan({this.installmentPlan5 = const Omittable.absent(),
this.paymentIntentParam3InstallmentsPlanVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PaymentIntentParam3InstallmentsPlan._({required this.rawValue, required this.installmentPlan5,
required this.paymentIntentParam3InstallmentsPlanVariant2,});
  factory PaymentIntentParam3InstallmentsPlan.fromJson(Object? json) => PaymentIntentParam3InstallmentsPlan._(
    rawValue: Omittable(json),
    installmentPlan5: parseAnyOfVariant<InstallmentPlan5>(json, (value) => InstallmentPlan5.fromJson(value! as Map<String, dynamic>)),
paymentIntentParam3InstallmentsPlanVariant2: parseAnyOfVariant<PaymentIntentParam3InstallmentsPlanVariant2>(json, (value) => PaymentIntentParam3InstallmentsPlanVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<InstallmentPlan5> installmentPlan5;
final Omittable<PaymentIntentParam3InstallmentsPlanVariant2> paymentIntentParam3InstallmentsPlanVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => installmentPlan5.isPresent || paymentIntentParam3InstallmentsPlanVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (installmentPlan5.isPresent) installmentPlan5.value?.toJson(),
if (paymentIntentParam3InstallmentsPlanVariant2.isPresent) paymentIntentParam3InstallmentsPlanVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PaymentIntentParam3InstallmentsPlan && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PaymentIntentParam3InstallmentsPlan(${toJson()})';
}
