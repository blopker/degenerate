// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice_payment_method_options_param29.dart';@immutable final class PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2 {const PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2._(this.value);

factory PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2._(json),
}; }

static const PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2 $empty = PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2._('');

static const List<PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2($value)'; } 
 }

@immutable
final class PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsSepaDebit {
  const PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsSepaDebit({this.invoicePaymentMethodOptionsParam29 = const Omittable.absent(),
this.postInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsSepaDebit._({required this.rawValue, required this.invoicePaymentMethodOptionsParam29,
required this.postInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2,});
  factory PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsSepaDebit.fromJson(Object? json) => PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsSepaDebit._(
    rawValue: Omittable(json),
    invoicePaymentMethodOptionsParam29: parseAnyOfVariant<InvoicePaymentMethodOptionsParam29>(json, (value) => InvoicePaymentMethodOptionsParam29.fromJson(value! as Map<String, dynamic>)),
postInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2: parseAnyOfVariant<PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2>(json, (value) => PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<InvoicePaymentMethodOptionsParam29> invoicePaymentMethodOptionsParam29;
final Omittable<PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2> postInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => invoicePaymentMethodOptionsParam29.isPresent || postInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (invoicePaymentMethodOptionsParam29.isPresent) invoicePaymentMethodOptionsParam29.value?.toJson(),
if (postInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2.isPresent) postInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsSepaDebit && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsSepaDebit(${toJson()})';
}
