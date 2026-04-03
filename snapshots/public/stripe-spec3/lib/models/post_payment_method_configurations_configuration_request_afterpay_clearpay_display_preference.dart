// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentMethodConfigurationsConfigurationRequestAfterpayClearpayDisplayPreferencePreference {const PostPaymentMethodConfigurationsConfigurationRequestAfterpayClearpayDisplayPreferencePreference._(this.value);

factory PostPaymentMethodConfigurationsConfigurationRequestAfterpayClearpayDisplayPreferencePreference.fromJson(String json) { return switch (json) {
  'none' => none,
  'off' => off,
  'on' => $on,
  _ => PostPaymentMethodConfigurationsConfigurationRequestAfterpayClearpayDisplayPreferencePreference._(json),
}; }

static const PostPaymentMethodConfigurationsConfigurationRequestAfterpayClearpayDisplayPreferencePreference none = PostPaymentMethodConfigurationsConfigurationRequestAfterpayClearpayDisplayPreferencePreference._('none');

static const PostPaymentMethodConfigurationsConfigurationRequestAfterpayClearpayDisplayPreferencePreference off = PostPaymentMethodConfigurationsConfigurationRequestAfterpayClearpayDisplayPreferencePreference._('off');

static const PostPaymentMethodConfigurationsConfigurationRequestAfterpayClearpayDisplayPreferencePreference $on = PostPaymentMethodConfigurationsConfigurationRequestAfterpayClearpayDisplayPreferencePreference._('on');

static const List<PostPaymentMethodConfigurationsConfigurationRequestAfterpayClearpayDisplayPreferencePreference> values = [none, off, $on];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentMethodConfigurationsConfigurationRequestAfterpayClearpayDisplayPreferencePreference && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestAfterpayClearpayDisplayPreferencePreference($value)'; } 
 }
@immutable final class PostPaymentMethodConfigurationsConfigurationRequestAfterpayClearpayDisplayPreference {const PostPaymentMethodConfigurationsConfigurationRequestAfterpayClearpayDisplayPreference({this.preference});

factory PostPaymentMethodConfigurationsConfigurationRequestAfterpayClearpayDisplayPreference.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsConfigurationRequestAfterpayClearpayDisplayPreference(
  preference: json['preference'] != null ? PostPaymentMethodConfigurationsConfigurationRequestAfterpayClearpayDisplayPreferencePreference.fromJson(json['preference'] as String) : null,
); }

final PostPaymentMethodConfigurationsConfigurationRequestAfterpayClearpayDisplayPreferencePreference? preference;

Map<String, dynamic> toJson() { return {
  if (preference != null) 'preference': preference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'preference'}.contains(key)); } 
PostPaymentMethodConfigurationsConfigurationRequestAfterpayClearpayDisplayPreference copyWith({PostPaymentMethodConfigurationsConfigurationRequestAfterpayClearpayDisplayPreferencePreference Function()? preference}) { return PostPaymentMethodConfigurationsConfigurationRequestAfterpayClearpayDisplayPreference(
  preference: preference != null ? preference() : this.preference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsConfigurationRequestAfterpayClearpayDisplayPreference &&
          preference == other.preference; } 
@override int get hashCode { return preference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestAfterpayClearpayDisplayPreference(preference: $preference)'; } 
 }
