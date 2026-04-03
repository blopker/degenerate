// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentMethodConfigurationsRequestGrabpayDisplayPreferencePreference {const PostPaymentMethodConfigurationsRequestGrabpayDisplayPreferencePreference._(this.value);

factory PostPaymentMethodConfigurationsRequestGrabpayDisplayPreferencePreference.fromJson(String json) { return switch (json) {
  'none' => none,
  'off' => off,
  'on' => $on,
  _ => PostPaymentMethodConfigurationsRequestGrabpayDisplayPreferencePreference._(json),
}; }

static const PostPaymentMethodConfigurationsRequestGrabpayDisplayPreferencePreference none = PostPaymentMethodConfigurationsRequestGrabpayDisplayPreferencePreference._('none');

static const PostPaymentMethodConfigurationsRequestGrabpayDisplayPreferencePreference off = PostPaymentMethodConfigurationsRequestGrabpayDisplayPreferencePreference._('off');

static const PostPaymentMethodConfigurationsRequestGrabpayDisplayPreferencePreference $on = PostPaymentMethodConfigurationsRequestGrabpayDisplayPreferencePreference._('on');

static const List<PostPaymentMethodConfigurationsRequestGrabpayDisplayPreferencePreference> values = [none, off, $on];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentMethodConfigurationsRequestGrabpayDisplayPreferencePreference && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestGrabpayDisplayPreferencePreference($value)'; } 
 }
@immutable final class PostPaymentMethodConfigurationsRequestGrabpayDisplayPreference {const PostPaymentMethodConfigurationsRequestGrabpayDisplayPreference({this.preference});

factory PostPaymentMethodConfigurationsRequestGrabpayDisplayPreference.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsRequestGrabpayDisplayPreference(
  preference: json['preference'] != null ? PostPaymentMethodConfigurationsRequestGrabpayDisplayPreferencePreference.fromJson(json['preference'] as String) : null,
); }

final PostPaymentMethodConfigurationsRequestGrabpayDisplayPreferencePreference? preference;

Map<String, dynamic> toJson() { return {
  if (preference != null) 'preference': preference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'preference'}.contains(key)); } 
PostPaymentMethodConfigurationsRequestGrabpayDisplayPreference copyWith({PostPaymentMethodConfigurationsRequestGrabpayDisplayPreferencePreference Function()? preference}) { return PostPaymentMethodConfigurationsRequestGrabpayDisplayPreference(
  preference: preference != null ? preference() : this.preference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsRequestGrabpayDisplayPreference &&
          preference == other.preference; } 
@override int get hashCode { return preference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestGrabpayDisplayPreference(preference: $preference)'; } 
 }
