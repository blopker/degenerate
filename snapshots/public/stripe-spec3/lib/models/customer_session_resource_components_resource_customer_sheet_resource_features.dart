// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CustomerSessionResourceComponentsResourceCustomerSheetResourceFeaturesPaymentMethodAllowRedisplayFilters {const CustomerSessionResourceComponentsResourceCustomerSheetResourceFeaturesPaymentMethodAllowRedisplayFilters._(this.value);

factory CustomerSessionResourceComponentsResourceCustomerSheetResourceFeaturesPaymentMethodAllowRedisplayFilters.fromJson(String json) { return switch (json) {
  'always' => always,
  'limited' => limited,
  'unspecified' => unspecified,
  _ => CustomerSessionResourceComponentsResourceCustomerSheetResourceFeaturesPaymentMethodAllowRedisplayFilters._(json),
}; }

static const CustomerSessionResourceComponentsResourceCustomerSheetResourceFeaturesPaymentMethodAllowRedisplayFilters always = CustomerSessionResourceComponentsResourceCustomerSheetResourceFeaturesPaymentMethodAllowRedisplayFilters._('always');

static const CustomerSessionResourceComponentsResourceCustomerSheetResourceFeaturesPaymentMethodAllowRedisplayFilters limited = CustomerSessionResourceComponentsResourceCustomerSheetResourceFeaturesPaymentMethodAllowRedisplayFilters._('limited');

static const CustomerSessionResourceComponentsResourceCustomerSheetResourceFeaturesPaymentMethodAllowRedisplayFilters unspecified = CustomerSessionResourceComponentsResourceCustomerSheetResourceFeaturesPaymentMethodAllowRedisplayFilters._('unspecified');

static const List<CustomerSessionResourceComponentsResourceCustomerSheetResourceFeaturesPaymentMethodAllowRedisplayFilters> values = [always, limited, unspecified];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CustomerSessionResourceComponentsResourceCustomerSheetResourceFeaturesPaymentMethodAllowRedisplayFilters && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CustomerSessionResourceComponentsResourceCustomerSheetResourceFeaturesPaymentMethodAllowRedisplayFilters($value)'; } 
 }
/// Controls whether the customer sheet displays the option to remove a saved payment method."
/// 
/// Allowing buyers to remove their saved payment methods impacts subscriptions that depend on that payment method. Removing the payment method detaches the [`customer` object](https://docs.stripe.com/api/payment_methods/object#payment_method_object-customer) from that [PaymentMethod](https://docs.stripe.com/api/payment_methods).
@immutable final class CustomerSessionResourceComponentsResourceCustomerSheetResourceFeaturesPaymentMethodRemove {const CustomerSessionResourceComponentsResourceCustomerSheetResourceFeaturesPaymentMethodRemove._(this.value);

factory CustomerSessionResourceComponentsResourceCustomerSheetResourceFeaturesPaymentMethodRemove.fromJson(String json) { return switch (json) {
  'disabled' => disabled,
  'enabled' => enabled,
  _ => CustomerSessionResourceComponentsResourceCustomerSheetResourceFeaturesPaymentMethodRemove._(json),
}; }

static const CustomerSessionResourceComponentsResourceCustomerSheetResourceFeaturesPaymentMethodRemove disabled = CustomerSessionResourceComponentsResourceCustomerSheetResourceFeaturesPaymentMethodRemove._('disabled');

static const CustomerSessionResourceComponentsResourceCustomerSheetResourceFeaturesPaymentMethodRemove enabled = CustomerSessionResourceComponentsResourceCustomerSheetResourceFeaturesPaymentMethodRemove._('enabled');

static const List<CustomerSessionResourceComponentsResourceCustomerSheetResourceFeaturesPaymentMethodRemove> values = [disabled, enabled];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CustomerSessionResourceComponentsResourceCustomerSheetResourceFeaturesPaymentMethodRemove && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CustomerSessionResourceComponentsResourceCustomerSheetResourceFeaturesPaymentMethodRemove($value)'; } 
 }
