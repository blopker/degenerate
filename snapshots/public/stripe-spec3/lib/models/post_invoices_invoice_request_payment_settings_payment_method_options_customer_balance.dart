// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice_payment_method_options_param26.dart';@immutable final class PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2 {const PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2._(this.value);

factory PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2._(json),
}; }

static const PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2 $empty = PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2._('');

static const List<PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2($value)'; } 
 }

@immutable
final class PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCustomerBalance {
  const PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCustomerBalance({this.invoicePaymentMethodOptionsParam26 = const Omittable.absent(),
this.postInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCustomerBalance._({required this.rawValue, required this.invoicePaymentMethodOptionsParam26,
required this.postInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2,});
  factory PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCustomerBalance.fromJson(Object? json) => PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCustomerBalance._(
    rawValue: Omittable(json),
    invoicePaymentMethodOptionsParam26: parseAnyOfVariant<InvoicePaymentMethodOptionsParam26>(json, (value) => InvoicePaymentMethodOptionsParam26.fromJson(value! as Map<String, dynamic>)),
postInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2: parseAnyOfVariant<PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2>(json, (value) => PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<InvoicePaymentMethodOptionsParam26> invoicePaymentMethodOptionsParam26;
final Omittable<PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2> postInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => invoicePaymentMethodOptionsParam26.isPresent || postInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (invoicePaymentMethodOptionsParam26.isPresent) invoicePaymentMethodOptionsParam26.value?.toJson(),
if (postInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2.isPresent) postInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCustomerBalance && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCustomerBalance(${toJson()})';
}
