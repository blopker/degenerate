// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice_payment_method_options_param28.dart';@immutable final class PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2 {const PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2._(this.value);

factory PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2._(json),
}; }

static const PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2 $empty = PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2._('');

static const List<PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2($value)'; } 
 }

@immutable
final class PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsPayto {
  const PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsPayto({this.invoicePaymentMethodOptionsParam28 = const Omittable.absent(),
this.postInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsPayto._({required this.rawValue, required this.invoicePaymentMethodOptionsParam28,
required this.postInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2,});
  factory PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsPayto.fromJson(Object? json) => PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsPayto._(
    rawValue: Omittable(json),
    invoicePaymentMethodOptionsParam28: parseAnyOfVariant<InvoicePaymentMethodOptionsParam28>(json, (value) => InvoicePaymentMethodOptionsParam28.fromJson(value! as Map<String, dynamic>)),
postInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2: parseAnyOfVariant<PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2>(json, (value) => PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<InvoicePaymentMethodOptionsParam28> invoicePaymentMethodOptionsParam28;
final Omittable<PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2> postInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => invoicePaymentMethodOptionsParam28.isPresent || postInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (invoicePaymentMethodOptionsParam28.isPresent) invoicePaymentMethodOptionsParam28.value?.toJson(),
if (postInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2.isPresent) postInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsPayto && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsPayto(${toJson()})';
}
