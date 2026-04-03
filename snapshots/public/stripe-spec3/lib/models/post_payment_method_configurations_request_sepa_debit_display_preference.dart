// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentMethodConfigurationsRequestSepaDebitDisplayPreferencePreference {const PostPaymentMethodConfigurationsRequestSepaDebitDisplayPreferencePreference._(this.value);

factory PostPaymentMethodConfigurationsRequestSepaDebitDisplayPreferencePreference.fromJson(String json) { return switch (json) {
  'none' => none,
  'off' => off,
  'on' => $on,
  _ => PostPaymentMethodConfigurationsRequestSepaDebitDisplayPreferencePreference._(json),
}; }

static const PostPaymentMethodConfigurationsRequestSepaDebitDisplayPreferencePreference none = PostPaymentMethodConfigurationsRequestSepaDebitDisplayPreferencePreference._('none');

static const PostPaymentMethodConfigurationsRequestSepaDebitDisplayPreferencePreference off = PostPaymentMethodConfigurationsRequestSepaDebitDisplayPreferencePreference._('off');

static const PostPaymentMethodConfigurationsRequestSepaDebitDisplayPreferencePreference $on = PostPaymentMethodConfigurationsRequestSepaDebitDisplayPreferencePreference._('on');

static const List<PostPaymentMethodConfigurationsRequestSepaDebitDisplayPreferencePreference> values = [none, off, $on];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentMethodConfigurationsRequestSepaDebitDisplayPreferencePreference && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestSepaDebitDisplayPreferencePreference($value)'; } 
 }
@immutable final class PostPaymentMethodConfigurationsRequestSepaDebitDisplayPreference {const PostPaymentMethodConfigurationsRequestSepaDebitDisplayPreference({this.preference});

factory PostPaymentMethodConfigurationsRequestSepaDebitDisplayPreference.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsRequestSepaDebitDisplayPreference(
  preference: json['preference'] != null ? PostPaymentMethodConfigurationsRequestSepaDebitDisplayPreferencePreference.fromJson(json['preference'] as String) : null,
); }

final PostPaymentMethodConfigurationsRequestSepaDebitDisplayPreferencePreference? preference;

Map<String, dynamic> toJson() { return {
  if (preference != null) 'preference': preference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'preference'}.contains(key)); } 
PostPaymentMethodConfigurationsRequestSepaDebitDisplayPreference copyWith({PostPaymentMethodConfigurationsRequestSepaDebitDisplayPreferencePreference Function()? preference}) { return PostPaymentMethodConfigurationsRequestSepaDebitDisplayPreference(
  preference: preference != null ? preference() : this.preference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsRequestSepaDebitDisplayPreference &&
          preference == other.preference; } 
@override int get hashCode { return preference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestSepaDebitDisplayPreference(preference: $preference)'; } 
 }
