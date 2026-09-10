// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'installment_plan2.dart';@immutable final class InvoicePaymentMethodOptionsParam25InstallmentsPlanVariant2 {const InvoicePaymentMethodOptionsParam25InstallmentsPlanVariant2._(this.value);

factory InvoicePaymentMethodOptionsParam25InstallmentsPlanVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => InvoicePaymentMethodOptionsParam25InstallmentsPlanVariant2._(json),
};}

static const InvoicePaymentMethodOptionsParam25InstallmentsPlanVariant2 $empty = InvoicePaymentMethodOptionsParam25InstallmentsPlanVariant2._('');

static const List<InvoicePaymentMethodOptionsParam25InstallmentsPlanVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is InvoicePaymentMethodOptionsParam25InstallmentsPlanVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'InvoicePaymentMethodOptionsParam25InstallmentsPlanVariant2($value)';}
}

@immutable
final class InvoicePaymentMethodOptionsParam25InstallmentsPlan {
  const InvoicePaymentMethodOptionsParam25InstallmentsPlan({this.installmentPlan2 = const Omittable.absent(),
this.invoicePaymentMethodOptionsParam25InstallmentsPlanVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const InvoicePaymentMethodOptionsParam25InstallmentsPlan._({required this.rawValue, required this.installmentPlan2,
required this.invoicePaymentMethodOptionsParam25InstallmentsPlanVariant2,});
  factory InvoicePaymentMethodOptionsParam25InstallmentsPlan.fromJson(Object? json) => InvoicePaymentMethodOptionsParam25InstallmentsPlan._(
    rawValue: Omittable(json),
    installmentPlan2: parseAnyOfVariant<InstallmentPlan2>(json, (value) => InstallmentPlan2.fromJson(value! as Map<String, dynamic>)),
invoicePaymentMethodOptionsParam25InstallmentsPlanVariant2: parseAnyOfVariant<InvoicePaymentMethodOptionsParam25InstallmentsPlanVariant2>(json, (value) => InvoicePaymentMethodOptionsParam25InstallmentsPlanVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<InstallmentPlan2> installmentPlan2;
final Omittable<InvoicePaymentMethodOptionsParam25InstallmentsPlanVariant2> invoicePaymentMethodOptionsParam25InstallmentsPlanVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => installmentPlan2.isPresent || invoicePaymentMethodOptionsParam25InstallmentsPlanVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (installmentPlan2.isPresent) installmentPlan2.value?.toJson(),
if (invoicePaymentMethodOptionsParam25InstallmentsPlanVariant2.isPresent) invoicePaymentMethodOptionsParam25InstallmentsPlanVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is InvoicePaymentMethodOptionsParam25InstallmentsPlan && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'InvoicePaymentMethodOptionsParam25InstallmentsPlan(${toJson()})';
}
