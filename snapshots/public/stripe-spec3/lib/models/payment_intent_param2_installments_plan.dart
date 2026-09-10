// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'installment_plan4.dart';@immutable final class PaymentIntentParam2InstallmentsPlanVariant2 {const PaymentIntentParam2InstallmentsPlanVariant2._(this.value);

factory PaymentIntentParam2InstallmentsPlanVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PaymentIntentParam2InstallmentsPlanVariant2._(json),
};}

static const PaymentIntentParam2InstallmentsPlanVariant2 $empty = PaymentIntentParam2InstallmentsPlanVariant2._('');

static const List<PaymentIntentParam2InstallmentsPlanVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PaymentIntentParam2InstallmentsPlanVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PaymentIntentParam2InstallmentsPlanVariant2($value)';}
}

@immutable
final class PaymentIntentParam2InstallmentsPlan {
  const PaymentIntentParam2InstallmentsPlan({this.installmentPlan4 = const Omittable.absent(),
this.paymentIntentParam2InstallmentsPlanVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PaymentIntentParam2InstallmentsPlan._({required this.rawValue, required this.installmentPlan4,
required this.paymentIntentParam2InstallmentsPlanVariant2,});
  factory PaymentIntentParam2InstallmentsPlan.fromJson(Object? json) => PaymentIntentParam2InstallmentsPlan._(
    rawValue: Omittable(json),
    installmentPlan4: parseAnyOfVariant<InstallmentPlan4>(json, (value) => InstallmentPlan4.fromJson(value! as Map<String, dynamic>)),
paymentIntentParam2InstallmentsPlanVariant2: parseAnyOfVariant<PaymentIntentParam2InstallmentsPlanVariant2>(json, (value) => PaymentIntentParam2InstallmentsPlanVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<InstallmentPlan4> installmentPlan4;
final Omittable<PaymentIntentParam2InstallmentsPlanVariant2> paymentIntentParam2InstallmentsPlanVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => installmentPlan4.isPresent || paymentIntentParam2InstallmentsPlanVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (installmentPlan4.isPresent) installmentPlan4.value?.toJson(),
if (paymentIntentParam2InstallmentsPlanVariant2.isPresent) paymentIntentParam2InstallmentsPlanVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PaymentIntentParam2InstallmentsPlan && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PaymentIntentParam2InstallmentsPlan(${toJson()})';
}
