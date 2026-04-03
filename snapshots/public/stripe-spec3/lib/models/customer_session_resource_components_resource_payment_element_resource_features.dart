// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodAllowRedisplayFilters {const CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodAllowRedisplayFilters._(this.value);

factory CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodAllowRedisplayFilters.fromJson(String json) { return switch (json) {
  'always' => always,
  'limited' => limited,
  'unspecified' => unspecified,
  _ => CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodAllowRedisplayFilters._(json),
}; }

static const CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodAllowRedisplayFilters always = CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodAllowRedisplayFilters._('always');

static const CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodAllowRedisplayFilters limited = CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodAllowRedisplayFilters._('limited');

static const CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodAllowRedisplayFilters unspecified = CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodAllowRedisplayFilters._('unspecified');

static const List<CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodAllowRedisplayFilters> values = [always, limited, unspecified];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodAllowRedisplayFilters && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodAllowRedisplayFilters($value)'; } 
 }
/// Controls whether or not the Payment Element shows saved payment methods. This parameter defaults to `disabled`.
@immutable final class CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodRedisplay {const CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodRedisplay._(this.value);

factory CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodRedisplay.fromJson(String json) { return switch (json) {
  'disabled' => disabled,
  'enabled' => enabled,
  _ => CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodRedisplay._(json),
}; }

static const CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodRedisplay disabled = CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodRedisplay._('disabled');

static const CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodRedisplay enabled = CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodRedisplay._('enabled');

static const List<CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodRedisplay> values = [disabled, enabled];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodRedisplay && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodRedisplay($value)'; } 
 }
/// Controls whether the Payment Element displays the option to remove a saved payment method. This parameter defaults to `disabled`.
/// 
/// Allowing buyers to remove their saved payment methods impacts subscriptions that depend on that payment method. Removing the payment method detaches the [`customer` object](https://docs.stripe.com/api/payment_methods/object#payment_method_object-customer) from that [PaymentMethod](https://docs.stripe.com/api/payment_methods).
@immutable final class CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodRemove {const CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodRemove._(this.value);

factory CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodRemove.fromJson(String json) { return switch (json) {
  'disabled' => disabled,
  'enabled' => enabled,
  _ => CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodRemove._(json),
}; }

static const CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodRemove disabled = CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodRemove._('disabled');

static const CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodRemove enabled = CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodRemove._('enabled');

static const List<CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodRemove> values = [disabled, enabled];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodRemove && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodRemove($value)'; } 
 }
/// Controls whether the Payment Element displays a checkbox offering to save a new payment method. This parameter defaults to `disabled`.
/// 
/// If a customer checks the box, the [`allow_redisplay`](https://docs.stripe.com/api/payment_methods/object#payment_method_object-allow_redisplay) value on the PaymentMethod is set to `'always'` at confirmation time. For PaymentIntents, the [`setup_future_usage`](https://docs.stripe.com/api/payment_intents/object#payment_intent_object-setup_future_usage) value is also set to the value defined in `payment_method_save_usage`.
@immutable final class CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodSave {const CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodSave._(this.value);

factory CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodSave.fromJson(String json) { return switch (json) {
  'disabled' => disabled,
  'enabled' => enabled,
  _ => CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodSave._(json),
}; }

static const CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodSave disabled = CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodSave._('disabled');

static const CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodSave enabled = CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodSave._('enabled');

static const List<CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodSave> values = [disabled, enabled];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodSave && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodSave($value)'; } 
 }
