// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostCustomerSessionsRequestComponentsCustomerSheetFeaturesPaymentMethodAllowRedisplayFilters {const PostCustomerSessionsRequestComponentsCustomerSheetFeaturesPaymentMethodAllowRedisplayFilters._(this.value);

factory PostCustomerSessionsRequestComponentsCustomerSheetFeaturesPaymentMethodAllowRedisplayFilters.fromJson(String json) { return switch (json) {
  'always' => always,
  'limited' => limited,
  'unspecified' => unspecified,
  _ => PostCustomerSessionsRequestComponentsCustomerSheetFeaturesPaymentMethodAllowRedisplayFilters._(json),
}; }

static const PostCustomerSessionsRequestComponentsCustomerSheetFeaturesPaymentMethodAllowRedisplayFilters always = PostCustomerSessionsRequestComponentsCustomerSheetFeaturesPaymentMethodAllowRedisplayFilters._('always');

static const PostCustomerSessionsRequestComponentsCustomerSheetFeaturesPaymentMethodAllowRedisplayFilters limited = PostCustomerSessionsRequestComponentsCustomerSheetFeaturesPaymentMethodAllowRedisplayFilters._('limited');

static const PostCustomerSessionsRequestComponentsCustomerSheetFeaturesPaymentMethodAllowRedisplayFilters unspecified = PostCustomerSessionsRequestComponentsCustomerSheetFeaturesPaymentMethodAllowRedisplayFilters._('unspecified');

static const List<PostCustomerSessionsRequestComponentsCustomerSheetFeaturesPaymentMethodAllowRedisplayFilters> values = [always, limited, unspecified];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCustomerSessionsRequestComponentsCustomerSheetFeaturesPaymentMethodAllowRedisplayFilters && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCustomerSessionsRequestComponentsCustomerSheetFeaturesPaymentMethodAllowRedisplayFilters($value)'; } 
 }
@immutable final class PostCustomerSessionsRequestComponentsCustomerSheetFeaturesPaymentMethodRemove {const PostCustomerSessionsRequestComponentsCustomerSheetFeaturesPaymentMethodRemove._(this.value);

factory PostCustomerSessionsRequestComponentsCustomerSheetFeaturesPaymentMethodRemove.fromJson(String json) { return switch (json) {
  'disabled' => disabled,
  'enabled' => enabled,
  _ => PostCustomerSessionsRequestComponentsCustomerSheetFeaturesPaymentMethodRemove._(json),
}; }

static const PostCustomerSessionsRequestComponentsCustomerSheetFeaturesPaymentMethodRemove disabled = PostCustomerSessionsRequestComponentsCustomerSheetFeaturesPaymentMethodRemove._('disabled');

static const PostCustomerSessionsRequestComponentsCustomerSheetFeaturesPaymentMethodRemove enabled = PostCustomerSessionsRequestComponentsCustomerSheetFeaturesPaymentMethodRemove._('enabled');

static const List<PostCustomerSessionsRequestComponentsCustomerSheetFeaturesPaymentMethodRemove> values = [disabled, enabled];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCustomerSessionsRequestComponentsCustomerSheetFeaturesPaymentMethodRemove && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCustomerSessionsRequestComponentsCustomerSheetFeaturesPaymentMethodRemove($value)'; } 
 }
@immutable final class PostCustomerSessionsRequestComponentsCustomerSheetFeatures {const PostCustomerSessionsRequestComponentsCustomerSheetFeatures({this.paymentMethodAllowRedisplayFilters, this.paymentMethodRemove, });

factory PostCustomerSessionsRequestComponentsCustomerSheetFeatures.fromJson(Map<String, dynamic> json) { return PostCustomerSessionsRequestComponentsCustomerSheetFeatures(
  paymentMethodAllowRedisplayFilters: (json['payment_method_allow_redisplay_filters'] as List<dynamic>?)?.map((e) => PostCustomerSessionsRequestComponentsCustomerSheetFeaturesPaymentMethodAllowRedisplayFilters.fromJson(e as String)).toList(),
  paymentMethodRemove: json['payment_method_remove'] != null ? PostCustomerSessionsRequestComponentsCustomerSheetFeaturesPaymentMethodRemove.fromJson(json['payment_method_remove'] as String) : null,
); }

final List<PostCustomerSessionsRequestComponentsCustomerSheetFeaturesPaymentMethodAllowRedisplayFilters>? paymentMethodAllowRedisplayFilters;

final PostCustomerSessionsRequestComponentsCustomerSheetFeaturesPaymentMethodRemove? paymentMethodRemove;

Map<String, dynamic> toJson() { return {
  if (paymentMethodAllowRedisplayFilters != null) 'payment_method_allow_redisplay_filters': paymentMethodAllowRedisplayFilters?.map((e) => e.toJson()).toList(),
  if (paymentMethodRemove != null) 'payment_method_remove': paymentMethodRemove?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'payment_method_allow_redisplay_filters', 'payment_method_remove'}.contains(key)); } 
PostCustomerSessionsRequestComponentsCustomerSheetFeatures copyWith({List<PostCustomerSessionsRequestComponentsCustomerSheetFeaturesPaymentMethodAllowRedisplayFilters> Function()? paymentMethodAllowRedisplayFilters, PostCustomerSessionsRequestComponentsCustomerSheetFeaturesPaymentMethodRemove Function()? paymentMethodRemove, }) { return PostCustomerSessionsRequestComponentsCustomerSheetFeatures(
  paymentMethodAllowRedisplayFilters: paymentMethodAllowRedisplayFilters != null ? paymentMethodAllowRedisplayFilters() : this.paymentMethodAllowRedisplayFilters,
  paymentMethodRemove: paymentMethodRemove != null ? paymentMethodRemove() : this.paymentMethodRemove,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCustomerSessionsRequestComponentsCustomerSheetFeatures &&
          listEquals(paymentMethodAllowRedisplayFilters, other.paymentMethodAllowRedisplayFilters) &&
          paymentMethodRemove == other.paymentMethodRemove; } 
@override int get hashCode { return Object.hash(Object.hashAll(paymentMethodAllowRedisplayFilters ?? const []), paymentMethodRemove); } 
@override String toString() { return 'PostCustomerSessionsRequestComponentsCustomerSheetFeatures(paymentMethodAllowRedisplayFilters: $paymentMethodAllowRedisplayFilters, paymentMethodRemove: $paymentMethodRemove)'; } 
 }
