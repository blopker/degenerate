// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodAllowRedisplayFilters {const PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodAllowRedisplayFilters._(this.value);

factory PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodAllowRedisplayFilters.fromJson(String json) { return switch (json) {
  'always' => always,
  'limited' => limited,
  'unspecified' => unspecified,
  _ => PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodAllowRedisplayFilters._(json),
}; }

static const PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodAllowRedisplayFilters always = PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodAllowRedisplayFilters._('always');

static const PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodAllowRedisplayFilters limited = PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodAllowRedisplayFilters._('limited');

static const PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodAllowRedisplayFilters unspecified = PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodAllowRedisplayFilters._('unspecified');

static const List<PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodAllowRedisplayFilters> values = [always, limited, unspecified];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodAllowRedisplayFilters && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodAllowRedisplayFilters($value)'; } 
 }
final class PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodRedisplay {const PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodRedisplay._(this.value);

factory PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodRedisplay.fromJson(String json) { return switch (json) {
  'disabled' => disabled,
  'enabled' => enabled,
  _ => PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodRedisplay._(json),
}; }

static const PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodRedisplay disabled = PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodRedisplay._('disabled');

static const PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodRedisplay enabled = PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodRedisplay._('enabled');

static const List<PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodRedisplay> values = [disabled, enabled];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodRedisplay && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodRedisplay($value)'; } 
 }
final class PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodRemove {const PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodRemove._(this.value);

factory PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodRemove.fromJson(String json) { return switch (json) {
  'disabled' => disabled,
  'enabled' => enabled,
  _ => PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodRemove._(json),
}; }

static const PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodRemove disabled = PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodRemove._('disabled');

static const PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodRemove enabled = PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodRemove._('enabled');

static const List<PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodRemove> values = [disabled, enabled];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodRemove && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodRemove($value)'; } 
 }
final class PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodSave {const PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodSave._(this.value);

factory PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodSave.fromJson(String json) { return switch (json) {
  'disabled' => disabled,
  'enabled' => enabled,
  _ => PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodSave._(json),
}; }

static const PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodSave disabled = PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodSave._('disabled');

static const PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodSave enabled = PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodSave._('enabled');

static const List<PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodSave> values = [disabled, enabled];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodSave && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodSave($value)'; } 
 }
final class PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodSaveAllowRedisplayOverride {const PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodSaveAllowRedisplayOverride._(this.value);

factory PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodSaveAllowRedisplayOverride.fromJson(String json) { return switch (json) {
  'always' => always,
  'limited' => limited,
  'unspecified' => unspecified,
  _ => PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodSaveAllowRedisplayOverride._(json),
}; }

static const PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodSaveAllowRedisplayOverride always = PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodSaveAllowRedisplayOverride._('always');

static const PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodSaveAllowRedisplayOverride limited = PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodSaveAllowRedisplayOverride._('limited');

static const PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodSaveAllowRedisplayOverride unspecified = PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodSaveAllowRedisplayOverride._('unspecified');

static const List<PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodSaveAllowRedisplayOverride> values = [always, limited, unspecified];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodSaveAllowRedisplayOverride && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodSaveAllowRedisplayOverride($value)'; } 
 }
