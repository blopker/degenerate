// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostPaymentMethodConfigurationsConfigurationRequestFpxDisplayPreferencePreference {const PostPaymentMethodConfigurationsConfigurationRequestFpxDisplayPreferencePreference._(this.value);

factory PostPaymentMethodConfigurationsConfigurationRequestFpxDisplayPreferencePreference.fromJson(String json) { return switch (json) {
  'none' => none,
  'off' => off,
  'on' => $on,
  _ => PostPaymentMethodConfigurationsConfigurationRequestFpxDisplayPreferencePreference._(json),
}; }

static const PostPaymentMethodConfigurationsConfigurationRequestFpxDisplayPreferencePreference none = PostPaymentMethodConfigurationsConfigurationRequestFpxDisplayPreferencePreference._('none');

static const PostPaymentMethodConfigurationsConfigurationRequestFpxDisplayPreferencePreference off = PostPaymentMethodConfigurationsConfigurationRequestFpxDisplayPreferencePreference._('off');

static const PostPaymentMethodConfigurationsConfigurationRequestFpxDisplayPreferencePreference $on = PostPaymentMethodConfigurationsConfigurationRequestFpxDisplayPreferencePreference._('on');

static const List<PostPaymentMethodConfigurationsConfigurationRequestFpxDisplayPreferencePreference> values = [none, off, $on];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentMethodConfigurationsConfigurationRequestFpxDisplayPreferencePreference && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestFpxDisplayPreferencePreference($value)'; } 
 }
final class PostPaymentMethodConfigurationsConfigurationRequestFpxDisplayPreference {const PostPaymentMethodConfigurationsConfigurationRequestFpxDisplayPreference({this.preference});

factory PostPaymentMethodConfigurationsConfigurationRequestFpxDisplayPreference.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsConfigurationRequestFpxDisplayPreference(
  preference: json['preference'] != null ? PostPaymentMethodConfigurationsConfigurationRequestFpxDisplayPreferencePreference.fromJson(json['preference'] as String) : null,
); }

final PostPaymentMethodConfigurationsConfigurationRequestFpxDisplayPreferencePreference? preference;

Map<String, dynamic> toJson() { return {
  if (preference != null) 'preference': preference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'preference'}.contains(key)); } 
PostPaymentMethodConfigurationsConfigurationRequestFpxDisplayPreference copyWith({PostPaymentMethodConfigurationsConfigurationRequestFpxDisplayPreferencePreference Function()? preference}) { return PostPaymentMethodConfigurationsConfigurationRequestFpxDisplayPreference(
  preference: preference != null ? preference() : this.preference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsConfigurationRequestFpxDisplayPreference &&
          preference == other.preference; } 
@override int get hashCode { return preference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestFpxDisplayPreference(preference: $preference)'; } 
 }
