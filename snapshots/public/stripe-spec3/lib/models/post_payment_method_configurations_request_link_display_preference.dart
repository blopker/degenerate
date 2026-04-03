// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentMethodConfigurationsRequestLinkDisplayPreferencePreference {const PostPaymentMethodConfigurationsRequestLinkDisplayPreferencePreference._(this.value);

factory PostPaymentMethodConfigurationsRequestLinkDisplayPreferencePreference.fromJson(String json) { return switch (json) {
  'none' => none,
  'off' => off,
  'on' => $on,
  _ => PostPaymentMethodConfigurationsRequestLinkDisplayPreferencePreference._(json),
}; }

static const PostPaymentMethodConfigurationsRequestLinkDisplayPreferencePreference none = PostPaymentMethodConfigurationsRequestLinkDisplayPreferencePreference._('none');

static const PostPaymentMethodConfigurationsRequestLinkDisplayPreferencePreference off = PostPaymentMethodConfigurationsRequestLinkDisplayPreferencePreference._('off');

static const PostPaymentMethodConfigurationsRequestLinkDisplayPreferencePreference $on = PostPaymentMethodConfigurationsRequestLinkDisplayPreferencePreference._('on');

static const List<PostPaymentMethodConfigurationsRequestLinkDisplayPreferencePreference> values = [none, off, $on];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentMethodConfigurationsRequestLinkDisplayPreferencePreference && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestLinkDisplayPreferencePreference($value)'; } 
 }
@immutable final class PostPaymentMethodConfigurationsRequestLinkDisplayPreference {const PostPaymentMethodConfigurationsRequestLinkDisplayPreference({this.preference});

factory PostPaymentMethodConfigurationsRequestLinkDisplayPreference.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsRequestLinkDisplayPreference(
  preference: json['preference'] != null ? PostPaymentMethodConfigurationsRequestLinkDisplayPreferencePreference.fromJson(json['preference'] as String) : null,
); }

final PostPaymentMethodConfigurationsRequestLinkDisplayPreferencePreference? preference;

Map<String, dynamic> toJson() { return {
  if (preference != null) 'preference': preference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'preference'}.contains(key)); } 
PostPaymentMethodConfigurationsRequestLinkDisplayPreference copyWith({PostPaymentMethodConfigurationsRequestLinkDisplayPreferencePreference Function()? preference}) { return PostPaymentMethodConfigurationsRequestLinkDisplayPreference(
  preference: preference != null ? preference() : this.preference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsRequestLinkDisplayPreference &&
          preference == other.preference; } 
@override int get hashCode { return preference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestLinkDisplayPreference(preference: $preference)'; } 
 }
