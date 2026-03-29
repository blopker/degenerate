// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostPaymentMethodConfigurationsConfigurationRequestZipDisplayPreferencePreference {const PostPaymentMethodConfigurationsConfigurationRequestZipDisplayPreferencePreference._(this.value);

factory PostPaymentMethodConfigurationsConfigurationRequestZipDisplayPreferencePreference.fromJson(String json) { return switch (json) {
  'none' => none,
  'off' => off,
  'on' => $on,
  _ => PostPaymentMethodConfigurationsConfigurationRequestZipDisplayPreferencePreference._(json),
}; }

static const PostPaymentMethodConfigurationsConfigurationRequestZipDisplayPreferencePreference none = PostPaymentMethodConfigurationsConfigurationRequestZipDisplayPreferencePreference._('none');

static const PostPaymentMethodConfigurationsConfigurationRequestZipDisplayPreferencePreference off = PostPaymentMethodConfigurationsConfigurationRequestZipDisplayPreferencePreference._('off');

static const PostPaymentMethodConfigurationsConfigurationRequestZipDisplayPreferencePreference $on = PostPaymentMethodConfigurationsConfigurationRequestZipDisplayPreferencePreference._('on');

static const List<PostPaymentMethodConfigurationsConfigurationRequestZipDisplayPreferencePreference> values = [none, off, $on];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentMethodConfigurationsConfigurationRequestZipDisplayPreferencePreference && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestZipDisplayPreferencePreference($value)'; } 
 }
final class PostPaymentMethodConfigurationsConfigurationRequestZipDisplayPreference {const PostPaymentMethodConfigurationsConfigurationRequestZipDisplayPreference({this.preference});

factory PostPaymentMethodConfigurationsConfigurationRequestZipDisplayPreference.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsConfigurationRequestZipDisplayPreference(
  preference: json['preference'] != null ? PostPaymentMethodConfigurationsConfigurationRequestZipDisplayPreferencePreference.fromJson(json['preference'] as String) : null,
); }

final PostPaymentMethodConfigurationsConfigurationRequestZipDisplayPreferencePreference? preference;

Map<String, dynamic> toJson() { return {
  if (preference != null) 'preference': preference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostPaymentMethodConfigurationsConfigurationRequestZipDisplayPreference copyWith({PostPaymentMethodConfigurationsConfigurationRequestZipDisplayPreferencePreference Function()? preference}) { return PostPaymentMethodConfigurationsConfigurationRequestZipDisplayPreference(
  preference: preference != null ? preference() : this.preference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsConfigurationRequestZipDisplayPreference &&
          preference == other.preference; } 
@override int get hashCode { return preference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestZipDisplayPreference(preference: $preference)'; } 
 }
