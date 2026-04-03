// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentMethodConfigurationsConfigurationRequestCustomerBalanceDisplayPreferencePreference {const PostPaymentMethodConfigurationsConfigurationRequestCustomerBalanceDisplayPreferencePreference._(this.value);

factory PostPaymentMethodConfigurationsConfigurationRequestCustomerBalanceDisplayPreferencePreference.fromJson(String json) { return switch (json) {
  'none' => none,
  'off' => off,
  'on' => $on,
  _ => PostPaymentMethodConfigurationsConfigurationRequestCustomerBalanceDisplayPreferencePreference._(json),
}; }

static const PostPaymentMethodConfigurationsConfigurationRequestCustomerBalanceDisplayPreferencePreference none = PostPaymentMethodConfigurationsConfigurationRequestCustomerBalanceDisplayPreferencePreference._('none');

static const PostPaymentMethodConfigurationsConfigurationRequestCustomerBalanceDisplayPreferencePreference off = PostPaymentMethodConfigurationsConfigurationRequestCustomerBalanceDisplayPreferencePreference._('off');

static const PostPaymentMethodConfigurationsConfigurationRequestCustomerBalanceDisplayPreferencePreference $on = PostPaymentMethodConfigurationsConfigurationRequestCustomerBalanceDisplayPreferencePreference._('on');

static const List<PostPaymentMethodConfigurationsConfigurationRequestCustomerBalanceDisplayPreferencePreference> values = [none, off, $on];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentMethodConfigurationsConfigurationRequestCustomerBalanceDisplayPreferencePreference && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestCustomerBalanceDisplayPreferencePreference($value)'; } 
 }
@immutable final class PostPaymentMethodConfigurationsConfigurationRequestCustomerBalanceDisplayPreference {const PostPaymentMethodConfigurationsConfigurationRequestCustomerBalanceDisplayPreference({this.preference});

factory PostPaymentMethodConfigurationsConfigurationRequestCustomerBalanceDisplayPreference.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsConfigurationRequestCustomerBalanceDisplayPreference(
  preference: json['preference'] != null ? PostPaymentMethodConfigurationsConfigurationRequestCustomerBalanceDisplayPreferencePreference.fromJson(json['preference'] as String) : null,
); }

final PostPaymentMethodConfigurationsConfigurationRequestCustomerBalanceDisplayPreferencePreference? preference;

Map<String, dynamic> toJson() { return {
  if (preference != null) 'preference': preference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'preference'}.contains(key)); } 
PostPaymentMethodConfigurationsConfigurationRequestCustomerBalanceDisplayPreference copyWith({PostPaymentMethodConfigurationsConfigurationRequestCustomerBalanceDisplayPreferencePreference Function()? preference}) { return PostPaymentMethodConfigurationsConfigurationRequestCustomerBalanceDisplayPreference(
  preference: preference != null ? preference() : this.preference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsConfigurationRequestCustomerBalanceDisplayPreference &&
          preference == other.preference; } 
@override int get hashCode { return preference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestCustomerBalanceDisplayPreference(preference: $preference)'; } 
 }