final class PostCustomerSessionsRequestComponentsMobilePaymentElementFeatures {const PostCustomerSessionsRequestComponentsMobilePaymentElementFeatures({this.paymentMethodAllowRedisplayFilters, this.paymentMethodRedisplay, this.paymentMethodRemove, this.paymentMethodSave, this.paymentMethodSaveAllowRedisplayOverride, });

factory PostCustomerSessionsRequestComponentsMobilePaymentElementFeatures.fromJson(Map<String, dynamic> json) { return PostCustomerSessionsRequestComponentsMobilePaymentElementFeatures(
  paymentMethodAllowRedisplayFilters: (json['payment_method_allow_redisplay_filters'] as List<dynamic>?)?.map((e) => PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodAllowRedisplayFilters.fromJson(e as String)).toList(),
  paymentMethodRedisplay: json['payment_method_redisplay'] != null ? PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodRedisplay.fromJson(json['payment_method_redisplay'] as String) : null,
  paymentMethodRemove: json['payment_method_remove'] != null ? PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodRemove.fromJson(json['payment_method_remove'] as String) : null,
  paymentMethodSave: json['payment_method_save'] != null ? PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodSave.fromJson(json['payment_method_save'] as String) : null,
  paymentMethodSaveAllowRedisplayOverride: json['payment_method_save_allow_redisplay_override'] != null ? PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodSaveAllowRedisplayOverride.fromJson(json['payment_method_save_allow_redisplay_override'] as String) : null,
); }

final List<PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodAllowRedisplayFilters>? paymentMethodAllowRedisplayFilters;

final PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodRedisplay? paymentMethodRedisplay;

final PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodRemove? paymentMethodRemove;

final PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodSave? paymentMethodSave;

final PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodSaveAllowRedisplayOverride? paymentMethodSaveAllowRedisplayOverride;

Map<String, dynamic> toJson() { return {
  if (paymentMethodAllowRedisplayFilters != null) 'payment_method_allow_redisplay_filters': paymentMethodAllowRedisplayFilters?.map((e) => e.toJson()).toList(),
  if (paymentMethodRedisplay != null) 'payment_method_redisplay': paymentMethodRedisplay?.toJson(),
  if (paymentMethodRemove != null) 'payment_method_remove': paymentMethodRemove?.toJson(),
  if (paymentMethodSave != null) 'payment_method_save': paymentMethodSave?.toJson(),
  if (paymentMethodSaveAllowRedisplayOverride != null) 'payment_method_save_allow_redisplay_override': paymentMethodSaveAllowRedisplayOverride?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostCustomerSessionsRequestComponentsMobilePaymentElementFeatures copyWith({List<PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodAllowRedisplayFilters> Function()? paymentMethodAllowRedisplayFilters, PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodRedisplay Function()? paymentMethodRedisplay, PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodRemove Function()? paymentMethodRemove, PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodSave Function()? paymentMethodSave, PostCustomerSessionsRequestComponentsMobilePaymentElementFeaturesPaymentMethodSaveAllowRedisplayOverride Function()? paymentMethodSaveAllowRedisplayOverride, }) { return PostCustomerSessionsRequestComponentsMobilePaymentElementFeatures(
  paymentMethodAllowRedisplayFilters: paymentMethodAllowRedisplayFilters != null ? paymentMethodAllowRedisplayFilters() : this.paymentMethodAllowRedisplayFilters,
  paymentMethodRedisplay: paymentMethodRedisplay != null ? paymentMethodRedisplay() : this.paymentMethodRedisplay,
  paymentMethodRemove: paymentMethodRemove != null ? paymentMethodRemove() : this.paymentMethodRemove,
  paymentMethodSave: paymentMethodSave != null ? paymentMethodSave() : this.paymentMethodSave,
  paymentMethodSaveAllowRedisplayOverride: paymentMethodSaveAllowRedisplayOverride != null ? paymentMethodSaveAllowRedisplayOverride() : this.paymentMethodSaveAllowRedisplayOverride,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCustomerSessionsRequestComponentsMobilePaymentElementFeatures &&
          listEquals(paymentMethodAllowRedisplayFilters, other.paymentMethodAllowRedisplayFilters) &&
          paymentMethodRedisplay == other.paymentMethodRedisplay &&
          paymentMethodRemove == other.paymentMethodRemove &&
          paymentMethodSave == other.paymentMethodSave &&
          paymentMethodSaveAllowRedisplayOverride == other.paymentMethodSaveAllowRedisplayOverride; } 
@override int get hashCode { return Object.hash(Object.hashAll(paymentMethodAllowRedisplayFilters ?? const []), paymentMethodRedisplay, paymentMethodRemove, paymentMethodSave, paymentMethodSaveAllowRedisplayOverride); } 
@override String toString() { return 'PostCustomerSessionsRequestComponentsMobilePaymentElementFeatures(paymentMethodAllowRedisplayFilters: $paymentMethodAllowRedisplayFilters, paymentMethodRedisplay: $paymentMethodRedisplay, paymentMethodRemove: $paymentMethodRemove, paymentMethodSave: $paymentMethodSave, paymentMethodSaveAllowRedisplayOverride: $paymentMethodSaveAllowRedisplayOverride)'; } 
 }
