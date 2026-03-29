// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostPaymentMethodConfigurationsConfigurationRequestAmazonPayDisplayPreferencePreference {const PostPaymentMethodConfigurationsConfigurationRequestAmazonPayDisplayPreferencePreference._(this.value);

factory PostPaymentMethodConfigurationsConfigurationRequestAmazonPayDisplayPreferencePreference.fromJson(String json) { return switch (json) {
  'none' => none,
  'off' => off,
  'on' => $on,
  _ => PostPaymentMethodConfigurationsConfigurationRequestAmazonPayDisplayPreferencePreference._(json),
}; }

static const PostPaymentMethodConfigurationsConfigurationRequestAmazonPayDisplayPreferencePreference none = PostPaymentMethodConfigurationsConfigurationRequestAmazonPayDisplayPreferencePreference._('none');

static const PostPaymentMethodConfigurationsConfigurationRequestAmazonPayDisplayPreferencePreference off = PostPaymentMethodConfigurationsConfigurationRequestAmazonPayDisplayPreferencePreference._('off');

static const PostPaymentMethodConfigurationsConfigurationRequestAmazonPayDisplayPreferencePreference $on = PostPaymentMethodConfigurationsConfigurationRequestAmazonPayDisplayPreferencePreference._('on');

static const List<PostPaymentMethodConfigurationsConfigurationRequestAmazonPayDisplayPreferencePreference> values = [none, off, $on];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentMethodConfigurationsConfigurationRequestAmazonPayDisplayPreferencePreference && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestAmazonPayDisplayPreferencePreference($value)'; } 
 }
final class PostPaymentMethodConfigurationsConfigurationRequestAmazonPayDisplayPreference {const PostPaymentMethodConfigurationsConfigurationRequestAmazonPayDisplayPreference({this.preference});

factory PostPaymentMethodConfigurationsConfigurationRequestAmazonPayDisplayPreference.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsConfigurationRequestAmazonPayDisplayPreference(
  preference: json['preference'] != null ? PostPaymentMethodConfigurationsConfigurationRequestAmazonPayDisplayPreferencePreference.fromJson(json['preference'] as String) : null,
); }

final PostPaymentMethodConfigurationsConfigurationRequestAmazonPayDisplayPreferencePreference? preference;

Map<String, dynamic> toJson() { return {
  if (preference != null) 'preference': preference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'preference'}.contains(key)); } 
PostPaymentMethodConfigurationsConfigurationRequestAmazonPayDisplayPreference copyWith({PostPaymentMethodConfigurationsConfigurationRequestAmazonPayDisplayPreferencePreference Function()? preference}) { return PostPaymentMethodConfigurationsConfigurationRequestAmazonPayDisplayPreference(
  preference: preference != null ? preference() : this.preference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsConfigurationRequestAmazonPayDisplayPreference &&
          preference == other.preference; } 
@override int get hashCode { return preference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestAmazonPayDisplayPreference(preference: $preference)'; } 
 }
