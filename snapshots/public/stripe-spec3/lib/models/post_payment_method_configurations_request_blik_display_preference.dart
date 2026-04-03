// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentMethodConfigurationsRequestBlikDisplayPreferencePreference {const PostPaymentMethodConfigurationsRequestBlikDisplayPreferencePreference._(this.value);

factory PostPaymentMethodConfigurationsRequestBlikDisplayPreferencePreference.fromJson(String json) { return switch (json) {
  'none' => none,
  'off' => off,
  'on' => $on,
  _ => PostPaymentMethodConfigurationsRequestBlikDisplayPreferencePreference._(json),
}; }

static const PostPaymentMethodConfigurationsRequestBlikDisplayPreferencePreference none = PostPaymentMethodConfigurationsRequestBlikDisplayPreferencePreference._('none');

static const PostPaymentMethodConfigurationsRequestBlikDisplayPreferencePreference off = PostPaymentMethodConfigurationsRequestBlikDisplayPreferencePreference._('off');

static const PostPaymentMethodConfigurationsRequestBlikDisplayPreferencePreference $on = PostPaymentMethodConfigurationsRequestBlikDisplayPreferencePreference._('on');

static const List<PostPaymentMethodConfigurationsRequestBlikDisplayPreferencePreference> values = [none, off, $on];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentMethodConfigurationsRequestBlikDisplayPreferencePreference && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestBlikDisplayPreferencePreference($value)'; } 
 }
@immutable final class PostPaymentMethodConfigurationsRequestBlikDisplayPreference {const PostPaymentMethodConfigurationsRequestBlikDisplayPreference({this.preference});

factory PostPaymentMethodConfigurationsRequestBlikDisplayPreference.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsRequestBlikDisplayPreference(
  preference: json['preference'] != null ? PostPaymentMethodConfigurationsRequestBlikDisplayPreferencePreference.fromJson(json['preference'] as String) : null,
); }

final PostPaymentMethodConfigurationsRequestBlikDisplayPreferencePreference? preference;

Map<String, dynamic> toJson() { return {
  if (preference != null) 'preference': preference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'preference'}.contains(key)); } 
PostPaymentMethodConfigurationsRequestBlikDisplayPreference copyWith({PostPaymentMethodConfigurationsRequestBlikDisplayPreferencePreference Function()? preference}) { return PostPaymentMethodConfigurationsRequestBlikDisplayPreference(
  preference: preference != null ? preference() : this.preference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsRequestBlikDisplayPreference &&
          preference == other.preference; } 
@override int get hashCode { return preference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestBlikDisplayPreference(preference: $preference)'; } 
 }
