// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostPaymentMethodConfigurationsConfigurationRequestIdealDisplayPreferencePreference {const PostPaymentMethodConfigurationsConfigurationRequestIdealDisplayPreferencePreference._(this.value);

factory PostPaymentMethodConfigurationsConfigurationRequestIdealDisplayPreferencePreference.fromJson(String json) { return switch (json) {
  'none' => none,
  'off' => off,
  'on' => $on,
  _ => PostPaymentMethodConfigurationsConfigurationRequestIdealDisplayPreferencePreference._(json),
}; }

static const PostPaymentMethodConfigurationsConfigurationRequestIdealDisplayPreferencePreference none = PostPaymentMethodConfigurationsConfigurationRequestIdealDisplayPreferencePreference._('none');

static const PostPaymentMethodConfigurationsConfigurationRequestIdealDisplayPreferencePreference off = PostPaymentMethodConfigurationsConfigurationRequestIdealDisplayPreferencePreference._('off');

static const PostPaymentMethodConfigurationsConfigurationRequestIdealDisplayPreferencePreference $on = PostPaymentMethodConfigurationsConfigurationRequestIdealDisplayPreferencePreference._('on');

static const List<PostPaymentMethodConfigurationsConfigurationRequestIdealDisplayPreferencePreference> values = [none, off, $on];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentMethodConfigurationsConfigurationRequestIdealDisplayPreferencePreference && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestIdealDisplayPreferencePreference($value)'; } 
 }
final class PostPaymentMethodConfigurationsConfigurationRequestIdealDisplayPreference {const PostPaymentMethodConfigurationsConfigurationRequestIdealDisplayPreference({this.preference});

factory PostPaymentMethodConfigurationsConfigurationRequestIdealDisplayPreference.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsConfigurationRequestIdealDisplayPreference(
  preference: json['preference'] != null ? PostPaymentMethodConfigurationsConfigurationRequestIdealDisplayPreferencePreference.fromJson(json['preference'] as String) : null,
); }

final PostPaymentMethodConfigurationsConfigurationRequestIdealDisplayPreferencePreference? preference;

Map<String, dynamic> toJson() { return {
  if (preference != null) 'preference': preference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'preference'}.contains(key)); } 
PostPaymentMethodConfigurationsConfigurationRequestIdealDisplayPreference copyWith({PostPaymentMethodConfigurationsConfigurationRequestIdealDisplayPreferencePreference Function()? preference}) { return PostPaymentMethodConfigurationsConfigurationRequestIdealDisplayPreference(
  preference: preference != null ? preference() : this.preference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsConfigurationRequestIdealDisplayPreference &&
          preference == other.preference; } 
@override int get hashCode { return preference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestIdealDisplayPreference(preference: $preference)'; } 
 }
