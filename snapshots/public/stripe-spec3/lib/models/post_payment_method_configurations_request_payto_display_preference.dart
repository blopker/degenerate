// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentMethodConfigurationsRequestPaytoDisplayPreferencePreference {const PostPaymentMethodConfigurationsRequestPaytoDisplayPreferencePreference._(this.value);

factory PostPaymentMethodConfigurationsRequestPaytoDisplayPreferencePreference.fromJson(String json) { return switch (json) {
  'none' => none,
  'off' => off,
  'on' => $on,
  _ => PostPaymentMethodConfigurationsRequestPaytoDisplayPreferencePreference._(json),
}; }

static const PostPaymentMethodConfigurationsRequestPaytoDisplayPreferencePreference none = PostPaymentMethodConfigurationsRequestPaytoDisplayPreferencePreference._('none');

static const PostPaymentMethodConfigurationsRequestPaytoDisplayPreferencePreference off = PostPaymentMethodConfigurationsRequestPaytoDisplayPreferencePreference._('off');

static const PostPaymentMethodConfigurationsRequestPaytoDisplayPreferencePreference $on = PostPaymentMethodConfigurationsRequestPaytoDisplayPreferencePreference._('on');

static const List<PostPaymentMethodConfigurationsRequestPaytoDisplayPreferencePreference> values = [none, off, $on];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentMethodConfigurationsRequestPaytoDisplayPreferencePreference && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestPaytoDisplayPreferencePreference($value)'; } 
 }
@immutable final class PostPaymentMethodConfigurationsRequestPaytoDisplayPreference {const PostPaymentMethodConfigurationsRequestPaytoDisplayPreference({this.preference});

factory PostPaymentMethodConfigurationsRequestPaytoDisplayPreference.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsRequestPaytoDisplayPreference(
  preference: json['preference'] != null ? PostPaymentMethodConfigurationsRequestPaytoDisplayPreferencePreference.fromJson(json['preference'] as String) : null,
); }

final PostPaymentMethodConfigurationsRequestPaytoDisplayPreferencePreference? preference;

Map<String, dynamic> toJson() { return {
  if (preference != null) 'preference': preference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'preference'}.contains(key)); } 
PostPaymentMethodConfigurationsRequestPaytoDisplayPreference copyWith({PostPaymentMethodConfigurationsRequestPaytoDisplayPreferencePreference Function()? preference}) { return PostPaymentMethodConfigurationsRequestPaytoDisplayPreference(
  preference: preference != null ? preference() : this.preference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsRequestPaytoDisplayPreference &&
          preference == other.preference; } 
@override int get hashCode { return preference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestPaytoDisplayPreference(preference: $preference)'; } 
 }
