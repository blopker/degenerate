// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentMethodConfigurationsRequestAffirmDisplayPreferencePreference {const PostPaymentMethodConfigurationsRequestAffirmDisplayPreferencePreference._(this.value);

factory PostPaymentMethodConfigurationsRequestAffirmDisplayPreferencePreference.fromJson(String json) { return switch (json) {
  'none' => none,
  'off' => off,
  'on' => $on,
  _ => PostPaymentMethodConfigurationsRequestAffirmDisplayPreferencePreference._(json),
}; }

static const PostPaymentMethodConfigurationsRequestAffirmDisplayPreferencePreference none = PostPaymentMethodConfigurationsRequestAffirmDisplayPreferencePreference._('none');

static const PostPaymentMethodConfigurationsRequestAffirmDisplayPreferencePreference off = PostPaymentMethodConfigurationsRequestAffirmDisplayPreferencePreference._('off');

static const PostPaymentMethodConfigurationsRequestAffirmDisplayPreferencePreference $on = PostPaymentMethodConfigurationsRequestAffirmDisplayPreferencePreference._('on');

static const List<PostPaymentMethodConfigurationsRequestAffirmDisplayPreferencePreference> values = [none, off, $on];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentMethodConfigurationsRequestAffirmDisplayPreferencePreference && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestAffirmDisplayPreferencePreference($value)'; } 
 }
@immutable final class PostPaymentMethodConfigurationsRequestAffirmDisplayPreference {const PostPaymentMethodConfigurationsRequestAffirmDisplayPreference({this.preference});

factory PostPaymentMethodConfigurationsRequestAffirmDisplayPreference.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsRequestAffirmDisplayPreference(
  preference: json['preference'] != null ? PostPaymentMethodConfigurationsRequestAffirmDisplayPreferencePreference.fromJson(json['preference'] as String) : null,
); }

final PostPaymentMethodConfigurationsRequestAffirmDisplayPreferencePreference? preference;

Map<String, dynamic> toJson() { return {
  if (preference != null) 'preference': preference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'preference'}.contains(key)); } 
PostPaymentMethodConfigurationsRequestAffirmDisplayPreference copyWith({PostPaymentMethodConfigurationsRequestAffirmDisplayPreferencePreference Function()? preference}) { return PostPaymentMethodConfigurationsRequestAffirmDisplayPreference(
  preference: preference != null ? preference() : this.preference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsRequestAffirmDisplayPreference &&
          preference == other.preference; } 
@override int get hashCode { return preference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestAffirmDisplayPreference(preference: $preference)'; } 
 }
