// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentMethodConfigurationsRequestAfterpayClearpayDisplayPreferencePreference {const PostPaymentMethodConfigurationsRequestAfterpayClearpayDisplayPreferencePreference._(this.value);

factory PostPaymentMethodConfigurationsRequestAfterpayClearpayDisplayPreferencePreference.fromJson(String json) { return switch (json) {
  'none' => none,
  'off' => off,
  'on' => $on,
  _ => PostPaymentMethodConfigurationsRequestAfterpayClearpayDisplayPreferencePreference._(json),
}; }

static const PostPaymentMethodConfigurationsRequestAfterpayClearpayDisplayPreferencePreference none = PostPaymentMethodConfigurationsRequestAfterpayClearpayDisplayPreferencePreference._('none');

static const PostPaymentMethodConfigurationsRequestAfterpayClearpayDisplayPreferencePreference off = PostPaymentMethodConfigurationsRequestAfterpayClearpayDisplayPreferencePreference._('off');

static const PostPaymentMethodConfigurationsRequestAfterpayClearpayDisplayPreferencePreference $on = PostPaymentMethodConfigurationsRequestAfterpayClearpayDisplayPreferencePreference._('on');

static const List<PostPaymentMethodConfigurationsRequestAfterpayClearpayDisplayPreferencePreference> values = [none, off, $on];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentMethodConfigurationsRequestAfterpayClearpayDisplayPreferencePreference && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestAfterpayClearpayDisplayPreferencePreference($value)'; } 
 }
@immutable final class PostPaymentMethodConfigurationsRequestAfterpayClearpayDisplayPreference {const PostPaymentMethodConfigurationsRequestAfterpayClearpayDisplayPreference({this.preference});

factory PostPaymentMethodConfigurationsRequestAfterpayClearpayDisplayPreference.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsRequestAfterpayClearpayDisplayPreference(
  preference: json['preference'] != null ? PostPaymentMethodConfigurationsRequestAfterpayClearpayDisplayPreferencePreference.fromJson(json['preference'] as String) : null,
); }

final PostPaymentMethodConfigurationsRequestAfterpayClearpayDisplayPreferencePreference? preference;

Map<String, dynamic> toJson() { return {
  if (preference != null) 'preference': preference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'preference'}.contains(key)); } 
PostPaymentMethodConfigurationsRequestAfterpayClearpayDisplayPreference copyWith({PostPaymentMethodConfigurationsRequestAfterpayClearpayDisplayPreferencePreference Function()? preference}) { return PostPaymentMethodConfigurationsRequestAfterpayClearpayDisplayPreference(
  preference: preference != null ? preference() : this.preference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsRequestAfterpayClearpayDisplayPreference &&
          preference == other.preference; } 
@override int get hashCode { return preference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestAfterpayClearpayDisplayPreference(preference: $preference)'; } 
 }