/// This hash contains the features the customer sheet supports.
@immutable final class CustomerSessionResourceComponentsResourceCustomerSheetResourceFeatures {const CustomerSessionResourceComponentsResourceCustomerSheetResourceFeatures({this.paymentMethodAllowRedisplayFilters = const Omittable.absent(), this.paymentMethodRemove = const Omittable.absent(), });

factory CustomerSessionResourceComponentsResourceCustomerSheetResourceFeatures.fromJson(Map<String, dynamic> json) { return CustomerSessionResourceComponentsResourceCustomerSheetResourceFeatures(
  paymentMethodAllowRedisplayFilters: json.containsKey('payment_method_allow_redisplay_filters') ? Omittable((json['payment_method_allow_redisplay_filters'] as List<dynamic>?)?.map((e) => CustomerSessionResourceComponentsResourceCustomerSheetResourceFeaturesPaymentMethodAllowRedisplayFilters.fromJson(e as String)).toList()) : const Omittable.absent(),
  paymentMethodRemove: json.containsKey('payment_method_remove') ? Omittable(json['payment_method_remove'] != null ? CustomerSessionResourceComponentsResourceCustomerSheetResourceFeaturesPaymentMethodRemove.fromJson(json['payment_method_remove'] as String) : null) : const Omittable.absent(),
); }

/// A list of [`allow_redisplay`](https://docs.stripe.com/api/payment_methods/object#payment_method_object-allow_redisplay) values that controls which saved payment methods the customer sheet displays by filtering to only show payment methods with an `allow_redisplay` value that is present in this list.
/// 
/// If not specified, defaults to `["always"]`. In order to display all saved payment methods, specify `["always", "limited", "unspecified"]`.
final Omittable<List<CustomerSessionResourceComponentsResourceCustomerSheetResourceFeaturesPaymentMethodAllowRedisplayFilters>?> paymentMethodAllowRedisplayFilters;

/// Controls whether the customer sheet displays the option to remove a saved payment method."
/// 
/// Allowing buyers to remove their saved payment methods impacts subscriptions that depend on that payment method. Removing the payment method detaches the [`customer` object](https://docs.stripe.com/api/payment_methods/object#payment_method_object-customer) from that [PaymentMethod](https://docs.stripe.com/api/payment_methods).
final Omittable<CustomerSessionResourceComponentsResourceCustomerSheetResourceFeaturesPaymentMethodRemove?> paymentMethodRemove;

Map<String, dynamic> toJson() { return {
  if (paymentMethodAllowRedisplayFilters.isPresent) 'payment_method_allow_redisplay_filters': paymentMethodAllowRedisplayFilters.value?.map((e) => e.toJson()).toList(),
  if (paymentMethodRemove.isPresent) 'payment_method_remove': paymentMethodRemove.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'payment_method_allow_redisplay_filters', 'payment_method_remove'}.contains(key)); } 
CustomerSessionResourceComponentsResourceCustomerSheetResourceFeatures copyWith({Omittable<List<CustomerSessionResourceComponentsResourceCustomerSheetResourceFeaturesPaymentMethodAllowRedisplayFilters>?>? paymentMethodAllowRedisplayFilters, Omittable<CustomerSessionResourceComponentsResourceCustomerSheetResourceFeaturesPaymentMethodRemove?>? paymentMethodRemove, }) { return CustomerSessionResourceComponentsResourceCustomerSheetResourceFeatures(
  paymentMethodAllowRedisplayFilters: paymentMethodAllowRedisplayFilters ?? this.paymentMethodAllowRedisplayFilters,
  paymentMethodRemove: paymentMethodRemove ?? this.paymentMethodRemove,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CustomerSessionResourceComponentsResourceCustomerSheetResourceFeatures &&
          paymentMethodAllowRedisplayFilters.isPresent == other.paymentMethodAllowRedisplayFilters.isPresent &&
          listEquals(paymentMethodAllowRedisplayFilters.value, other.paymentMethodAllowRedisplayFilters.value) &&
          paymentMethodRemove == other.paymentMethodRemove; } 
@override int get hashCode { return Object.hash(Object.hashAll(paymentMethodAllowRedisplayFilters.value ?? const []), paymentMethodRemove); } 
@override String toString() { return 'CustomerSessionResourceComponentsResourceCustomerSheetResourceFeatures(paymentMethodAllowRedisplayFilters: $paymentMethodAllowRedisplayFilters, paymentMethodRemove: $paymentMethodRemove)'; } 
 }
