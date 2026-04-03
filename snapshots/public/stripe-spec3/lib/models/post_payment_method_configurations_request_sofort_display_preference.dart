// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentMethodConfigurationsRequestSofortDisplayPreferencePreference {const PostPaymentMethodConfigurationsRequestSofortDisplayPreferencePreference._(this.value);

factory PostPaymentMethodConfigurationsRequestSofortDisplayPreferencePreference.fromJson(String json) { return switch (json) {
  'none' => none,
  'off' => off,
  'on' => $on,
  _ => PostPaymentMethodConfigurationsRequestSofortDisplayPreferencePreference._(json),
}; }

static const PostPaymentMethodConfigurationsRequestSofortDisplayPreferencePreference none = PostPaymentMethodConfigurationsRequestSofortDisplayPreferencePreference._('none');

static const PostPaymentMethodConfigurationsRequestSofortDisplayPreferencePreference off = PostPaymentMethodConfigurationsRequestSofortDisplayPreferencePreference._('off');

static const PostPaymentMethodConfigurationsRequestSofortDisplayPreferencePreference $on = PostPaymentMethodConfigurationsRequestSofortDisplayPreferencePreference._('on');

static const List<PostPaymentMethodConfigurationsRequestSofortDisplayPreferencePreference> values = [none, off, $on];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentMethodConfigurationsRequestSofortDisplayPreferencePreference && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestSofortDisplayPreferencePreference($value)'; } 
 }
@immutable final class PostPaymentMethodConfigurationsRequestSofortDisplayPreference {const PostPaymentMethodConfigurationsRequestSofortDisplayPreference({this.preference});

factory PostPaymentMethodConfigurationsRequestSofortDisplayPreference.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsRequestSofortDisplayPreference(
  preference: json['preference'] != null ? PostPaymentMethodConfigurationsRequestSofortDisplayPreferencePreference.fromJson(json['preference'] as String) : null,
); }

final PostPaymentMethodConfigurationsRequestSofortDisplayPreferencePreference? preference;

Map<String, dynamic> toJson() { return {
  if (preference != null) 'preference': preference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'preference'}.contains(key)); } 
PostPaymentMethodConfigurationsRequestSofortDisplayPreference copyWith({PostPaymentMethodConfigurationsRequestSofortDisplayPreferencePreference Function()? preference}) { return PostPaymentMethodConfigurationsRequestSofortDisplayPreference(
  preference: preference != null ? preference() : this.preference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsRequestSofortDisplayPreference &&
          preference == other.preference; } 
@override int get hashCode { return preference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestSofortDisplayPreference(preference: $preference)'; } 
 }
