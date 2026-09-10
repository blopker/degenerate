// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice_payment_method_options_param20.dart';@immutable final class PostInvoicesRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2 {const PostInvoicesRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2._(this.value);

factory PostInvoicesRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoicesRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2._(json),
}; }

static const PostInvoicesRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2 $empty = PostInvoicesRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2._('');

static const List<PostInvoicesRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2($value)'; } 
 }

@immutable
final class PostInvoicesRequestPaymentSettingsPaymentMethodOptionsPayto {
  const PostInvoicesRequestPaymentSettingsPaymentMethodOptionsPayto({this.invoicePaymentMethodOptionsParam20 = const Omittable.absent(),
this.postInvoicesRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesRequestPaymentSettingsPaymentMethodOptionsPayto._({required this.rawValue, required this.invoicePaymentMethodOptionsParam20,
required this.postInvoicesRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2,});
  factory PostInvoicesRequestPaymentSettingsPaymentMethodOptionsPayto.fromJson(Object? json) => PostInvoicesRequestPaymentSettingsPaymentMethodOptionsPayto._(
    rawValue: Omittable(json),
    invoicePaymentMethodOptionsParam20: parseAnyOfVariant<InvoicePaymentMethodOptionsParam20>(json, (value) => InvoicePaymentMethodOptionsParam20.fromJson(value! as Map<String, dynamic>)),
postInvoicesRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2: parseAnyOfVariant<PostInvoicesRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2>(json, (value) => PostInvoicesRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<InvoicePaymentMethodOptionsParam20> invoicePaymentMethodOptionsParam20;
final Omittable<PostInvoicesRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2> postInvoicesRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => invoicePaymentMethodOptionsParam20.isPresent || postInvoicesRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (invoicePaymentMethodOptionsParam20.isPresent) invoicePaymentMethodOptionsParam20.value?.toJson(),
if (postInvoicesRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2.isPresent) postInvoicesRequestPaymentSettingsPaymentMethodOptionsPaytoVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesRequestPaymentSettingsPaymentMethodOptionsPayto && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesRequestPaymentSettingsPaymentMethodOptionsPayto(${toJson()})';
}
