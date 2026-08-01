// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentPagesCheckoutSessionSavedPaymentMethodOptionsAllowRedisplayFilters {const PaymentPagesCheckoutSessionSavedPaymentMethodOptionsAllowRedisplayFilters._(this.value);

factory PaymentPagesCheckoutSessionSavedPaymentMethodOptionsAllowRedisplayFilters.fromJson(String json) { return switch (json) {
  'always' => always,
  'limited' => limited,
  'unspecified' => unspecified,
  _ => PaymentPagesCheckoutSessionSavedPaymentMethodOptionsAllowRedisplayFilters._(json),
}; }

static const PaymentPagesCheckoutSessionSavedPaymentMethodOptionsAllowRedisplayFilters always = PaymentPagesCheckoutSessionSavedPaymentMethodOptionsAllowRedisplayFilters._('always');

static const PaymentPagesCheckoutSessionSavedPaymentMethodOptionsAllowRedisplayFilters limited = PaymentPagesCheckoutSessionSavedPaymentMethodOptionsAllowRedisplayFilters._('limited');

static const PaymentPagesCheckoutSessionSavedPaymentMethodOptionsAllowRedisplayFilters unspecified = PaymentPagesCheckoutSessionSavedPaymentMethodOptionsAllowRedisplayFilters._('unspecified');

static const List<PaymentPagesCheckoutSessionSavedPaymentMethodOptionsAllowRedisplayFilters> values = [always, limited, unspecified];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentPagesCheckoutSessionSavedPaymentMethodOptionsAllowRedisplayFilters && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentPagesCheckoutSessionSavedPaymentMethodOptionsAllowRedisplayFilters($value)'; } 
 }
/// Enable customers to choose if they wish to remove their saved payment methods. Disabled by default.
@immutable final class PaymentPagesCheckoutSessionSavedPaymentMethodOptionsPaymentMethodRemove {const PaymentPagesCheckoutSessionSavedPaymentMethodOptionsPaymentMethodRemove._(this.value);

factory PaymentPagesCheckoutSessionSavedPaymentMethodOptionsPaymentMethodRemove.fromJson(String json) { return switch (json) {
  'disabled' => disabled,
  'enabled' => enabled,
  _ => PaymentPagesCheckoutSessionSavedPaymentMethodOptionsPaymentMethodRemove._(json),
}; }

static const PaymentPagesCheckoutSessionSavedPaymentMethodOptionsPaymentMethodRemove disabled = PaymentPagesCheckoutSessionSavedPaymentMethodOptionsPaymentMethodRemove._('disabled');

static const PaymentPagesCheckoutSessionSavedPaymentMethodOptionsPaymentMethodRemove enabled = PaymentPagesCheckoutSessionSavedPaymentMethodOptionsPaymentMethodRemove._('enabled');

static const List<PaymentPagesCheckoutSessionSavedPaymentMethodOptionsPaymentMethodRemove> values = [disabled, enabled];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentPagesCheckoutSessionSavedPaymentMethodOptionsPaymentMethodRemove && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentPagesCheckoutSessionSavedPaymentMethodOptionsPaymentMethodRemove($value)'; } 
 }
/// Enable customers to choose if they wish to save their payment method for future use. Disabled by default.
@immutable final class PaymentPagesCheckoutSessionSavedPaymentMethodOptionsPaymentMethodSave {const PaymentPagesCheckoutSessionSavedPaymentMethodOptionsPaymentMethodSave._(this.value);

factory PaymentPagesCheckoutSessionSavedPaymentMethodOptionsPaymentMethodSave.fromJson(String json) { return switch (json) {
  'disabled' => disabled,
  'enabled' => enabled,
  _ => PaymentPagesCheckoutSessionSavedPaymentMethodOptionsPaymentMethodSave._(json),
}; }

static const PaymentPagesCheckoutSessionSavedPaymentMethodOptionsPaymentMethodSave disabled = PaymentPagesCheckoutSessionSavedPaymentMethodOptionsPaymentMethodSave._('disabled');

static const PaymentPagesCheckoutSessionSavedPaymentMethodOptionsPaymentMethodSave enabled = PaymentPagesCheckoutSessionSavedPaymentMethodOptionsPaymentMethodSave._('enabled');

static const List<PaymentPagesCheckoutSessionSavedPaymentMethodOptionsPaymentMethodSave> values = [disabled, enabled];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentPagesCheckoutSessionSavedPaymentMethodOptionsPaymentMethodSave && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentPagesCheckoutSessionSavedPaymentMethodOptionsPaymentMethodSave($value)'; } 
 }
