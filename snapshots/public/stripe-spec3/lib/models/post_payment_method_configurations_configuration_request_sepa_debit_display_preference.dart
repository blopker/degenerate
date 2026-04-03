// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentMethodConfigurationsConfigurationRequestSepaDebitDisplayPreferencePreference {const PostPaymentMethodConfigurationsConfigurationRequestSepaDebitDisplayPreferencePreference._(this.value);

factory PostPaymentMethodConfigurationsConfigurationRequestSepaDebitDisplayPreferencePreference.fromJson(String json) { return switch (json) {
  'none' => none,
  'off' => off,
  'on' => $on,
  _ => PostPaymentMethodConfigurationsConfigurationRequestSepaDebitDisplayPreferencePreference._(json),
}; }

static const PostPaymentMethodConfigurationsConfigurationRequestSepaDebitDisplayPreferencePreference none = PostPaymentMethodConfigurationsConfigurationRequestSepaDebitDisplayPreferencePreference._('none');

static const PostPaymentMethodConfigurationsConfigurationRequestSepaDebitDisplayPreferencePreference off = PostPaymentMethodConfigurationsConfigurationRequestSepaDebitDisplayPreferencePreference._('off');

static const PostPaymentMethodConfigurationsConfigurationRequestSepaDebitDisplayPreferencePreference $on = PostPaymentMethodConfigurationsConfigurationRequestSepaDebitDisplayPreferencePreference._('on');

static const List<PostPaymentMethodConfigurationsConfigurationRequestSepaDebitDisplayPreferencePreference> values = [none, off, $on];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentMethodConfigurationsConfigurationRequestSepaDebitDisplayPreferencePreference && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestSepaDebitDisplayPreferencePreference($value)'; } 
 }
@immutable final class PostPaymentMethodConfigurationsConfigurationRequestSepaDebitDisplayPreference {const PostPaymentMethodConfigurationsConfigurationRequestSepaDebitDisplayPreference({this.preference});

factory PostPaymentMethodConfigurationsConfigurationRequestSepaDebitDisplayPreference.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsConfigurationRequestSepaDebitDisplayPreference(
  preference: json['preference'] != null ? PostPaymentMethodConfigurationsConfigurationRequestSepaDebitDisplayPreferencePreference.fromJson(json['preference'] as String) : null,
); }

final PostPaymentMethodConfigurationsConfigurationRequestSepaDebitDisplayPreferencePreference? preference;

Map<String, dynamic> toJson() { return {
  if (preference != null) 'preference': preference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'preference'}.contains(key)); } 
PostPaymentMethodConfigurationsConfigurationRequestSepaDebitDisplayPreference copyWith({PostPaymentMethodConfigurationsConfigurationRequestSepaDebitDisplayPreferencePreference Function()? preference}) { return PostPaymentMethodConfigurationsConfigurationRequestSepaDebitDisplayPreference(
  preference: preference != null ? preference() : this.preference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsConfigurationRequestSepaDebitDisplayPreference &&
          preference == other.preference; } 
@override int get hashCode { return preference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestSepaDebitDisplayPreference(preference: $preference)'; } 
 }
