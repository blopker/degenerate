// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostPaymentMethodConfigurationsConfigurationRequestGiropayDisplayPreferencePreference {const PostPaymentMethodConfigurationsConfigurationRequestGiropayDisplayPreferencePreference._(this.value);

factory PostPaymentMethodConfigurationsConfigurationRequestGiropayDisplayPreferencePreference.fromJson(String json) { return switch (json) {
  'none' => none,
  'off' => off,
  'on' => $on,
  _ => PostPaymentMethodConfigurationsConfigurationRequestGiropayDisplayPreferencePreference._(json),
}; }

static const PostPaymentMethodConfigurationsConfigurationRequestGiropayDisplayPreferencePreference none = PostPaymentMethodConfigurationsConfigurationRequestGiropayDisplayPreferencePreference._('none');

static const PostPaymentMethodConfigurationsConfigurationRequestGiropayDisplayPreferencePreference off = PostPaymentMethodConfigurationsConfigurationRequestGiropayDisplayPreferencePreference._('off');

static const PostPaymentMethodConfigurationsConfigurationRequestGiropayDisplayPreferencePreference $on = PostPaymentMethodConfigurationsConfigurationRequestGiropayDisplayPreferencePreference._('on');

static const List<PostPaymentMethodConfigurationsConfigurationRequestGiropayDisplayPreferencePreference> values = [none, off, $on];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentMethodConfigurationsConfigurationRequestGiropayDisplayPreferencePreference && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestGiropayDisplayPreferencePreference($value)'; } 
 }
final class PostPaymentMethodConfigurationsConfigurationRequestGiropayDisplayPreference {const PostPaymentMethodConfigurationsConfigurationRequestGiropayDisplayPreference({this.preference});

factory PostPaymentMethodConfigurationsConfigurationRequestGiropayDisplayPreference.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsConfigurationRequestGiropayDisplayPreference(
  preference: json['preference'] != null ? PostPaymentMethodConfigurationsConfigurationRequestGiropayDisplayPreferencePreference.fromJson(json['preference'] as String) : null,
); }

final PostPaymentMethodConfigurationsConfigurationRequestGiropayDisplayPreferencePreference? preference;

Map<String, dynamic> toJson() { return {
  if (preference != null) 'preference': preference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'preference'}.contains(key)); } 
PostPaymentMethodConfigurationsConfigurationRequestGiropayDisplayPreference copyWith({PostPaymentMethodConfigurationsConfigurationRequestGiropayDisplayPreferencePreference Function()? preference}) { return PostPaymentMethodConfigurationsConfigurationRequestGiropayDisplayPreference(
  preference: preference != null ? preference() : this.preference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsConfigurationRequestGiropayDisplayPreference &&
          preference == other.preference; } 
@override int get hashCode { return preference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestGiropayDisplayPreference(preference: $preference)'; } 
 }
