// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentMethodConfigurationsConfigurationRequestSatispayDisplayPreferencePreference {const PostPaymentMethodConfigurationsConfigurationRequestSatispayDisplayPreferencePreference._(this.value);

factory PostPaymentMethodConfigurationsConfigurationRequestSatispayDisplayPreferencePreference.fromJson(String json) { return switch (json) {
  'none' => none,
  'off' => off,
  'on' => $on,
  _ => PostPaymentMethodConfigurationsConfigurationRequestSatispayDisplayPreferencePreference._(json),
}; }

static const PostPaymentMethodConfigurationsConfigurationRequestSatispayDisplayPreferencePreference none = PostPaymentMethodConfigurationsConfigurationRequestSatispayDisplayPreferencePreference._('none');

static const PostPaymentMethodConfigurationsConfigurationRequestSatispayDisplayPreferencePreference off = PostPaymentMethodConfigurationsConfigurationRequestSatispayDisplayPreferencePreference._('off');

static const PostPaymentMethodConfigurationsConfigurationRequestSatispayDisplayPreferencePreference $on = PostPaymentMethodConfigurationsConfigurationRequestSatispayDisplayPreferencePreference._('on');

static const List<PostPaymentMethodConfigurationsConfigurationRequestSatispayDisplayPreferencePreference> values = [none, off, $on];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentMethodConfigurationsConfigurationRequestSatispayDisplayPreferencePreference && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestSatispayDisplayPreferencePreference($value)'; } 
 }
@immutable final class PostPaymentMethodConfigurationsConfigurationRequestSatispayDisplayPreference {const PostPaymentMethodConfigurationsConfigurationRequestSatispayDisplayPreference({this.preference});

factory PostPaymentMethodConfigurationsConfigurationRequestSatispayDisplayPreference.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsConfigurationRequestSatispayDisplayPreference(
  preference: json['preference'] != null ? PostPaymentMethodConfigurationsConfigurationRequestSatispayDisplayPreferencePreference.fromJson(json['preference'] as String) : null,
); }

final PostPaymentMethodConfigurationsConfigurationRequestSatispayDisplayPreferencePreference? preference;

Map<String, dynamic> toJson() { return {
  if (preference != null) 'preference': preference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'preference'}.contains(key)); } 
PostPaymentMethodConfigurationsConfigurationRequestSatispayDisplayPreference copyWith({PostPaymentMethodConfigurationsConfigurationRequestSatispayDisplayPreferencePreference Function()? preference}) { return PostPaymentMethodConfigurationsConfigurationRequestSatispayDisplayPreference(
  preference: preference != null ? preference() : this.preference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsConfigurationRequestSatispayDisplayPreference &&
          preference == other.preference; } 
@override int get hashCode { return preference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestSatispayDisplayPreference(preference: $preference)'; } 
 }
