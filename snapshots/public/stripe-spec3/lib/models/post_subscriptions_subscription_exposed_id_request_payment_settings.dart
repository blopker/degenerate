// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_subscriptions_subscription_exposed_id_request_payment_settings_payment_method_options.dart';import 'post_subscriptions_subscription_exposed_id_request_payment_settings_payment_method_types.dart';final class PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsSaveDefaultPaymentMethod {const PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsSaveDefaultPaymentMethod._(this.value);

factory PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsSaveDefaultPaymentMethod.fromJson(String json) { return switch (json) {
  'off' => off,
  'on_subscription' => onSubscription,
  _ => PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsSaveDefaultPaymentMethod._(json),
}; }

static const PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsSaveDefaultPaymentMethod off = PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsSaveDefaultPaymentMethod._('off');

static const PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsSaveDefaultPaymentMethod onSubscription = PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsSaveDefaultPaymentMethod._('on_subscription');

static const List<PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsSaveDefaultPaymentMethod> values = [off, onSubscription];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsSaveDefaultPaymentMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsSaveDefaultPaymentMethod($value)'; } 
 }
/// Payment settings to pass to invoices created by the subscription.
final class PostSubscriptionsSubscriptionExposedIdRequestPaymentSettings {const PostSubscriptionsSubscriptionExposedIdRequestPaymentSettings({this.paymentMethodOptions, this.paymentMethodTypes, this.saveDefaultPaymentMethod, });

factory PostSubscriptionsSubscriptionExposedIdRequestPaymentSettings.fromJson(Map<String, dynamic> json) { return PostSubscriptionsSubscriptionExposedIdRequestPaymentSettings(
  paymentMethodOptions: json['payment_method_options'] != null ? PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptions.fromJson(json['payment_method_options'] as Map<String, dynamic>) : null,
  paymentMethodTypes: json['payment_method_types'] != null ? OneOf2.parse(json['payment_method_types'], fromA: (v) => (v as List<dynamic>).map((e) => PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodTypesVariant1.fromJson(e as String)).toList(), fromB: (v) => PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodTypesVariant2.fromJson(v as String),) : null,
  saveDefaultPaymentMethod: json['save_default_payment_method'] != null ? PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsSaveDefaultPaymentMethod.fromJson(json['save_default_payment_method'] as String) : null,
); }

final PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptions? paymentMethodOptions;

final PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodTypes? paymentMethodTypes;

final PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsSaveDefaultPaymentMethod? saveDefaultPaymentMethod;

Map<String, dynamic> toJson() { return {
  if (paymentMethodOptions != null) 'payment_method_options': paymentMethodOptions?.toJson(),
  if (paymentMethodTypes != null) 'payment_method_types': paymentMethodTypes?.toJson(),
  if (saveDefaultPaymentMethod != null) 'save_default_payment_method': saveDefaultPaymentMethod?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'payment_method_options', 'payment_method_types', 'save_default_payment_method'}.contains(key)); } 
PostSubscriptionsSubscriptionExposedIdRequestPaymentSettings copyWith({PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodOptions Function()? paymentMethodOptions, PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsPaymentMethodTypes Function()? paymentMethodTypes, PostSubscriptionsSubscriptionExposedIdRequestPaymentSettingsSaveDefaultPaymentMethod Function()? saveDefaultPaymentMethod, }) { return PostSubscriptionsSubscriptionExposedIdRequestPaymentSettings(
  paymentMethodOptions: paymentMethodOptions != null ? paymentMethodOptions() : this.paymentMethodOptions,
  paymentMethodTypes: paymentMethodTypes != null ? paymentMethodTypes() : this.paymentMethodTypes,
  saveDefaultPaymentMethod: saveDefaultPaymentMethod != null ? saveDefaultPaymentMethod() : this.saveDefaultPaymentMethod,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSubscriptionsSubscriptionExposedIdRequestPaymentSettings &&
          paymentMethodOptions == other.paymentMethodOptions &&
          paymentMethodTypes == other.paymentMethodTypes &&
          saveDefaultPaymentMethod == other.saveDefaultPaymentMethod; } 
@override int get hashCode { return Object.hash(paymentMethodOptions, paymentMethodTypes, saveDefaultPaymentMethod); } 
@override String toString() { return 'PostSubscriptionsSubscriptionExposedIdRequestPaymentSettings(paymentMethodOptions: $paymentMethodOptions, paymentMethodTypes: $paymentMethodTypes, saveDefaultPaymentMethod: $saveDefaultPaymentMethod)'; } 
 }
