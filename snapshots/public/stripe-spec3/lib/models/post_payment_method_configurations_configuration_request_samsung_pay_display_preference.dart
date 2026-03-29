// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostPaymentMethodConfigurationsConfigurationRequestSamsungPayDisplayPreferencePreference {const PostPaymentMethodConfigurationsConfigurationRequestSamsungPayDisplayPreferencePreference._(this.value);

factory PostPaymentMethodConfigurationsConfigurationRequestSamsungPayDisplayPreferencePreference.fromJson(String json) { return switch (json) {
  'none' => none,
  'off' => off,
  'on' => $on,
  _ => PostPaymentMethodConfigurationsConfigurationRequestSamsungPayDisplayPreferencePreference._(json),
}; }

static const PostPaymentMethodConfigurationsConfigurationRequestSamsungPayDisplayPreferencePreference none = PostPaymentMethodConfigurationsConfigurationRequestSamsungPayDisplayPreferencePreference._('none');

static const PostPaymentMethodConfigurationsConfigurationRequestSamsungPayDisplayPreferencePreference off = PostPaymentMethodConfigurationsConfigurationRequestSamsungPayDisplayPreferencePreference._('off');

static const PostPaymentMethodConfigurationsConfigurationRequestSamsungPayDisplayPreferencePreference $on = PostPaymentMethodConfigurationsConfigurationRequestSamsungPayDisplayPreferencePreference._('on');

static const List<PostPaymentMethodConfigurationsConfigurationRequestSamsungPayDisplayPreferencePreference> values = [none, off, $on];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentMethodConfigurationsConfigurationRequestSamsungPayDisplayPreferencePreference && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestSamsungPayDisplayPreferencePreference($value)'; } 
 }
final class PostPaymentMethodConfigurationsConfigurationRequestSamsungPayDisplayPreference {const PostPaymentMethodConfigurationsConfigurationRequestSamsungPayDisplayPreference({this.preference});

factory PostPaymentMethodConfigurationsConfigurationRequestSamsungPayDisplayPreference.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsConfigurationRequestSamsungPayDisplayPreference(
  preference: json['preference'] != null ? PostPaymentMethodConfigurationsConfigurationRequestSamsungPayDisplayPreferencePreference.fromJson(json['preference'] as String) : null,
); }

final PostPaymentMethodConfigurationsConfigurationRequestSamsungPayDisplayPreferencePreference? preference;

Map<String, dynamic> toJson() { return {
  if (preference != null) 'preference': preference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'preference'}.contains(key)); } 
PostPaymentMethodConfigurationsConfigurationRequestSamsungPayDisplayPreference copyWith({PostPaymentMethodConfigurationsConfigurationRequestSamsungPayDisplayPreferencePreference Function()? preference}) { return PostPaymentMethodConfigurationsConfigurationRequestSamsungPayDisplayPreference(
  preference: preference != null ? preference() : this.preference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsConfigurationRequestSamsungPayDisplayPreference &&
          preference == other.preference; } 
@override int get hashCode { return preference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestSamsungPayDisplayPreference(preference: $preference)'; } 
 }
