// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentMethodConfigurationsRequestBoletoDisplayPreferencePreference {const PostPaymentMethodConfigurationsRequestBoletoDisplayPreferencePreference._(this.value);

factory PostPaymentMethodConfigurationsRequestBoletoDisplayPreferencePreference.fromJson(String json) { return switch (json) {
  'none' => none,
  'off' => off,
  'on' => $on,
  _ => PostPaymentMethodConfigurationsRequestBoletoDisplayPreferencePreference._(json),
}; }

static const PostPaymentMethodConfigurationsRequestBoletoDisplayPreferencePreference none = PostPaymentMethodConfigurationsRequestBoletoDisplayPreferencePreference._('none');

static const PostPaymentMethodConfigurationsRequestBoletoDisplayPreferencePreference off = PostPaymentMethodConfigurationsRequestBoletoDisplayPreferencePreference._('off');

static const PostPaymentMethodConfigurationsRequestBoletoDisplayPreferencePreference $on = PostPaymentMethodConfigurationsRequestBoletoDisplayPreferencePreference._('on');

static const List<PostPaymentMethodConfigurationsRequestBoletoDisplayPreferencePreference> values = [none, off, $on];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentMethodConfigurationsRequestBoletoDisplayPreferencePreference && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestBoletoDisplayPreferencePreference($value)'; } 
 }
@immutable final class PostPaymentMethodConfigurationsRequestBoletoDisplayPreference {const PostPaymentMethodConfigurationsRequestBoletoDisplayPreference({this.preference});

factory PostPaymentMethodConfigurationsRequestBoletoDisplayPreference.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsRequestBoletoDisplayPreference(
  preference: json['preference'] != null ? PostPaymentMethodConfigurationsRequestBoletoDisplayPreferencePreference.fromJson(json['preference'] as String) : null,
); }

final PostPaymentMethodConfigurationsRequestBoletoDisplayPreferencePreference? preference;

Map<String, dynamic> toJson() { return {
  if (preference != null) 'preference': preference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'preference'}.contains(key)); } 
PostPaymentMethodConfigurationsRequestBoletoDisplayPreference copyWith({PostPaymentMethodConfigurationsRequestBoletoDisplayPreferencePreference Function()? preference}) { return PostPaymentMethodConfigurationsRequestBoletoDisplayPreference(
  preference: preference != null ? preference() : this.preference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsRequestBoletoDisplayPreference &&
          preference == other.preference; } 
@override int get hashCode { return preference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestBoletoDisplayPreference(preference: $preference)'; } 
 }
