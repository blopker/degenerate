// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice_payment_method_options_param3.dart';@immutable final class PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2 {const PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2._(this.value);

factory PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2._(json),
};}

static const PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2 $empty = PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2._('');

static const List<PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2($value)';}
}

@immutable
final class PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCustomerBalance {
  const PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCustomerBalance({this.invoicePaymentMethodOptionsParam3 = const Omittable.absent(),
this.postCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCustomerBalance._({required this.rawValue, required this.invoicePaymentMethodOptionsParam3,
required this.postCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2,});
  factory PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCustomerBalance.fromJson(Object? json) => PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCustomerBalance._(
    rawValue: Omittable(json),
    invoicePaymentMethodOptionsParam3: parseAnyOfVariant<InvoicePaymentMethodOptionsParam3>(json, (value) => InvoicePaymentMethodOptionsParam3.fromJson(value! as Map<String, dynamic>)),
postCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2: parseAnyOfVariant<PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2>(json, (value) => PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<InvoicePaymentMethodOptionsParam3> invoicePaymentMethodOptionsParam3;
final Omittable<PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2> postCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => invoicePaymentMethodOptionsParam3.isPresent || postCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (invoicePaymentMethodOptionsParam3.isPresent) invoicePaymentMethodOptionsParam3.value?.toJson(),
if (postCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2.isPresent) postCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCustomerBalance && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCustomersCustomerSubscriptionsRequestPaymentSettingsPaymentMethodOptionsCustomerBalance(${toJson()})';
}
