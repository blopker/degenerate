// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice_payment_method_options_param19.dart';@immutable final class PostInvoicesRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2 {const PostInvoicesRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2._(this.value);

factory PostInvoicesRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoicesRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2._(json),
}; }

static const PostInvoicesRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2 $empty = PostInvoicesRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2._('');

static const List<PostInvoicesRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2($value)'; } 
 }

@immutable
final class PostInvoicesRequestPaymentSettingsPaymentMethodOptionsKonbini {
  const PostInvoicesRequestPaymentSettingsPaymentMethodOptionsKonbini({this.invoicePaymentMethodOptionsParam19 = const Omittable.absent(),
this.postInvoicesRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesRequestPaymentSettingsPaymentMethodOptionsKonbini._({required this.rawValue, required this.invoicePaymentMethodOptionsParam19,
required this.postInvoicesRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2,});
  factory PostInvoicesRequestPaymentSettingsPaymentMethodOptionsKonbini.fromJson(Object? json) => PostInvoicesRequestPaymentSettingsPaymentMethodOptionsKonbini._(
    rawValue: Omittable(json),
    invoicePaymentMethodOptionsParam19: parseAnyOfVariant<InvoicePaymentMethodOptionsParam19>(json, (value) => InvoicePaymentMethodOptionsParam19.fromJson(value! as Map<String, dynamic>)),
postInvoicesRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2: parseAnyOfVariant<PostInvoicesRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2>(json, (value) => PostInvoicesRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<InvoicePaymentMethodOptionsParam19> invoicePaymentMethodOptionsParam19;
final Omittable<PostInvoicesRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2> postInvoicesRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => invoicePaymentMethodOptionsParam19.isPresent || postInvoicesRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (invoicePaymentMethodOptionsParam19.isPresent) invoicePaymentMethodOptionsParam19.value?.toJson(),
if (postInvoicesRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2.isPresent) postInvoicesRequestPaymentSettingsPaymentMethodOptionsKonbiniVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesRequestPaymentSettingsPaymentMethodOptionsKonbini && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesRequestPaymentSettingsPaymentMethodOptionsKonbini(${toJson()})';
}
