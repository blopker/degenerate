// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice_payment_method_options_param18.dart';@immutable final class PostInvoicesRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2 {const PostInvoicesRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2._(this.value);

factory PostInvoicesRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostInvoicesRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2._(json),
};}

static const PostInvoicesRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2 $empty = PostInvoicesRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2._('');

static const List<PostInvoicesRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostInvoicesRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostInvoicesRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2($value)';}
}

@immutable
final class PostInvoicesRequestPaymentSettingsPaymentMethodOptionsCustomerBalance {
  const PostInvoicesRequestPaymentSettingsPaymentMethodOptionsCustomerBalance({this.invoicePaymentMethodOptionsParam18 = const Omittable.absent(),
this.postInvoicesRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostInvoicesRequestPaymentSettingsPaymentMethodOptionsCustomerBalance._({required this.rawValue, required this.invoicePaymentMethodOptionsParam18,
required this.postInvoicesRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2,});
  factory PostInvoicesRequestPaymentSettingsPaymentMethodOptionsCustomerBalance.fromJson(Object? json) => PostInvoicesRequestPaymentSettingsPaymentMethodOptionsCustomerBalance._(
    rawValue: Omittable(json),
    invoicePaymentMethodOptionsParam18: parseAnyOfVariant<InvoicePaymentMethodOptionsParam18>(json, (value) => InvoicePaymentMethodOptionsParam18.fromJson(value! as Map<String, dynamic>)),
postInvoicesRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2: parseAnyOfVariant<PostInvoicesRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2>(json, (value) => PostInvoicesRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<InvoicePaymentMethodOptionsParam18> invoicePaymentMethodOptionsParam18;
final Omittable<PostInvoicesRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2> postInvoicesRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => invoicePaymentMethodOptionsParam18.isPresent || postInvoicesRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (invoicePaymentMethodOptionsParam18.isPresent) invoicePaymentMethodOptionsParam18.value?.toJson(),
if (postInvoicesRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2.isPresent) postInvoicesRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostInvoicesRequestPaymentSettingsPaymentMethodOptionsCustomerBalance && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostInvoicesRequestPaymentSettingsPaymentMethodOptionsCustomerBalance(${toJson()})';
}
