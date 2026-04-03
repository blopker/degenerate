// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentMethodConfigurationsConfigurationRequestMobilepayDisplayPreferencePreference {const PostPaymentMethodConfigurationsConfigurationRequestMobilepayDisplayPreferencePreference._(this.value);

factory PostPaymentMethodConfigurationsConfigurationRequestMobilepayDisplayPreferencePreference.fromJson(String json) { return switch (json) {
  'none' => none,
  'off' => off,
  'on' => $on,
  _ => PostPaymentMethodConfigurationsConfigurationRequestMobilepayDisplayPreferencePreference._(json),
}; }

static const PostPaymentMethodConfigurationsConfigurationRequestMobilepayDisplayPreferencePreference none = PostPaymentMethodConfigurationsConfigurationRequestMobilepayDisplayPreferencePreference._('none');

static const PostPaymentMethodConfigurationsConfigurationRequestMobilepayDisplayPreferencePreference off = PostPaymentMethodConfigurationsConfigurationRequestMobilepayDisplayPreferencePreference._('off');

static const PostPaymentMethodConfigurationsConfigurationRequestMobilepayDisplayPreferencePreference $on = PostPaymentMethodConfigurationsConfigurationRequestMobilepayDisplayPreferencePreference._('on');

static const List<PostPaymentMethodConfigurationsConfigurationRequestMobilepayDisplayPreferencePreference> values = [none, off, $on];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentMethodConfigurationsConfigurationRequestMobilepayDisplayPreferencePreference && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestMobilepayDisplayPreferencePreference($value)'; } 
 }
@immutable final class PostPaymentMethodConfigurationsConfigurationRequestMobilepayDisplayPreference {const PostPaymentMethodConfigurationsConfigurationRequestMobilepayDisplayPreference({this.preference});

factory PostPaymentMethodConfigurationsConfigurationRequestMobilepayDisplayPreference.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsConfigurationRequestMobilepayDisplayPreference(
  preference: json['preference'] != null ? PostPaymentMethodConfigurationsConfigurationRequestMobilepayDisplayPreferencePreference.fromJson(json['preference'] as String) : null,
); }

final PostPaymentMethodConfigurationsConfigurationRequestMobilepayDisplayPreferencePreference? preference;

Map<String, dynamic> toJson() { return {
  if (preference != null) 'preference': preference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'preference'}.contains(key)); } 
PostPaymentMethodConfigurationsConfigurationRequestMobilepayDisplayPreference copyWith({PostPaymentMethodConfigurationsConfigurationRequestMobilepayDisplayPreferencePreference Function()? preference}) { return PostPaymentMethodConfigurationsConfigurationRequestMobilepayDisplayPreference(
  preference: preference != null ? preference() : this.preference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsConfigurationRequestMobilepayDisplayPreference &&
          preference == other.preference; } 
@override int get hashCode { return preference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestMobilepayDisplayPreference(preference: $preference)'; } 
 }
