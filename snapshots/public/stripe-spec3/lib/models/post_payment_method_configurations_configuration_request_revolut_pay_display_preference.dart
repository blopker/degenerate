// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostPaymentMethodConfigurationsConfigurationRequestRevolutPayDisplayPreferencePreference {const PostPaymentMethodConfigurationsConfigurationRequestRevolutPayDisplayPreferencePreference._(this.value);

factory PostPaymentMethodConfigurationsConfigurationRequestRevolutPayDisplayPreferencePreference.fromJson(String json) { return switch (json) {
  'none' => none,
  'off' => off,
  'on' => $on,
  _ => PostPaymentMethodConfigurationsConfigurationRequestRevolutPayDisplayPreferencePreference._(json),
}; }

static const PostPaymentMethodConfigurationsConfigurationRequestRevolutPayDisplayPreferencePreference none = PostPaymentMethodConfigurationsConfigurationRequestRevolutPayDisplayPreferencePreference._('none');

static const PostPaymentMethodConfigurationsConfigurationRequestRevolutPayDisplayPreferencePreference off = PostPaymentMethodConfigurationsConfigurationRequestRevolutPayDisplayPreferencePreference._('off');

static const PostPaymentMethodConfigurationsConfigurationRequestRevolutPayDisplayPreferencePreference $on = PostPaymentMethodConfigurationsConfigurationRequestRevolutPayDisplayPreferencePreference._('on');

static const List<PostPaymentMethodConfigurationsConfigurationRequestRevolutPayDisplayPreferencePreference> values = [none, off, $on];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentMethodConfigurationsConfigurationRequestRevolutPayDisplayPreferencePreference && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestRevolutPayDisplayPreferencePreference($value)'; } 
 }
final class PostPaymentMethodConfigurationsConfigurationRequestRevolutPayDisplayPreference {const PostPaymentMethodConfigurationsConfigurationRequestRevolutPayDisplayPreference({this.preference});

factory PostPaymentMethodConfigurationsConfigurationRequestRevolutPayDisplayPreference.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsConfigurationRequestRevolutPayDisplayPreference(
  preference: json['preference'] != null ? PostPaymentMethodConfigurationsConfigurationRequestRevolutPayDisplayPreferencePreference.fromJson(json['preference'] as String) : null,
); }

final PostPaymentMethodConfigurationsConfigurationRequestRevolutPayDisplayPreferencePreference? preference;

Map<String, dynamic> toJson() { return {
  if (preference != null) 'preference': preference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'preference'}.contains(key)); } 
PostPaymentMethodConfigurationsConfigurationRequestRevolutPayDisplayPreference copyWith({PostPaymentMethodConfigurationsConfigurationRequestRevolutPayDisplayPreferencePreference Function()? preference}) { return PostPaymentMethodConfigurationsConfigurationRequestRevolutPayDisplayPreference(
  preference: preference != null ? preference() : this.preference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsConfigurationRequestRevolutPayDisplayPreference &&
          preference == other.preference; } 
@override int get hashCode { return preference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestRevolutPayDisplayPreference(preference: $preference)'; } 
 }
