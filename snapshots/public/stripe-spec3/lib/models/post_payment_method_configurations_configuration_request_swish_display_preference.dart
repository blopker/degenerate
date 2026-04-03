// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentMethodConfigurationsConfigurationRequestSwishDisplayPreferencePreference {const PostPaymentMethodConfigurationsConfigurationRequestSwishDisplayPreferencePreference._(this.value);

factory PostPaymentMethodConfigurationsConfigurationRequestSwishDisplayPreferencePreference.fromJson(String json) { return switch (json) {
  'none' => none,
  'off' => off,
  'on' => $on,
  _ => PostPaymentMethodConfigurationsConfigurationRequestSwishDisplayPreferencePreference._(json),
}; }

static const PostPaymentMethodConfigurationsConfigurationRequestSwishDisplayPreferencePreference none = PostPaymentMethodConfigurationsConfigurationRequestSwishDisplayPreferencePreference._('none');

static const PostPaymentMethodConfigurationsConfigurationRequestSwishDisplayPreferencePreference off = PostPaymentMethodConfigurationsConfigurationRequestSwishDisplayPreferencePreference._('off');

static const PostPaymentMethodConfigurationsConfigurationRequestSwishDisplayPreferencePreference $on = PostPaymentMethodConfigurationsConfigurationRequestSwishDisplayPreferencePreference._('on');

static const List<PostPaymentMethodConfigurationsConfigurationRequestSwishDisplayPreferencePreference> values = [none, off, $on];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentMethodConfigurationsConfigurationRequestSwishDisplayPreferencePreference && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestSwishDisplayPreferencePreference($value)'; } 
 }
@immutable final class PostPaymentMethodConfigurationsConfigurationRequestSwishDisplayPreference {const PostPaymentMethodConfigurationsConfigurationRequestSwishDisplayPreference({this.preference});

factory PostPaymentMethodConfigurationsConfigurationRequestSwishDisplayPreference.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsConfigurationRequestSwishDisplayPreference(
  preference: json['preference'] != null ? PostPaymentMethodConfigurationsConfigurationRequestSwishDisplayPreferencePreference.fromJson(json['preference'] as String) : null,
); }

final PostPaymentMethodConfigurationsConfigurationRequestSwishDisplayPreferencePreference? preference;

Map<String, dynamic> toJson() { return {
  if (preference != null) 'preference': preference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'preference'}.contains(key)); } 
PostPaymentMethodConfigurationsConfigurationRequestSwishDisplayPreference copyWith({PostPaymentMethodConfigurationsConfigurationRequestSwishDisplayPreferencePreference Function()? preference}) { return PostPaymentMethodConfigurationsConfigurationRequestSwishDisplayPreference(
  preference: preference != null ? preference() : this.preference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsConfigurationRequestSwishDisplayPreference &&
          preference == other.preference; } 
@override int get hashCode { return preference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestSwishDisplayPreference(preference: $preference)'; } 
 }
