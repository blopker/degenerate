// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice_payment_method_options_param21.dart';@immutable final class PostInvoicesRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2 {const PostInvoicesRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2._(this.value);

factory PostInvoicesRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostInvoicesRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2._(json),
};}

static const PostInvoicesRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2 $empty = PostInvoicesRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2._('');

static const List<PostInvoicesRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostInvoicesRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostInvoicesRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2($value)';}
}

@immutable
final class PostInvoicesRequestPaymentSettingsPaymentMethodOptionsSepaDebit {
  const PostInvoicesRequestPaymentSettingsPaymentMethodOptionsSepaDebit({this.invoicePaymentMethodOptionsParam21 = const Omittable.absent(),
this.postInvoicesRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesRequestPaymentSettingsPaymentMethodOptionsSepaDebit._({required this.rawValue, required this.invoicePaymentMethodOptionsParam21,
required this.postInvoicesRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2,});
  factory PostInvoicesRequestPaymentSettingsPaymentMethodOptionsSepaDebit.fromJson(Object? json) => PostInvoicesRequestPaymentSettingsPaymentMethodOptionsSepaDebit._(
    rawValue: Omittable(json),
    invoicePaymentMethodOptionsParam21: parseAnyOfVariant<InvoicePaymentMethodOptionsParam21>(json, (value) => InvoicePaymentMethodOptionsParam21.fromJson(value! as Map<String, dynamic>)),
postInvoicesRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2: parseAnyOfVariant<PostInvoicesRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2>(json, (value) => PostInvoicesRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<InvoicePaymentMethodOptionsParam21> invoicePaymentMethodOptionsParam21;
final Omittable<PostInvoicesRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2> postInvoicesRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => invoicePaymentMethodOptionsParam21.isPresent || postInvoicesRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (invoicePaymentMethodOptionsParam21.isPresent) invoicePaymentMethodOptionsParam21.value?.toJson(),
if (postInvoicesRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2.isPresent) postInvoicesRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesRequestPaymentSettingsPaymentMethodOptionsSepaDebit && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesRequestPaymentSettingsPaymentMethodOptionsSepaDebit(${toJson()})';
}
