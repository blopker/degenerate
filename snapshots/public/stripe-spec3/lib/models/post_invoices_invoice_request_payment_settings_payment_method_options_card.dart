// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice_payment_method_options_param25.dart';@immutable final class PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCardVariant2 {const PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCardVariant2._(this.value);

factory PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCardVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCardVariant2._(json),
};}

static const PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCardVariant2 $empty = PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCardVariant2._('');

static const List<PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCardVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCardVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCardVariant2($value)';}
}

@immutable
final class PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCard {
  const PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCard({this.invoicePaymentMethodOptionsParam25 = const Omittable.absent(),
this.postInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCardVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCard._({required this.rawValue, required this.invoicePaymentMethodOptionsParam25,
required this.postInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCardVariant2,});
  factory PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCard.fromJson(Object? json) => PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCard._(
    rawValue: Omittable(json),
    invoicePaymentMethodOptionsParam25: parseAnyOfVariant<InvoicePaymentMethodOptionsParam25>(json, (value) => InvoicePaymentMethodOptionsParam25.fromJson(value! as Map<String, dynamic>)),
postInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCardVariant2: parseAnyOfVariant<PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCardVariant2>(json, (value) => PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCardVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<InvoicePaymentMethodOptionsParam25> invoicePaymentMethodOptionsParam25;
final Omittable<PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCardVariant2> postInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCardVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => invoicePaymentMethodOptionsParam25.isPresent || postInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCardVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (invoicePaymentMethodOptionsParam25.isPresent) invoicePaymentMethodOptionsParam25.value?.toJson(),
if (postInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCardVariant2.isPresent) postInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCardVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCard && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCard(${toJson()})';
}
