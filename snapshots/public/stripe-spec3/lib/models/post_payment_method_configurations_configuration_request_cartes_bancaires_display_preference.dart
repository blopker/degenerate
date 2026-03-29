// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostPaymentMethodConfigurationsConfigurationRequestCartesBancairesDisplayPreferencePreference {const PostPaymentMethodConfigurationsConfigurationRequestCartesBancairesDisplayPreferencePreference._(this.value);

factory PostPaymentMethodConfigurationsConfigurationRequestCartesBancairesDisplayPreferencePreference.fromJson(String json) { return switch (json) {
  'none' => none,
  'off' => off,
  'on' => $on,
  _ => PostPaymentMethodConfigurationsConfigurationRequestCartesBancairesDisplayPreferencePreference._(json),
}; }

static const PostPaymentMethodConfigurationsConfigurationRequestCartesBancairesDisplayPreferencePreference none = PostPaymentMethodConfigurationsConfigurationRequestCartesBancairesDisplayPreferencePreference._('none');

static const PostPaymentMethodConfigurationsConfigurationRequestCartesBancairesDisplayPreferencePreference off = PostPaymentMethodConfigurationsConfigurationRequestCartesBancairesDisplayPreferencePreference._('off');

static const PostPaymentMethodConfigurationsConfigurationRequestCartesBancairesDisplayPreferencePreference $on = PostPaymentMethodConfigurationsConfigurationRequestCartesBancairesDisplayPreferencePreference._('on');

static const List<PostPaymentMethodConfigurationsConfigurationRequestCartesBancairesDisplayPreferencePreference> values = [none, off, $on];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentMethodConfigurationsConfigurationRequestCartesBancairesDisplayPreferencePreference && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestCartesBancairesDisplayPreferencePreference($value)'; } 
 }
final class PostPaymentMethodConfigurationsConfigurationRequestCartesBancairesDisplayPreference {const PostPaymentMethodConfigurationsConfigurationRequestCartesBancairesDisplayPreference({this.preference});

factory PostPaymentMethodConfigurationsConfigurationRequestCartesBancairesDisplayPreference.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsConfigurationRequestCartesBancairesDisplayPreference(
  preference: json['preference'] != null ? PostPaymentMethodConfigurationsConfigurationRequestCartesBancairesDisplayPreferencePreference.fromJson(json['preference'] as String) : null,
); }

final PostPaymentMethodConfigurationsConfigurationRequestCartesBancairesDisplayPreferencePreference? preference;

Map<String, dynamic> toJson() { return {
  if (preference != null) 'preference': preference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostPaymentMethodConfigurationsConfigurationRequestCartesBancairesDisplayPreference copyWith({PostPaymentMethodConfigurationsConfigurationRequestCartesBancairesDisplayPreferencePreference Function()? preference}) { return PostPaymentMethodConfigurationsConfigurationRequestCartesBancairesDisplayPreference(
  preference: preference != null ? preference() : this.preference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsConfigurationRequestCartesBancairesDisplayPreference &&
          preference == other.preference; } 
@override int get hashCode { return preference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestCartesBancairesDisplayPreference(preference: $preference)'; } 
 }
