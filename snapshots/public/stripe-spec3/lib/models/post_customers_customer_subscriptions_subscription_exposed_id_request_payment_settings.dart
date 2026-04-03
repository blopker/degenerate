// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_customers_customer_subscriptions_subscription_exposed_id_request_payment_settings_payment_method_options.dart';import 'post_customers_customer_subscriptions_subscription_exposed_id_request_payment_settings_payment_method_types.dart';@immutable final class PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsSaveDefaultPaymentMethod {const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsSaveDefaultPaymentMethod._(this.value);

factory PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsSaveDefaultPaymentMethod.fromJson(String json) { return switch (json) {
  'off' => off,
  'on_subscription' => onSubscription,
  _ => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsSaveDefaultPaymentMethod._(json),
}; }

static const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsSaveDefaultPaymentMethod off = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsSaveDefaultPaymentMethod._('off');

static const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsSaveDefaultPaymentMethod onSubscription = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsSaveDefaultPaymentMethod._('on_subscription');

static const List<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsSaveDefaultPaymentMethod> values = [off, onSubscription];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsSaveDefaultPaymentMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsSaveDefaultPaymentMethod($value)'; } 
 }
/// Payment settings to pass to invoices created by the subscription.
@immutable final class PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettings {const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettings({this.paymentMethodOptions, this.paymentMethodTypes, this.saveDefaultPaymentMethod, });

factory PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettings.fromJson(Map<String, dynamic> json) { return PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettings(
  paymentMethodOptions: json['payment_method_options'] != null ? PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptions.fromJson(json['payment_method_options'] as Map<String, dynamic>) : null,
  paymentMethodTypes: json['payment_method_types'] != null ? OneOf2.parse(json['payment_method_types'], fromA: (v) => (v as List<dynamic>).map((e) => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodTypesVariant1.fromJson(e as String)).toList(), fromB: (v) => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodTypesVariant2.fromJson(v as String),) : null,
  saveDefaultPaymentMethod: json['save_default_payment_method'] != null ? PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsSaveDefaultPaymentMethod.fromJson(json['save_default_payment_method'] as String) : null,
); }

final PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptions? paymentMethodOptions;

final PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodTypes? paymentMethodTypes;

final PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsSaveDefaultPaymentMethod? saveDefaultPaymentMethod;

Map<String, dynamic> toJson() { return {
  if (paymentMethodOptions != null) 'payment_method_options': paymentMethodOptions?.toJson(),
  if (paymentMethodTypes != null) 'payment_method_types': paymentMethodTypes?.toJson(),
  if (saveDefaultPaymentMethod != null) 'save_default_payment_method': saveDefaultPaymentMethod?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'payment_method_options', 'payment_method_types', 'save_default_payment_method'}.contains(key)); } 
PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettings copyWith({PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptions Function()? paymentMethodOptions, PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodTypes Function()? paymentMethodTypes, PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettingsSaveDefaultPaymentMethod Function()? saveDefaultPaymentMethod, }) { return PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettings(
  paymentMethodOptions: paymentMethodOptions != null ? paymentMethodOptions() : this.paymentMethodOptions,
  paymentMethodTypes: paymentMethodTypes != null ? paymentMethodTypes() : this.paymentMethodTypes,
  saveDefaultPaymentMethod: saveDefaultPaymentMethod != null ? saveDefaultPaymentMethod() : this.saveDefaultPaymentMethod,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettings &&
          paymentMethodOptions == other.paymentMethodOptions &&
          paymentMethodTypes == other.paymentMethodTypes &&
          saveDefaultPaymentMethod == other.saveDefaultPaymentMethod; } 
@override int get hashCode { return Object.hash(paymentMethodOptions, paymentMethodTypes, saveDefaultPaymentMethod); } 
@override String toString() { return 'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestPaymentSettings(paymentMethodOptions: $paymentMethodOptions, paymentMethodTypes: $paymentMethodTypes, saveDefaultPaymentMethod: $saveDefaultPaymentMethod)'; } 
 }
