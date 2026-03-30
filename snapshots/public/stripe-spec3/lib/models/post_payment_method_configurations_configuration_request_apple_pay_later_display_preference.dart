// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostPaymentMethodConfigurationsConfigurationRequestApplePayLaterDisplayPreferencePreference {const PostPaymentMethodConfigurationsConfigurationRequestApplePayLaterDisplayPreferencePreference._(this.value);

factory PostPaymentMethodConfigurationsConfigurationRequestApplePayLaterDisplayPreferencePreference.fromJson(String json) { return switch (json) {
  'none' => none,
  'off' => off,
  'on' => $on,
  _ => PostPaymentMethodConfigurationsConfigurationRequestApplePayLaterDisplayPreferencePreference._(json),
}; }

static const PostPaymentMethodConfigurationsConfigurationRequestApplePayLaterDisplayPreferencePreference none = PostPaymentMethodConfigurationsConfigurationRequestApplePayLaterDisplayPreferencePreference._('none');

static const PostPaymentMethodConfigurationsConfigurationRequestApplePayLaterDisplayPreferencePreference off = PostPaymentMethodConfigurationsConfigurationRequestApplePayLaterDisplayPreferencePreference._('off');

static const PostPaymentMethodConfigurationsConfigurationRequestApplePayLaterDisplayPreferencePreference $on = PostPaymentMethodConfigurationsConfigurationRequestApplePayLaterDisplayPreferencePreference._('on');

static const List<PostPaymentMethodConfigurationsConfigurationRequestApplePayLaterDisplayPreferencePreference> values = [none, off, $on];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentMethodConfigurationsConfigurationRequestApplePayLaterDisplayPreferencePreference && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestApplePayLaterDisplayPreferencePreference($value)'; } 
 }
final class PostPaymentMethodConfigurationsConfigurationRequestApplePayLaterDisplayPreference {const PostPaymentMethodConfigurationsConfigurationRequestApplePayLaterDisplayPreference({this.preference});

factory PostPaymentMethodConfigurationsConfigurationRequestApplePayLaterDisplayPreference.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsConfigurationRequestApplePayLaterDisplayPreference(
  preference: json['preference'] != null ? PostPaymentMethodConfigurationsConfigurationRequestApplePayLaterDisplayPreferencePreference.fromJson(json['preference'] as String) : null,
); }

final PostPaymentMethodConfigurationsConfigurationRequestApplePayLaterDisplayPreferencePreference? preference;

Map<String, dynamic> toJson() { return {
  if (preference != null) 'preference': preference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'preference'}.contains(key)); } 
PostPaymentMethodConfigurationsConfigurationRequestApplePayLaterDisplayPreference copyWith({PostPaymentMethodConfigurationsConfigurationRequestApplePayLaterDisplayPreferencePreference Function()? preference}) { return PostPaymentMethodConfigurationsConfigurationRequestApplePayLaterDisplayPreference(
  preference: preference != null ? preference() : this.preference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsConfigurationRequestApplePayLaterDisplayPreference &&
          preference == other.preference; } 
@override int get hashCode { return preference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestApplePayLaterDisplayPreference(preference: $preference)'; } 
 }
