// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice_payment_method_options_param24.dart';@immutable final class PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2 {const PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2._(this.value);

factory PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2._(json),
}; }

static const PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2 $empty = PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2._('');

static const List<PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2($value)'; } 
 }

@immutable
final class PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsBancontact {
  const PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsBancontact({this.invoicePaymentMethodOptionsParam24 = const Omittable.absent(),
this.postInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsBancontact._({required this.rawValue, required this.invoicePaymentMethodOptionsParam24,
required this.postInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2,});
  factory PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsBancontact.fromJson(Object? json) => PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsBancontact._(
    rawValue: Omittable(json),
    invoicePaymentMethodOptionsParam24: parseAnyOfVariant<InvoicePaymentMethodOptionsParam24>(json, (value) => InvoicePaymentMethodOptionsParam24.fromJson(value! as Map<String, dynamic>)),
postInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2: parseAnyOfVariant<PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2>(json, (value) => PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<InvoicePaymentMethodOptionsParam24> invoicePaymentMethodOptionsParam24;
final Omittable<PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2> postInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => invoicePaymentMethodOptionsParam24.isPresent || postInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (invoicePaymentMethodOptionsParam24.isPresent) invoicePaymentMethodOptionsParam24.value?.toJson(),
if (postInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2.isPresent) postInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsBancontact && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsBancontact(${toJson()})';
}
