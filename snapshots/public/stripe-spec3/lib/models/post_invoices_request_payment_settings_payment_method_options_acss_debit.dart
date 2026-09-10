// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice_payment_method_options_param15.dart';@immutable final class PostInvoicesRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2 {const PostInvoicesRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2._(this.value);

factory PostInvoicesRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostInvoicesRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2._(json),
};}

static const PostInvoicesRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2 $empty = PostInvoicesRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2._('');

static const List<PostInvoicesRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostInvoicesRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostInvoicesRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2($value)';}
}

@immutable
final class PostInvoicesRequestPaymentSettingsPaymentMethodOptionsAcssDebit {
  const PostInvoicesRequestPaymentSettingsPaymentMethodOptionsAcssDebit({this.invoicePaymentMethodOptionsParam15 = const Omittable.absent(),
this.postInvoicesRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesRequestPaymentSettingsPaymentMethodOptionsAcssDebit._({required this.rawValue, required this.invoicePaymentMethodOptionsParam15,
required this.postInvoicesRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2,});
  factory PostInvoicesRequestPaymentSettingsPaymentMethodOptionsAcssDebit.fromJson(Object? json) => PostInvoicesRequestPaymentSettingsPaymentMethodOptionsAcssDebit._(
    rawValue: Omittable(json),
    invoicePaymentMethodOptionsParam15: parseAnyOfVariant<InvoicePaymentMethodOptionsParam15>(json, (value) => InvoicePaymentMethodOptionsParam15.fromJson(value! as Map<String, dynamic>)),
postInvoicesRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2: parseAnyOfVariant<PostInvoicesRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2>(json, (value) => PostInvoicesRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<InvoicePaymentMethodOptionsParam15> invoicePaymentMethodOptionsParam15;
final Omittable<PostInvoicesRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2> postInvoicesRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => invoicePaymentMethodOptionsParam15.isPresent || postInvoicesRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (invoicePaymentMethodOptionsParam15.isPresent) invoicePaymentMethodOptionsParam15.value?.toJson(),
if (postInvoicesRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2.isPresent) postInvoicesRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesRequestPaymentSettingsPaymentMethodOptionsAcssDebit && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesRequestPaymentSettingsPaymentMethodOptionsAcssDebit(${toJson()})';
}
