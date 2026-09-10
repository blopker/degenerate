// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice_payment_method_options_param40.dart';@immutable final class PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2 {const PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2._(this.value);

factory PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2._(json),
}; }

static const PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2 $empty = PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2._('');

static const List<PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2($value)'; } 
 }

@immutable
final class PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCustomerBalance {
  const PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCustomerBalance({this.invoicePaymentMethodOptionsParam40 = const Omittable.absent(),
this.postSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCustomerBalance._({required this.rawValue, required this.invoicePaymentMethodOptionsParam40,
required this.postSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2,});
  factory PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCustomerBalance.fromJson(Object? json) => PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCustomerBalance._(
    rawValue: Omittable(json),
    invoicePaymentMethodOptionsParam40: parseAnyOfVariant<InvoicePaymentMethodOptionsParam40>(json, (value) => InvoicePaymentMethodOptionsParam40.fromJson(value! as Map<String, dynamic>)),
postSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2: parseAnyOfVariant<PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2>(json, (value) => PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<InvoicePaymentMethodOptionsParam40> invoicePaymentMethodOptionsParam40;
final Omittable<PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2> postSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => invoicePaymentMethodOptionsParam40.isPresent || postSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (invoicePaymentMethodOptionsParam40.isPresent) invoicePaymentMethodOptionsParam40.value?.toJson(),
if (postSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2.isPresent) postSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCustomerBalance && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptionsCustomerBalance(${toJson()})';
}
