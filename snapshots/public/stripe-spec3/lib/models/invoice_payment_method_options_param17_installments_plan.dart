// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'installment_plan.dart';@immutable final class InvoicePaymentMethodOptionsParam17InstallmentsPlanVariant2 {const InvoicePaymentMethodOptionsParam17InstallmentsPlanVariant2._(this.value);

factory InvoicePaymentMethodOptionsParam17InstallmentsPlanVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => InvoicePaymentMethodOptionsParam17InstallmentsPlanVariant2._(json),
}; }

static const InvoicePaymentMethodOptionsParam17InstallmentsPlanVariant2 $empty = InvoicePaymentMethodOptionsParam17InstallmentsPlanVariant2._('');

static const List<InvoicePaymentMethodOptionsParam17InstallmentsPlanVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InvoicePaymentMethodOptionsParam17InstallmentsPlanVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InvoicePaymentMethodOptionsParam17InstallmentsPlanVariant2($value)'; } 
 }

@immutable
final class InvoicePaymentMethodOptionsParam17InstallmentsPlan {
  const InvoicePaymentMethodOptionsParam17InstallmentsPlan({this.installmentPlan = const Omittable.absent(),
this.invoicePaymentMethodOptionsParam17InstallmentsPlanVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const InvoicePaymentMethodOptionsParam17InstallmentsPlan._({required this.rawValue, required this.installmentPlan,
required this.invoicePaymentMethodOptionsParam17InstallmentsPlanVariant2,});
  factory InvoicePaymentMethodOptionsParam17InstallmentsPlan.fromJson(Object? json) => InvoicePaymentMethodOptionsParam17InstallmentsPlan._(
    rawValue: Omittable(json),
    installmentPlan: parseAnyOfVariant<InstallmentPlan>(json, (value) => InstallmentPlan.fromJson(value! as Map<String, dynamic>)),
invoicePaymentMethodOptionsParam17InstallmentsPlanVariant2: parseAnyOfVariant<InvoicePaymentMethodOptionsParam17InstallmentsPlanVariant2>(json, (value) => InvoicePaymentMethodOptionsParam17InstallmentsPlanVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<InstallmentPlan> installmentPlan;
final Omittable<InvoicePaymentMethodOptionsParam17InstallmentsPlanVariant2> invoicePaymentMethodOptionsParam17InstallmentsPlanVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => installmentPlan.isPresent || invoicePaymentMethodOptionsParam17InstallmentsPlanVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (installmentPlan.isPresent) installmentPlan.value?.toJson(),
if (invoicePaymentMethodOptionsParam17InstallmentsPlanVariant2.isPresent) invoicePaymentMethodOptionsParam17InstallmentsPlanVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is InvoicePaymentMethodOptionsParam17InstallmentsPlan && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'InvoicePaymentMethodOptionsParam17InstallmentsPlan(${toJson()})';
}
