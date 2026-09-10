// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'installment_plan3.dart';@immutable final class PaymentIntentParamInstallmentsPlanVariant2 {const PaymentIntentParamInstallmentsPlanVariant2._(this.value);

factory PaymentIntentParamInstallmentsPlanVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PaymentIntentParamInstallmentsPlanVariant2._(json),
};}

static const PaymentIntentParamInstallmentsPlanVariant2 $empty = PaymentIntentParamInstallmentsPlanVariant2._('');

static const List<PaymentIntentParamInstallmentsPlanVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PaymentIntentParamInstallmentsPlanVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PaymentIntentParamInstallmentsPlanVariant2($value)';}
}

@immutable
final class PaymentIntentParamInstallmentsPlan {
  const PaymentIntentParamInstallmentsPlan({this.installmentPlan3 = const Omittable.absent(),
this.paymentIntentParamInstallmentsPlanVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PaymentIntentParamInstallmentsPlan._({required this.rawValue, required this.installmentPlan3,
required this.paymentIntentParamInstallmentsPlanVariant2,});
  factory PaymentIntentParamInstallmentsPlan.fromJson(Object? json) => PaymentIntentParamInstallmentsPlan._(
    rawValue: Omittable(json),
    installmentPlan3: parseAnyOfVariant<InstallmentPlan3>(json, (value) => InstallmentPlan3.fromJson(value! as Map<String, dynamic>)),
paymentIntentParamInstallmentsPlanVariant2: parseAnyOfVariant<PaymentIntentParamInstallmentsPlanVariant2>(json, (value) => PaymentIntentParamInstallmentsPlanVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<InstallmentPlan3> installmentPlan3;
final Omittable<PaymentIntentParamInstallmentsPlanVariant2> paymentIntentParamInstallmentsPlanVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => installmentPlan3.isPresent || paymentIntentParamInstallmentsPlanVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (installmentPlan3.isPresent) installmentPlan3.value?.toJson(),
if (paymentIntentParamInstallmentsPlanVariant2.isPresent) paymentIntentParamInstallmentsPlanVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PaymentIntentParamInstallmentsPlan && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PaymentIntentParamInstallmentsPlan(${toJson()})';
}
