// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentMethodConfigurationsConfigurationRequestAffirmDisplayPreferencePreference {const PostPaymentMethodConfigurationsConfigurationRequestAffirmDisplayPreferencePreference._(this.value);

factory PostPaymentMethodConfigurationsConfigurationRequestAffirmDisplayPreferencePreference.fromJson(String json) { return switch (json) {
  'none' => none,
  'off' => off,
  'on' => $on,
  _ => PostPaymentMethodConfigurationsConfigurationRequestAffirmDisplayPreferencePreference._(json),
}; }

static const PostPaymentMethodConfigurationsConfigurationRequestAffirmDisplayPreferencePreference none = PostPaymentMethodConfigurationsConfigurationRequestAffirmDisplayPreferencePreference._('none');

static const PostPaymentMethodConfigurationsConfigurationRequestAffirmDisplayPreferencePreference off = PostPaymentMethodConfigurationsConfigurationRequestAffirmDisplayPreferencePreference._('off');

static const PostPaymentMethodConfigurationsConfigurationRequestAffirmDisplayPreferencePreference $on = PostPaymentMethodConfigurationsConfigurationRequestAffirmDisplayPreferencePreference._('on');

static const List<PostPaymentMethodConfigurationsConfigurationRequestAffirmDisplayPreferencePreference> values = [none, off, $on];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentMethodConfigurationsConfigurationRequestAffirmDisplayPreferencePreference && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestAffirmDisplayPreferencePreference($value)'; } 
 }
@immutable final class PostPaymentMethodConfigurationsConfigurationRequestAffirmDisplayPreference {const PostPaymentMethodConfigurationsConfigurationRequestAffirmDisplayPreference({this.preference});

factory PostPaymentMethodConfigurationsConfigurationRequestAffirmDisplayPreference.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsConfigurationRequestAffirmDisplayPreference(
  preference: json['preference'] != null ? PostPaymentMethodConfigurationsConfigurationRequestAffirmDisplayPreferencePreference.fromJson(json['preference'] as String) : null,
); }

final PostPaymentMethodConfigurationsConfigurationRequestAffirmDisplayPreferencePreference? preference;

Map<String, dynamic> toJson() { return {
  if (preference != null) 'preference': preference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'preference'}.contains(key)); } 
PostPaymentMethodConfigurationsConfigurationRequestAffirmDisplayPreference copyWith({PostPaymentMethodConfigurationsConfigurationRequestAffirmDisplayPreferencePreference Function()? preference}) { return PostPaymentMethodConfigurationsConfigurationRequestAffirmDisplayPreference(
  preference: preference != null ? preference() : this.preference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsConfigurationRequestAffirmDisplayPreference &&
          preference == other.preference; } 
@override int get hashCode { return preference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestAffirmDisplayPreference(preference: $preference)'; } 
 }
