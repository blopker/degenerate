// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostPaymentMethodConfigurationsConfigurationRequestPaytoDisplayPreferencePreference {const PostPaymentMethodConfigurationsConfigurationRequestPaytoDisplayPreferencePreference._(this.value);

factory PostPaymentMethodConfigurationsConfigurationRequestPaytoDisplayPreferencePreference.fromJson(String json) { return switch (json) {
  'none' => none,
  'off' => off,
  'on' => $on,
  _ => PostPaymentMethodConfigurationsConfigurationRequestPaytoDisplayPreferencePreference._(json),
}; }

static const PostPaymentMethodConfigurationsConfigurationRequestPaytoDisplayPreferencePreference none = PostPaymentMethodConfigurationsConfigurationRequestPaytoDisplayPreferencePreference._('none');

static const PostPaymentMethodConfigurationsConfigurationRequestPaytoDisplayPreferencePreference off = PostPaymentMethodConfigurationsConfigurationRequestPaytoDisplayPreferencePreference._('off');

static const PostPaymentMethodConfigurationsConfigurationRequestPaytoDisplayPreferencePreference $on = PostPaymentMethodConfigurationsConfigurationRequestPaytoDisplayPreferencePreference._('on');

static const List<PostPaymentMethodConfigurationsConfigurationRequestPaytoDisplayPreferencePreference> values = [none, off, $on];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentMethodConfigurationsConfigurationRequestPaytoDisplayPreferencePreference && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestPaytoDisplayPreferencePreference($value)'; } 
 }
final class PostPaymentMethodConfigurationsConfigurationRequestPaytoDisplayPreference {const PostPaymentMethodConfigurationsConfigurationRequestPaytoDisplayPreference({this.preference});

factory PostPaymentMethodConfigurationsConfigurationRequestPaytoDisplayPreference.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsConfigurationRequestPaytoDisplayPreference(
  preference: json['preference'] != null ? PostPaymentMethodConfigurationsConfigurationRequestPaytoDisplayPreferencePreference.fromJson(json['preference'] as String) : null,
); }

final PostPaymentMethodConfigurationsConfigurationRequestPaytoDisplayPreferencePreference? preference;

Map<String, dynamic> toJson() { return {
  if (preference != null) 'preference': preference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostPaymentMethodConfigurationsConfigurationRequestPaytoDisplayPreference copyWith({PostPaymentMethodConfigurationsConfigurationRequestPaytoDisplayPreferencePreference Function()? preference}) { return PostPaymentMethodConfigurationsConfigurationRequestPaytoDisplayPreference(
  preference: preference != null ? preference() : this.preference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsConfigurationRequestPaytoDisplayPreference &&
          preference == other.preference; } 
@override int get hashCode { return preference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestPaytoDisplayPreference(preference: $preference)'; } 
 }
