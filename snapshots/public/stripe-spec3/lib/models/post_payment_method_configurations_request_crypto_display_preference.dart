// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentMethodConfigurationsRequestCryptoDisplayPreferencePreference {const PostPaymentMethodConfigurationsRequestCryptoDisplayPreferencePreference._(this.value);

factory PostPaymentMethodConfigurationsRequestCryptoDisplayPreferencePreference.fromJson(String json) { return switch (json) {
  'none' => none,
  'off' => off,
  'on' => $on,
  _ => PostPaymentMethodConfigurationsRequestCryptoDisplayPreferencePreference._(json),
}; }

static const PostPaymentMethodConfigurationsRequestCryptoDisplayPreferencePreference none = PostPaymentMethodConfigurationsRequestCryptoDisplayPreferencePreference._('none');

static const PostPaymentMethodConfigurationsRequestCryptoDisplayPreferencePreference off = PostPaymentMethodConfigurationsRequestCryptoDisplayPreferencePreference._('off');

static const PostPaymentMethodConfigurationsRequestCryptoDisplayPreferencePreference $on = PostPaymentMethodConfigurationsRequestCryptoDisplayPreferencePreference._('on');

static const List<PostPaymentMethodConfigurationsRequestCryptoDisplayPreferencePreference> values = [none, off, $on];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentMethodConfigurationsRequestCryptoDisplayPreferencePreference && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestCryptoDisplayPreferencePreference($value)'; } 
 }
@immutable final class PostPaymentMethodConfigurationsRequestCryptoDisplayPreference {const PostPaymentMethodConfigurationsRequestCryptoDisplayPreference({this.preference});

factory PostPaymentMethodConfigurationsRequestCryptoDisplayPreference.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsRequestCryptoDisplayPreference(
  preference: json['preference'] != null ? PostPaymentMethodConfigurationsRequestCryptoDisplayPreferencePreference.fromJson(json['preference'] as String) : null,
); }

final PostPaymentMethodConfigurationsRequestCryptoDisplayPreferencePreference? preference;

Map<String, dynamic> toJson() { return {
  if (preference != null) 'preference': preference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'preference'}.contains(key)); } 
PostPaymentMethodConfigurationsRequestCryptoDisplayPreference copyWith({PostPaymentMethodConfigurationsRequestCryptoDisplayPreferencePreference Function()? preference}) { return PostPaymentMethodConfigurationsRequestCryptoDisplayPreference(
  preference: preference != null ? preference() : this.preference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsRequestCryptoDisplayPreference &&
          preference == other.preference; } 
@override int get hashCode { return preference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestCryptoDisplayPreference(preference: $preference)'; } 
 }
