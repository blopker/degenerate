// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostPaymentMethodConfigurationsConfigurationRequestBoletoDisplayPreferencePreference {const PostPaymentMethodConfigurationsConfigurationRequestBoletoDisplayPreferencePreference._(this.value);

factory PostPaymentMethodConfigurationsConfigurationRequestBoletoDisplayPreferencePreference.fromJson(String json) { return switch (json) {
  'none' => none,
  'off' => off,
  'on' => $on,
  _ => PostPaymentMethodConfigurationsConfigurationRequestBoletoDisplayPreferencePreference._(json),
}; }

static const PostPaymentMethodConfigurationsConfigurationRequestBoletoDisplayPreferencePreference none = PostPaymentMethodConfigurationsConfigurationRequestBoletoDisplayPreferencePreference._('none');

static const PostPaymentMethodConfigurationsConfigurationRequestBoletoDisplayPreferencePreference off = PostPaymentMethodConfigurationsConfigurationRequestBoletoDisplayPreferencePreference._('off');

static const PostPaymentMethodConfigurationsConfigurationRequestBoletoDisplayPreferencePreference $on = PostPaymentMethodConfigurationsConfigurationRequestBoletoDisplayPreferencePreference._('on');

static const List<PostPaymentMethodConfigurationsConfigurationRequestBoletoDisplayPreferencePreference> values = [none, off, $on];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentMethodConfigurationsConfigurationRequestBoletoDisplayPreferencePreference && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestBoletoDisplayPreferencePreference($value)'; } 
 }
final class PostPaymentMethodConfigurationsConfigurationRequestBoletoDisplayPreference {const PostPaymentMethodConfigurationsConfigurationRequestBoletoDisplayPreference({this.preference});

factory PostPaymentMethodConfigurationsConfigurationRequestBoletoDisplayPreference.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsConfigurationRequestBoletoDisplayPreference(
  preference: json['preference'] != null ? PostPaymentMethodConfigurationsConfigurationRequestBoletoDisplayPreferencePreference.fromJson(json['preference'] as String) : null,
); }

final PostPaymentMethodConfigurationsConfigurationRequestBoletoDisplayPreferencePreference? preference;

Map<String, dynamic> toJson() { return {
  if (preference != null) 'preference': preference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostPaymentMethodConfigurationsConfigurationRequestBoletoDisplayPreference copyWith({PostPaymentMethodConfigurationsConfigurationRequestBoletoDisplayPreferencePreference Function()? preference}) { return PostPaymentMethodConfigurationsConfigurationRequestBoletoDisplayPreference(
  preference: preference != null ? preference() : this.preference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsConfigurationRequestBoletoDisplayPreference &&
          preference == other.preference; } 
@override int get hashCode { return preference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestBoletoDisplayPreference(preference: $preference)'; } 
 }