/// 
@immutable final class PaymentPagesCheckoutSessionSavedPaymentMethodOptions {const PaymentPagesCheckoutSessionSavedPaymentMethodOptions({this.allowRedisplayFilters = const Omittable.absent(), this.paymentMethodRemove = const Omittable.absent(), this.paymentMethodSave = const Omittable.absent(), });

factory PaymentPagesCheckoutSessionSavedPaymentMethodOptions.fromJson(Map<String, dynamic> json) { return PaymentPagesCheckoutSessionSavedPaymentMethodOptions(
  allowRedisplayFilters: json.containsKey('allow_redisplay_filters') ? Omittable((json['allow_redisplay_filters'] as List<dynamic>?)?.map((e) => PaymentPagesCheckoutSessionSavedPaymentMethodOptionsAllowRedisplayFilters.fromJson(e as String)).toList()) : const Omittable.absent(),
  paymentMethodRemove: json.containsKey('payment_method_remove') ? Omittable(json['payment_method_remove'] != null ? PaymentPagesCheckoutSessionSavedPaymentMethodOptionsPaymentMethodRemove.fromJson(json['payment_method_remove'] as String) : null) : const Omittable.absent(),
  paymentMethodSave: json.containsKey('payment_method_save') ? Omittable(json['payment_method_save'] != null ? PaymentPagesCheckoutSessionSavedPaymentMethodOptionsPaymentMethodSave.fromJson(json['payment_method_save'] as String) : null) : const Omittable.absent(),
); }

/// Uses the `allow_redisplay` value of each saved payment method to filter the set presented to a returning customer. By default, only saved payment methods with ’allow_redisplay: ‘always’ are shown in Checkout.
final Omittable<List<PaymentPagesCheckoutSessionSavedPaymentMethodOptionsAllowRedisplayFilters>?> allowRedisplayFilters;

/// Enable customers to choose if they wish to remove their saved payment methods. Disabled by default.
final Omittable<PaymentPagesCheckoutSessionSavedPaymentMethodOptionsPaymentMethodRemove?> paymentMethodRemove;

/// Enable customers to choose if they wish to save their payment method for future use. Disabled by default.
final Omittable<PaymentPagesCheckoutSessionSavedPaymentMethodOptionsPaymentMethodSave?> paymentMethodSave;

Map<String, dynamic> toJson() { return {
  if (allowRedisplayFilters.isPresent) 'allow_redisplay_filters': allowRedisplayFilters.value?.map((e) => e.toJson()).toList(),
  if (paymentMethodRemove.isPresent) 'payment_method_remove': paymentMethodRemove.value?.toJson(),
  if (paymentMethodSave.isPresent) 'payment_method_save': paymentMethodSave.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'allow_redisplay_filters', 'payment_method_remove', 'payment_method_save'}.contains(key)); } 
PaymentPagesCheckoutSessionSavedPaymentMethodOptions copyWith({Omittable<List<PaymentPagesCheckoutSessionSavedPaymentMethodOptionsAllowRedisplayFilters>?>? allowRedisplayFilters, Omittable<PaymentPagesCheckoutSessionSavedPaymentMethodOptionsPaymentMethodRemove?>? paymentMethodRemove, Omittable<PaymentPagesCheckoutSessionSavedPaymentMethodOptionsPaymentMethodSave?>? paymentMethodSave, }) { return PaymentPagesCheckoutSessionSavedPaymentMethodOptions(
  allowRedisplayFilters: allowRedisplayFilters ?? this.allowRedisplayFilters,
  paymentMethodRemove: paymentMethodRemove ?? this.paymentMethodRemove,
  paymentMethodSave: paymentMethodSave ?? this.paymentMethodSave,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentPagesCheckoutSessionSavedPaymentMethodOptions &&
          allowRedisplayFilters.isPresent == other.allowRedisplayFilters.isPresent &&
          listEquals(allowRedisplayFilters.value, other.allowRedisplayFilters.value) &&
          paymentMethodRemove == other.paymentMethodRemove &&
          paymentMethodSave == other.paymentMethodSave; } 
@override int get hashCode { return Object.hash(Object.hashAll(allowRedisplayFilters.value ?? const []), paymentMethodRemove, paymentMethodSave); } 
@override String toString() { return 'PaymentPagesCheckoutSessionSavedPaymentMethodOptions(allowRedisplayFilters: $allowRedisplayFilters, paymentMethodRemove: $paymentMethodRemove, paymentMethodSave: $paymentMethodSave)'; } 
 }
