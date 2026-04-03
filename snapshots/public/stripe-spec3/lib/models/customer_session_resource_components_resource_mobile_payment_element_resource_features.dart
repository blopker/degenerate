// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodAllowRedisplayFilters {const CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodAllowRedisplayFilters._(this.value);

factory CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodAllowRedisplayFilters.fromJson(String json) { return switch (json) {
  'always' => always,
  'limited' => limited,
  'unspecified' => unspecified,
  _ => CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodAllowRedisplayFilters._(json),
}; }

static const CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodAllowRedisplayFilters always = CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodAllowRedisplayFilters._('always');

static const CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodAllowRedisplayFilters limited = CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodAllowRedisplayFilters._('limited');

static const CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodAllowRedisplayFilters unspecified = CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodAllowRedisplayFilters._('unspecified');

static const List<CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodAllowRedisplayFilters> values = [always, limited, unspecified];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodAllowRedisplayFilters && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodAllowRedisplayFilters($value)'; } 
 }
/// Controls whether or not the mobile payment element shows saved payment methods.
@immutable final class CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodRedisplay {const CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodRedisplay._(this.value);

factory CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodRedisplay.fromJson(String json) { return switch (json) {
  'disabled' => disabled,
  'enabled' => enabled,
  _ => CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodRedisplay._(json),
}; }

static const CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodRedisplay disabled = CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodRedisplay._('disabled');

static const CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodRedisplay enabled = CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodRedisplay._('enabled');

static const List<CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodRedisplay> values = [disabled, enabled];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodRedisplay && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodRedisplay($value)'; } 
 }
/// Controls whether the mobile payment element displays the option to remove a saved payment method."
/// 
/// Allowing buyers to remove their saved payment methods impacts subscriptions that depend on that payment method. Removing the payment method detaches the [`customer` object](https://docs.stripe.com/api/payment_methods/object#payment_method_object-customer) from that [PaymentMethod](https://docs.stripe.com/api/payment_methods).
@immutable final class CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodRemove {const CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodRemove._(this.value);

factory CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodRemove.fromJson(String json) { return switch (json) {
  'disabled' => disabled,
  'enabled' => enabled,
  _ => CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodRemove._(json),
}; }

static const CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodRemove disabled = CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodRemove._('disabled');

static const CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodRemove enabled = CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodRemove._('enabled');

static const List<CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodRemove> values = [disabled, enabled];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodRemove && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodRemove($value)'; } 
 }
/// Controls whether the mobile payment element displays a checkbox offering to save a new payment method.
/// 
/// If a customer checks the box, the [`allow_redisplay`](https://docs.stripe.com/api/payment_methods/object#payment_method_object-allow_redisplay) value on the PaymentMethod is set to `'always'` at confirmation time. For PaymentIntents, the [`setup_future_usage`](https://docs.stripe.com/api/payment_intents/object#payment_intent_object-setup_future_usage) value is also set to the value defined in `payment_method_save_usage`.
@immutable final class CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodSave {const CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodSave._(this.value);

factory CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodSave.fromJson(String json) { return switch (json) {
  'disabled' => disabled,
  'enabled' => enabled,
  _ => CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodSave._(json),
}; }

static const CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodSave disabled = CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodSave._('disabled');

static const CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodSave enabled = CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodSave._('enabled');

static const List<CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodSave> values = [disabled, enabled];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodSave && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodSave($value)'; } 
 }
/// Allows overriding the value of allow_override when saving a new payment method when payment_method_save is set to disabled. Use values: "always", "limited", or "unspecified".
/// 
/// If not specified, defaults to `nil` (no override value).
@immutable final class CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodSaveAllowRedisplayOverride {const CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodSaveAllowRedisplayOverride._(this.value);

factory CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodSaveAllowRedisplayOverride.fromJson(String json) { return switch (json) {
  'always' => always,
  'limited' => limited,
  'unspecified' => unspecified,
  _ => CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodSaveAllowRedisplayOverride._(json),
}; }

static const CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodSaveAllowRedisplayOverride always = CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodSaveAllowRedisplayOverride._('always');

static const CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodSaveAllowRedisplayOverride limited = CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodSaveAllowRedisplayOverride._('limited');

static const CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodSaveAllowRedisplayOverride unspecified = CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodSaveAllowRedisplayOverride._('unspecified');

static const List<CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodSaveAllowRedisplayOverride> values = [always, limited, unspecified];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodSaveAllowRedisplayOverride && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodSaveAllowRedisplayOverride($value)'; } 
 }
