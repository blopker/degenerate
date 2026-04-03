// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentMethodConfigurationsRequestUsBankAccountDisplayPreferencePreference {const PostPaymentMethodConfigurationsRequestUsBankAccountDisplayPreferencePreference._(this.value);

factory PostPaymentMethodConfigurationsRequestUsBankAccountDisplayPreferencePreference.fromJson(String json) { return switch (json) {
  'none' => none,
  'off' => off,
  'on' => $on,
  _ => PostPaymentMethodConfigurationsRequestUsBankAccountDisplayPreferencePreference._(json),
}; }

static const PostPaymentMethodConfigurationsRequestUsBankAccountDisplayPreferencePreference none = PostPaymentMethodConfigurationsRequestUsBankAccountDisplayPreferencePreference._('none');

static const PostPaymentMethodConfigurationsRequestUsBankAccountDisplayPreferencePreference off = PostPaymentMethodConfigurationsRequestUsBankAccountDisplayPreferencePreference._('off');

static const PostPaymentMethodConfigurationsRequestUsBankAccountDisplayPreferencePreference $on = PostPaymentMethodConfigurationsRequestUsBankAccountDisplayPreferencePreference._('on');

static const List<PostPaymentMethodConfigurationsRequestUsBankAccountDisplayPreferencePreference> values = [none, off, $on];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentMethodConfigurationsRequestUsBankAccountDisplayPreferencePreference && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestUsBankAccountDisplayPreferencePreference($value)'; } 
 }
@immutable final class PostPaymentMethodConfigurationsRequestUsBankAccountDisplayPreference {const PostPaymentMethodConfigurationsRequestUsBankAccountDisplayPreference({this.preference});

factory PostPaymentMethodConfigurationsRequestUsBankAccountDisplayPreference.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsRequestUsBankAccountDisplayPreference(
  preference: json['preference'] != null ? PostPaymentMethodConfigurationsRequestUsBankAccountDisplayPreferencePreference.fromJson(json['preference'] as String) : null,
); }

final PostPaymentMethodConfigurationsRequestUsBankAccountDisplayPreferencePreference? preference;

Map<String, dynamic> toJson() { return {
  if (preference != null) 'preference': preference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'preference'}.contains(key)); } 
PostPaymentMethodConfigurationsRequestUsBankAccountDisplayPreference copyWith({PostPaymentMethodConfigurationsRequestUsBankAccountDisplayPreferencePreference Function()? preference}) { return PostPaymentMethodConfigurationsRequestUsBankAccountDisplayPreference(
  preference: preference != null ? preference() : this.preference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsRequestUsBankAccountDisplayPreference &&
          preference == other.preference; } 
@override int get hashCode { return preference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestUsBankAccountDisplayPreference(preference: $preference)'; } 
 }
