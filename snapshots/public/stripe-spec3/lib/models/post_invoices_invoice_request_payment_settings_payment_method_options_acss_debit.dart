// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice_payment_method_options_param23.dart';@immutable final class PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2 {const PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2._(this.value);

factory PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2._(json),
};}

static const PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2 $empty = PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2._('');

static const List<PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2($value)';}
}

@immutable
final class PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsAcssDebit {
  const PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsAcssDebit({this.invoicePaymentMethodOptionsParam23 = const Omittable.absent(),
this.postInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsAcssDebit._({required this.rawValue, required this.invoicePaymentMethodOptionsParam23,
required this.postInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2,});
  factory PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsAcssDebit.fromJson(Object? json) => PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsAcssDebit._(
    rawValue: Omittable(json),
    invoicePaymentMethodOptionsParam23: parseAnyOfVariant<InvoicePaymentMethodOptionsParam23>(json, (value) => InvoicePaymentMethodOptionsParam23.fromJson(value! as Map<String, dynamic>)),
postInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2: parseAnyOfVariant<PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2>(json, (value) => PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<InvoicePaymentMethodOptionsParam23> invoicePaymentMethodOptionsParam23;
final Omittable<PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2> postInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => invoicePaymentMethodOptionsParam23.isPresent || postInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (invoicePaymentMethodOptionsParam23.isPresent) invoicePaymentMethodOptionsParam23.value?.toJson(),
if (postInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2.isPresent) postInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsAcssDebit && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsAcssDebit(${toJson()})';
}