/// This hash contains the features the mobile payment element supports.
@immutable final class CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeatures {const CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeatures({this.paymentMethodAllowRedisplayFilters, this.paymentMethodRedisplay, this.paymentMethodRemove, this.paymentMethodSave, this.paymentMethodSaveAllowRedisplayOverride, });

factory CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeatures.fromJson(Map<String, dynamic> json) { return CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeatures(
  paymentMethodAllowRedisplayFilters: (json['payment_method_allow_redisplay_filters'] as List<dynamic>?)?.map((e) => CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodAllowRedisplayFilters.fromJson(e as String)).toList(),
  paymentMethodRedisplay: json['payment_method_redisplay'] != null ? CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodRedisplay.fromJson(json['payment_method_redisplay'] as String) : null,
  paymentMethodRemove: json['payment_method_remove'] != null ? CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodRemove.fromJson(json['payment_method_remove'] as String) : null,
  paymentMethodSave: json['payment_method_save'] != null ? CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodSave.fromJson(json['payment_method_save'] as String) : null,
  paymentMethodSaveAllowRedisplayOverride: json['payment_method_save_allow_redisplay_override'] != null ? CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodSaveAllowRedisplayOverride.fromJson(json['payment_method_save_allow_redisplay_override'] as String) : null,
); }

/// A list of [`allow_redisplay`](https://docs.stripe.com/api/payment_methods/object#payment_method_object-allow_redisplay) values that controls which saved payment methods the mobile payment element displays by filtering to only show payment methods with an `allow_redisplay` value that is present in this list.
/// 
/// If not specified, defaults to `["always"]`. In order to display all saved payment methods, specify `["always", "limited", "unspecified"]`.
final List<CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodAllowRedisplayFilters>? paymentMethodAllowRedisplayFilters;

/// Controls whether or not the mobile payment element shows saved payment methods.
final CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodRedisplay? paymentMethodRedisplay;

/// Controls whether the mobile payment element displays the option to remove a saved payment method."
/// 
/// Allowing buyers to remove their saved payment methods impacts subscriptions that depend on that payment method. Removing the payment method detaches the [`customer` object](https://docs.stripe.com/api/payment_methods/object#payment_method_object-customer) from that [PaymentMethod](https://docs.stripe.com/api/payment_methods).
final CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodRemove? paymentMethodRemove;

/// Controls whether the mobile payment element displays a checkbox offering to save a new payment method.
/// 
/// If a customer checks the box, the [`allow_redisplay`](https://docs.stripe.com/api/payment_methods/object#payment_method_object-allow_redisplay) value on the PaymentMethod is set to `'always'` at confirmation time. For PaymentIntents, the [`setup_future_usage`](https://docs.stripe.com/api/payment_intents/object#payment_intent_object-setup_future_usage) value is also set to the value defined in `payment_method_save_usage`.
final CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodSave? paymentMethodSave;

/// Allows overriding the value of allow_override when saving a new payment method when payment_method_save is set to disabled. Use values: "always", "limited", or "unspecified".
/// 
/// If not specified, defaults to `nil` (no override value).
final CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodSaveAllowRedisplayOverride? paymentMethodSaveAllowRedisplayOverride;

Map<String, dynamic> toJson() { return {
  if (paymentMethodAllowRedisplayFilters != null) 'payment_method_allow_redisplay_filters': paymentMethodAllowRedisplayFilters?.map((e) => e.toJson()).toList(),
  if (paymentMethodRedisplay != null) 'payment_method_redisplay': paymentMethodRedisplay?.toJson(),
  if (paymentMethodRemove != null) 'payment_method_remove': paymentMethodRemove?.toJson(),
  if (paymentMethodSave != null) 'payment_method_save': paymentMethodSave?.toJson(),
  if (paymentMethodSaveAllowRedisplayOverride != null) 'payment_method_save_allow_redisplay_override': paymentMethodSaveAllowRedisplayOverride?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'payment_method_allow_redisplay_filters', 'payment_method_redisplay', 'payment_method_remove', 'payment_method_save', 'payment_method_save_allow_redisplay_override'}.contains(key)); } 
CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeatures copyWith({List<CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodAllowRedisplayFilters>? Function()? paymentMethodAllowRedisplayFilters, CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodRedisplay? Function()? paymentMethodRedisplay, CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodRemove? Function()? paymentMethodRemove, CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodSave? Function()? paymentMethodSave, CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodSaveAllowRedisplayOverride? Function()? paymentMethodSaveAllowRedisplayOverride, }) { return CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeatures(
  paymentMethodAllowRedisplayFilters: paymentMethodAllowRedisplayFilters != null ? paymentMethodAllowRedisplayFilters() : this.paymentMethodAllowRedisplayFilters,
  paymentMethodRedisplay: paymentMethodRedisplay != null ? paymentMethodRedisplay() : this.paymentMethodRedisplay,
  paymentMethodRemove: paymentMethodRemove != null ? paymentMethodRemove() : this.paymentMethodRemove,
  paymentMethodSave: paymentMethodSave != null ? paymentMethodSave() : this.paymentMethodSave,
  paymentMethodSaveAllowRedisplayOverride: paymentMethodSaveAllowRedisplayOverride != null ? paymentMethodSaveAllowRedisplayOverride() : this.paymentMethodSaveAllowRedisplayOverride,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeatures &&
          listEquals(paymentMethodAllowRedisplayFilters, other.paymentMethodAllowRedisplayFilters) &&
          paymentMethodRedisplay == other.paymentMethodRedisplay &&
          paymentMethodRemove == other.paymentMethodRemove &&
          paymentMethodSave == other.paymentMethodSave &&
          paymentMethodSaveAllowRedisplayOverride == other.paymentMethodSaveAllowRedisplayOverride; } 
@override int get hashCode { return Object.hash(Object.hashAll(paymentMethodAllowRedisplayFilters ?? const []), paymentMethodRedisplay, paymentMethodRemove, paymentMethodSave, paymentMethodSaveAllowRedisplayOverride); } 
@override String toString() { return 'CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeatures(paymentMethodAllowRedisplayFilters: $paymentMethodAllowRedisplayFilters, paymentMethodRedisplay: $paymentMethodRedisplay, paymentMethodRemove: $paymentMethodRemove, paymentMethodSave: $paymentMethodSave, paymentMethodSaveAllowRedisplayOverride: $paymentMethodSaveAllowRedisplayOverride)'; } 
 }
