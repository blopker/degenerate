// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentMethodConfigurationsConfigurationRequestCryptoDisplayPreferencePreference {const PostPaymentMethodConfigurationsConfigurationRequestCryptoDisplayPreferencePreference._(this.value);

factory PostPaymentMethodConfigurationsConfigurationRequestCryptoDisplayPreferencePreference.fromJson(String json) { return switch (json) {
  'none' => none,
  'off' => off,
  'on' => $on,
  _ => PostPaymentMethodConfigurationsConfigurationRequestCryptoDisplayPreferencePreference._(json),
}; }

static const PostPaymentMethodConfigurationsConfigurationRequestCryptoDisplayPreferencePreference none = PostPaymentMethodConfigurationsConfigurationRequestCryptoDisplayPreferencePreference._('none');

static const PostPaymentMethodConfigurationsConfigurationRequestCryptoDisplayPreferencePreference off = PostPaymentMethodConfigurationsConfigurationRequestCryptoDisplayPreferencePreference._('off');

static const PostPaymentMethodConfigurationsConfigurationRequestCryptoDisplayPreferencePreference $on = PostPaymentMethodConfigurationsConfigurationRequestCryptoDisplayPreferencePreference._('on');

static const List<PostPaymentMethodConfigurationsConfigurationRequestCryptoDisplayPreferencePreference> values = [none, off, $on];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentMethodConfigurationsConfigurationRequestCryptoDisplayPreferencePreference && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestCryptoDisplayPreferencePreference($value)'; } 
 }
@immutable final class PostPaymentMethodConfigurationsConfigurationRequestCryptoDisplayPreference {const PostPaymentMethodConfigurationsConfigurationRequestCryptoDisplayPreference({this.preference});

factory PostPaymentMethodConfigurationsConfigurationRequestCryptoDisplayPreference.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsConfigurationRequestCryptoDisplayPreference(
  preference: json['preference'] != null ? PostPaymentMethodConfigurationsConfigurationRequestCryptoDisplayPreferencePreference.fromJson(json['preference'] as String) : null,
); }

final PostPaymentMethodConfigurationsConfigurationRequestCryptoDisplayPreferencePreference? preference;

Map<String, dynamic> toJson() { return {
  if (preference != null) 'preference': preference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'preference'}.contains(key)); } 
PostPaymentMethodConfigurationsConfigurationRequestCryptoDisplayPreference copyWith({PostPaymentMethodConfigurationsConfigurationRequestCryptoDisplayPreferencePreference Function()? preference}) { return PostPaymentMethodConfigurationsConfigurationRequestCryptoDisplayPreference(
  preference: preference != null ? preference() : this.preference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsConfigurationRequestCryptoDisplayPreference &&
          preference == other.preference; } 
@override int get hashCode { return preference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestCryptoDisplayPreference(preference: $preference)'; } 
 }
