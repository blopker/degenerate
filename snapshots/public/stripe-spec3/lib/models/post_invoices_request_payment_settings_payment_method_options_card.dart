// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice_payment_method_options_param17.dart';@immutable final class PostInvoicesRequestPaymentSettingsPaymentMethodOptionsCardVariant2 {const PostInvoicesRequestPaymentSettingsPaymentMethodOptionsCardVariant2._(this.value);

factory PostInvoicesRequestPaymentSettingsPaymentMethodOptionsCardVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoicesRequestPaymentSettingsPaymentMethodOptionsCardVariant2._(json),
}; }

static const PostInvoicesRequestPaymentSettingsPaymentMethodOptionsCardVariant2 $empty = PostInvoicesRequestPaymentSettingsPaymentMethodOptionsCardVariant2._('');

static const List<PostInvoicesRequestPaymentSettingsPaymentMethodOptionsCardVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesRequestPaymentSettingsPaymentMethodOptionsCardVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesRequestPaymentSettingsPaymentMethodOptionsCardVariant2($value)'; } 
 }

@immutable
final class PostInvoicesRequestPaymentSettingsPaymentMethodOptionsCard {
  const PostInvoicesRequestPaymentSettingsPaymentMethodOptionsCard({this.invoicePaymentMethodOptionsParam17 = const Omittable.absent(),
this.postInvoicesRequestPaymentSettingsPaymentMethodOptionsCardVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesRequestPaymentSettingsPaymentMethodOptionsCard._({required this.rawValue, required this.invoicePaymentMethodOptionsParam17,
required this.postInvoicesRequestPaymentSettingsPaymentMethodOptionsCardVariant2,});
  factory PostInvoicesRequestPaymentSettingsPaymentMethodOptionsCard.fromJson(Object? json) => PostInvoicesRequestPaymentSettingsPaymentMethodOptionsCard._(
    rawValue: Omittable(json),
    invoicePaymentMethodOptionsParam17: parseAnyOfVariant<InvoicePaymentMethodOptionsParam17>(json, (value) => InvoicePaymentMethodOptionsParam17.fromJson(value! as Map<String, dynamic>)),
postInvoicesRequestPaymentSettingsPaymentMethodOptionsCardVariant2: parseAnyOfVariant<PostInvoicesRequestPaymentSettingsPaymentMethodOptionsCardVariant2>(json, (value) => PostInvoicesRequestPaymentSettingsPaymentMethodOptionsCardVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<InvoicePaymentMethodOptionsParam17> invoicePaymentMethodOptionsParam17;
final Omittable<PostInvoicesRequestPaymentSettingsPaymentMethodOptionsCardVariant2> postInvoicesRequestPaymentSettingsPaymentMethodOptionsCardVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => invoicePaymentMethodOptionsParam17.isPresent || postInvoicesRequestPaymentSettingsPaymentMethodOptionsCardVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (invoicePaymentMethodOptionsParam17.isPresent) invoicePaymentMethodOptionsParam17.value?.toJson(),
if (postInvoicesRequestPaymentSettingsPaymentMethodOptionsCardVariant2.isPresent) postInvoicesRequestPaymentSettingsPaymentMethodOptionsCardVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesRequestPaymentSettingsPaymentMethodOptionsCard && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesRequestPaymentSettingsPaymentMethodOptionsCard(${toJson()})';
}
