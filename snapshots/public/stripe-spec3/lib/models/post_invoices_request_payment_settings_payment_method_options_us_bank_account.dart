// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice_payment_method_options_param22.dart';@immutable final class PostInvoicesRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2 {const PostInvoicesRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2._(this.value);

factory PostInvoicesRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostInvoicesRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2._(json),
};}

static const PostInvoicesRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2 $empty = PostInvoicesRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2._('');

static const List<PostInvoicesRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostInvoicesRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostInvoicesRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2($value)';}
}

@immutable
final class PostInvoicesRequestPaymentSettingsPaymentMethodOptionsUsBankAccount {
  const PostInvoicesRequestPaymentSettingsPaymentMethodOptionsUsBankAccount({this.invoicePaymentMethodOptionsParam22 = const Omittable.absent(),
this.postInvoicesRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesRequestPaymentSettingsPaymentMethodOptionsUsBankAccount._({required this.rawValue, required this.invoicePaymentMethodOptionsParam22,
required this.postInvoicesRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2,});
  factory PostInvoicesRequestPaymentSettingsPaymentMethodOptionsUsBankAccount.fromJson(Object? json) => PostInvoicesRequestPaymentSettingsPaymentMethodOptionsUsBankAccount._(
    rawValue: Omittable(json),
    invoicePaymentMethodOptionsParam22: parseAnyOfVariant<InvoicePaymentMethodOptionsParam22>(json, (value) => InvoicePaymentMethodOptionsParam22.fromJson(value! as Map<String, dynamic>)),
postInvoicesRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2: parseAnyOfVariant<PostInvoicesRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2>(json, (value) => PostInvoicesRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<InvoicePaymentMethodOptionsParam22> invoicePaymentMethodOptionsParam22;
final Omittable<PostInvoicesRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2> postInvoicesRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => invoicePaymentMethodOptionsParam22.isPresent || postInvoicesRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (invoicePaymentMethodOptionsParam22.isPresent) invoicePaymentMethodOptionsParam22.value?.toJson(),
if (postInvoicesRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2.isPresent) postInvoicesRequestPaymentSettingsPaymentMethodOptionsUsBankAccountVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesRequestPaymentSettingsPaymentMethodOptionsUsBankAccount && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesRequestPaymentSettingsPaymentMethodOptionsUsBankAccount(${toJson()})';
}
