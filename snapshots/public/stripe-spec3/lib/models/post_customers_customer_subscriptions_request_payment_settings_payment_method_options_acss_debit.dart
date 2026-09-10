// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice_payment_method_options_param.dart';@immutable final class PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2 {const PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2._(this.value);

factory PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2._(json),
}; }

static const PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2 $empty = PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2._('');

static const List<PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2($value)'; } 
 }

@immutable
final class PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsAcssDebit {
  const PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsAcssDebit({this.invoicePaymentMethodOptionsParam = const Omittable.absent(),
this.postCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsAcssDebit._({required this.rawValue, required this.invoicePaymentMethodOptionsParam,
required this.postCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2,});
  factory PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsAcssDebit.fromJson(Object? json) => PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsAcssDebit._(
    rawValue: Omittable(json),
    invoicePaymentMethodOptionsParam: parseAnyOfVariant<InvoicePaymentMethodOptionsParam>(json, (value) => InvoicePaymentMethodOptionsParam.fromJson(value! as Map<String, dynamic>)),
postCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2: parseAnyOfVariant<PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2>(json, (value) => PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<InvoicePaymentMethodOptionsParam> invoicePaymentMethodOptionsParam;
final Omittable<PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2> postCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => invoicePaymentMethodOptionsParam.isPresent || postCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (invoicePaymentMethodOptionsParam.isPresent) invoicePaymentMethodOptionsParam.value?.toJson(),
if (postCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2.isPresent) postCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsAcssDebit && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsAcssDebit(${toJson()})';
}