/// When using PaymentIntents and the customer checks the save checkbox, this field determines the [`setup_future_usage`](https://docs.stripe.com/api/payment_intents/object#payment_intent_object-setup_future_usage) value used to confirm the PaymentIntent.
/// 
/// When using SetupIntents, directly configure the [`usage`](https://docs.stripe.com/api/setup_intents/object#setup_intent_object-usage) value on SetupIntent creation.
@immutable final class CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodSaveUsage {const CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodSaveUsage._(this.value);

factory CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodSaveUsage.fromJson(String json) { return switch (json) {
  'off_session' => offSession,
  'on_session' => onSession,
  _ => CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodSaveUsage._(json),
}; }

static const CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodSaveUsage offSession = CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodSaveUsage._('off_session');

static const CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodSaveUsage onSession = CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodSaveUsage._('on_session');

static const List<CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodSaveUsage> values = [offSession, onSession];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodSaveUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodSaveUsage($value)'; } 
 }
/// This hash contains the features the Payment Element supports.
@immutable final class CustomerSessionResourceComponentsResourcePaymentElementResourceFeatures {const CustomerSessionResourceComponentsResourcePaymentElementResourceFeatures({required this.paymentMethodAllowRedisplayFilters, required this.paymentMethodRedisplay, required this.paymentMethodRemove, required this.paymentMethodSave, this.paymentMethodRedisplayLimit, this.paymentMethodSaveUsage, });

factory CustomerSessionResourceComponentsResourcePaymentElementResourceFeatures.fromJson(Map<String, dynamic> json) { return CustomerSessionResourceComponentsResourcePaymentElementResourceFeatures(
  paymentMethodAllowRedisplayFilters: (json['payment_method_allow_redisplay_filters'] as List<dynamic>).map((e) => CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodAllowRedisplayFilters.fromJson(e as String)).toList(),
  paymentMethodRedisplay: CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodRedisplay.fromJson(json['payment_method_redisplay'] as String),
  paymentMethodRedisplayLimit: json['payment_method_redisplay_limit'] != null ? (json['payment_method_redisplay_limit'] as num).toInt() : null,
  paymentMethodRemove: CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodRemove.fromJson(json['payment_method_remove'] as String),
  paymentMethodSave: CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodSave.fromJson(json['payment_method_save'] as String),
  paymentMethodSaveUsage: json['payment_method_save_usage'] != null ? CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodSaveUsage.fromJson(json['payment_method_save_usage'] as String) : null,
); }

/// A list of [`allow_redisplay`](https://docs.stripe.com/api/payment_methods/object#payment_method_object-allow_redisplay) values that controls which saved payment methods the Payment Element displays by filtering to only show payment methods with an `allow_redisplay` value that is present in this list.
/// 
/// If not specified, defaults to ["always"]. In order to display all saved payment methods, specify ["always", "limited", "unspecified"].
final List<CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodAllowRedisplayFilters> paymentMethodAllowRedisplayFilters;

/// Controls whether or not the Payment Element shows saved payment methods. This parameter defaults to `disabled`.
final CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodRedisplay paymentMethodRedisplay;

/// Determines the max number of saved payment methods for the Payment Element to display. This parameter defaults to `3`. The maximum redisplay limit is `10`.
final int? paymentMethodRedisplayLimit;

/// Controls whether the Payment Element displays the option to remove a saved payment method. This parameter defaults to `disabled`.
/// 
/// Allowing buyers to remove their saved payment methods impacts subscriptions that depend on that payment method. Removing the payment method detaches the [`customer` object](https://docs.stripe.com/api/payment_methods/object#payment_method_object-customer) from that [PaymentMethod](https://docs.stripe.com/api/payment_methods).
final CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodRemove paymentMethodRemove;

/// Controls whether the Payment Element displays a checkbox offering to save a new payment method. This parameter defaults to `disabled`.
/// 
/// If a customer checks the box, the [`allow_redisplay`](https://docs.stripe.com/api/payment_methods/object#payment_method_object-allow_redisplay) value on the PaymentMethod is set to `'always'` at confirmation time. For PaymentIntents, the [`setup_future_usage`](https://docs.stripe.com/api/payment_intents/object#payment_intent_object-setup_future_usage) value is also set to the value defined in `payment_method_save_usage`.
final CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodSave paymentMethodSave;

/// When using PaymentIntents and the customer checks the save checkbox, this field determines the [`setup_future_usage`](https://docs.stripe.com/api/payment_intents/object#payment_intent_object-setup_future_usage) value used to confirm the PaymentIntent.
/// 
/// When using SetupIntents, directly configure the [`usage`](https://docs.stripe.com/api/setup_intents/object#setup_intent_object-usage) value on SetupIntent creation.
final CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodSaveUsage? paymentMethodSaveUsage;

Map<String, dynamic> toJson() { return {
  'payment_method_allow_redisplay_filters': paymentMethodAllowRedisplayFilters.map((e) => e.toJson()).toList(),
  'payment_method_redisplay': paymentMethodRedisplay.toJson(),
  'payment_method_redisplay_limit': ?paymentMethodRedisplayLimit,
  'payment_method_remove': paymentMethodRemove.toJson(),
  'payment_method_save': paymentMethodSave.toJson(),
  if (paymentMethodSaveUsage != null) 'payment_method_save_usage': paymentMethodSaveUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('payment_method_allow_redisplay_filters') &&
      json.containsKey('payment_method_redisplay') &&
      json.containsKey('payment_method_remove') &&
      json.containsKey('payment_method_save'); } 
CustomerSessionResourceComponentsResourcePaymentElementResourceFeatures copyWith({List<CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodAllowRedisplayFilters>? paymentMethodAllowRedisplayFilters, CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodRedisplay? paymentMethodRedisplay, int? Function()? paymentMethodRedisplayLimit, CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodRemove? paymentMethodRemove, CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodSave? paymentMethodSave, CustomerSessionResourceComponentsResourcePaymentElementResourceFeaturesPaymentMethodSaveUsage? Function()? paymentMethodSaveUsage, }) { return CustomerSessionResourceComponentsResourcePaymentElementResourceFeatures(
  paymentMethodAllowRedisplayFilters: paymentMethodAllowRedisplayFilters ?? this.paymentMethodAllowRedisplayFilters,
  paymentMethodRedisplay: paymentMethodRedisplay ?? this.paymentMethodRedisplay,
  paymentMethodRedisplayLimit: paymentMethodRedisplayLimit != null ? paymentMethodRedisplayLimit() : this.paymentMethodRedisplayLimit,
  paymentMethodRemove: paymentMethodRemove ?? this.paymentMethodRemove,
  paymentMethodSave: paymentMethodSave ?? this.paymentMethodSave,
  paymentMethodSaveUsage: paymentMethodSaveUsage != null ? paymentMethodSaveUsage() : this.paymentMethodSaveUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CustomerSessionResourceComponentsResourcePaymentElementResourceFeatures &&
          listEquals(paymentMethodAllowRedisplayFilters, other.paymentMethodAllowRedisplayFilters) &&
          paymentMethodRedisplay == other.paymentMethodRedisplay &&
          paymentMethodRedisplayLimit == other.paymentMethodRedisplayLimit &&
          paymentMethodRemove == other.paymentMethodRemove &&
          paymentMethodSave == other.paymentMethodSave &&
          paymentMethodSaveUsage == other.paymentMethodSaveUsage; } 
@override int get hashCode { return Object.hash(Object.hashAll(paymentMethodAllowRedisplayFilters), paymentMethodRedisplay, paymentMethodRedisplayLimit, paymentMethodRemove, paymentMethodSave, paymentMethodSaveUsage); } 
@override String toString() { return 'CustomerSessionResourceComponentsResourcePaymentElementResourceFeatures(paymentMethodAllowRedisplayFilters: $paymentMethodAllowRedisplayFilters, paymentMethodRedisplay: $paymentMethodRedisplay, paymentMethodRedisplayLimit: $paymentMethodRedisplayLimit, paymentMethodRemove: $paymentMethodRemove, paymentMethodSave: $paymentMethodSave, paymentMethodSaveUsage: $paymentMethodSaveUsage)'; } 
 }
