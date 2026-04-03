// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentMethodConfigurationsRequestAcssDebitDisplayPreferencePreference {const PostPaymentMethodConfigurationsRequestAcssDebitDisplayPreferencePreference._(this.value);

factory PostPaymentMethodConfigurationsRequestAcssDebitDisplayPreferencePreference.fromJson(String json) { return switch (json) {
  'none' => none,
  'off' => off,
  'on' => $on,
  _ => PostPaymentMethodConfigurationsRequestAcssDebitDisplayPreferencePreference._(json),
}; }

static const PostPaymentMethodConfigurationsRequestAcssDebitDisplayPreferencePreference none = PostPaymentMethodConfigurationsRequestAcssDebitDisplayPreferencePreference._('none');

static const PostPaymentMethodConfigurationsRequestAcssDebitDisplayPreferencePreference off = PostPaymentMethodConfigurationsRequestAcssDebitDisplayPreferencePreference._('off');

static const PostPaymentMethodConfigurationsRequestAcssDebitDisplayPreferencePreference $on = PostPaymentMethodConfigurationsRequestAcssDebitDisplayPreferencePreference._('on');

static const List<PostPaymentMethodConfigurationsRequestAcssDebitDisplayPreferencePreference> values = [none, off, $on];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentMethodConfigurationsRequestAcssDebitDisplayPreferencePreference && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestAcssDebitDisplayPreferencePreference($value)'; } 
 }
@immutable final class PostPaymentMethodConfigurationsRequestAcssDebitDisplayPreference {const PostPaymentMethodConfigurationsRequestAcssDebitDisplayPreference({this.preference});

factory PostPaymentMethodConfigurationsRequestAcssDebitDisplayPreference.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsRequestAcssDebitDisplayPreference(
  preference: json['preference'] != null ? PostPaymentMethodConfigurationsRequestAcssDebitDisplayPreferencePreference.fromJson(json['preference'] as String) : null,
); }

final PostPaymentMethodConfigurationsRequestAcssDebitDisplayPreferencePreference? preference;

Map<String, dynamic> toJson() { return {
  if (preference != null) 'preference': preference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'preference'}.contains(key)); } 
PostPaymentMethodConfigurationsRequestAcssDebitDisplayPreference copyWith({PostPaymentMethodConfigurationsRequestAcssDebitDisplayPreferencePreference Function()? preference}) { return PostPaymentMethodConfigurationsRequestAcssDebitDisplayPreference(
  preference: preference != null ? preference() : this.preference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsRequestAcssDebitDisplayPreference &&
          preference == other.preference; } 
@override int get hashCode { return preference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestAcssDebitDisplayPreference(preference: $preference)'; } 
 }
