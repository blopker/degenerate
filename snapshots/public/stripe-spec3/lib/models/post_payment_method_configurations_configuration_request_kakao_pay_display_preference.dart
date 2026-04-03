// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentMethodConfigurationsConfigurationRequestKakaoPayDisplayPreferencePreference {const PostPaymentMethodConfigurationsConfigurationRequestKakaoPayDisplayPreferencePreference._(this.value);

factory PostPaymentMethodConfigurationsConfigurationRequestKakaoPayDisplayPreferencePreference.fromJson(String json) { return switch (json) {
  'none' => none,
  'off' => off,
  'on' => $on,
  _ => PostPaymentMethodConfigurationsConfigurationRequestKakaoPayDisplayPreferencePreference._(json),
}; }

static const PostPaymentMethodConfigurationsConfigurationRequestKakaoPayDisplayPreferencePreference none = PostPaymentMethodConfigurationsConfigurationRequestKakaoPayDisplayPreferencePreference._('none');

static const PostPaymentMethodConfigurationsConfigurationRequestKakaoPayDisplayPreferencePreference off = PostPaymentMethodConfigurationsConfigurationRequestKakaoPayDisplayPreferencePreference._('off');

static const PostPaymentMethodConfigurationsConfigurationRequestKakaoPayDisplayPreferencePreference $on = PostPaymentMethodConfigurationsConfigurationRequestKakaoPayDisplayPreferencePreference._('on');

static const List<PostPaymentMethodConfigurationsConfigurationRequestKakaoPayDisplayPreferencePreference> values = [none, off, $on];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentMethodConfigurationsConfigurationRequestKakaoPayDisplayPreferencePreference && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestKakaoPayDisplayPreferencePreference($value)'; } 
 }
@immutable final class PostPaymentMethodConfigurationsConfigurationRequestKakaoPayDisplayPreference {const PostPaymentMethodConfigurationsConfigurationRequestKakaoPayDisplayPreference({this.preference});

factory PostPaymentMethodConfigurationsConfigurationRequestKakaoPayDisplayPreference.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsConfigurationRequestKakaoPayDisplayPreference(
  preference: json['preference'] != null ? PostPaymentMethodConfigurationsConfigurationRequestKakaoPayDisplayPreferencePreference.fromJson(json['preference'] as String) : null,
); }

final PostPaymentMethodConfigurationsConfigurationRequestKakaoPayDisplayPreferencePreference? preference;

Map<String, dynamic> toJson() { return {
  if (preference != null) 'preference': preference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'preference'}.contains(key)); } 
PostPaymentMethodConfigurationsConfigurationRequestKakaoPayDisplayPreference copyWith({PostPaymentMethodConfigurationsConfigurationRequestKakaoPayDisplayPreferencePreference Function()? preference}) { return PostPaymentMethodConfigurationsConfigurationRequestKakaoPayDisplayPreference(
  preference: preference != null ? preference() : this.preference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsConfigurationRequestKakaoPayDisplayPreference &&
          preference == other.preference; } 
@override int get hashCode { return preference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestKakaoPayDisplayPreference(preference: $preference)'; } 
 }
