// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice_payment_method_options_param30.dart';@immutable final class PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2 {const PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2._(this.value);

factory PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2._(json),
}; }

static const PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2 $empty = PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2._('');

static const List<PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2($value)'; } 
 }

@immutable
final class PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsUsBankAccount {
  const PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsUsBankAccount({this.invoicePaymentMethodOptionsParam30 = const Omittable.absent(),
this.postInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsUsBankAccount._({required this.rawValue, required this.invoicePaymentMethodOptionsParam30,
required this.postInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2,});
  factory PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsUsBankAccount.fromJson(Object? json) => PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsUsBankAccount._(
    rawValue: Omittable(json),
    invoicePaymentMethodOptionsParam30: parseAnyOfVariant<InvoicePaymentMethodOptionsParam30>(json, (value) => InvoicePaymentMethodOptionsParam30.fromJson(value! as Map<String, dynamic>)),
postInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2: parseAnyOfVariant<PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2>(json, (value) => PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<InvoicePaymentMethodOptionsParam30> invoicePaymentMethodOptionsParam30;
final Omittable<PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2> postInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => invoicePaymentMethodOptionsParam30.isPresent || postInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (invoicePaymentMethodOptionsParam30.isPresent) invoicePaymentMethodOptionsParam30.value?.toJson(),
if (postInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2.isPresent) postInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsUsBankAccount && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsUsBankAccount(${toJson()})';
}
