// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice_payment_method_options_param16.dart';@immutable final class PostInvoicesRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2 {const PostInvoicesRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2._(this.value);

factory PostInvoicesRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoicesRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2._(json),
}; }

static const PostInvoicesRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2 $empty = PostInvoicesRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2._('');

static const List<PostInvoicesRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2($value)'; } 
 }

@immutable
final class PostInvoicesRequestPaymentSettingsPaymentMethodOptionsBancontact {
  const PostInvoicesRequestPaymentSettingsPaymentMethodOptionsBancontact({this.invoicePaymentMethodOptionsParam16 = const Omittable.absent(),
this.postInvoicesRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesRequestPaymentSettingsPaymentMethodOptionsBancontact._({required this.rawValue, required this.invoicePaymentMethodOptionsParam16,
required this.postInvoicesRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2,});
  factory PostInvoicesRequestPaymentSettingsPaymentMethodOptionsBancontact.fromJson(Object? json) => PostInvoicesRequestPaymentSettingsPaymentMethodOptionsBancontact._(
    rawValue: Omittable(json),
    invoicePaymentMethodOptionsParam16: parseAnyOfVariant<InvoicePaymentMethodOptionsParam16>(json, (value) => InvoicePaymentMethodOptionsParam16.fromJson(value! as Map<String, dynamic>)),
postInvoicesRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2: parseAnyOfVariant<PostInvoicesRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2>(json, (value) => PostInvoicesRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<InvoicePaymentMethodOptionsParam16> invoicePaymentMethodOptionsParam16;
final Omittable<PostInvoicesRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2> postInvoicesRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => invoicePaymentMethodOptionsParam16.isPresent || postInvoicesRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (invoicePaymentMethodOptionsParam16.isPresent) invoicePaymentMethodOptionsParam16.value?.toJson(),
if (postInvoicesRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2.isPresent) postInvoicesRequestPaymentSettingsPaymentMethodOptionsBancontactVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesRequestPaymentSettingsPaymentMethodOptionsBancontact && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesRequestPaymentSettingsPaymentMethodOptionsBancontact(${toJson()})';
}
