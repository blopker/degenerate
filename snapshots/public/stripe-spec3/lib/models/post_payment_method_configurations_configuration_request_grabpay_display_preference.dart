// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostPaymentMethodConfigurationsConfigurationRequestGrabpayDisplayPreferencePreference {const PostPaymentMethodConfigurationsConfigurationRequestGrabpayDisplayPreferencePreference._(this.value);

factory PostPaymentMethodConfigurationsConfigurationRequestGrabpayDisplayPreferencePreference.fromJson(String json) { return switch (json) {
  'none' => none,
  'off' => off,
  'on' => $on,
  _ => PostPaymentMethodConfigurationsConfigurationRequestGrabpayDisplayPreferencePreference._(json),
}; }

static const PostPaymentMethodConfigurationsConfigurationRequestGrabpayDisplayPreferencePreference none = PostPaymentMethodConfigurationsConfigurationRequestGrabpayDisplayPreferencePreference._('none');

static const PostPaymentMethodConfigurationsConfigurationRequestGrabpayDisplayPreferencePreference off = PostPaymentMethodConfigurationsConfigurationRequestGrabpayDisplayPreferencePreference._('off');

static const PostPaymentMethodConfigurationsConfigurationRequestGrabpayDisplayPreferencePreference $on = PostPaymentMethodConfigurationsConfigurationRequestGrabpayDisplayPreferencePreference._('on');

static const List<PostPaymentMethodConfigurationsConfigurationRequestGrabpayDisplayPreferencePreference> values = [none, off, $on];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentMethodConfigurationsConfigurationRequestGrabpayDisplayPreferencePreference && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestGrabpayDisplayPreferencePreference($value)'; } 
 }
final class PostPaymentMethodConfigurationsConfigurationRequestGrabpayDisplayPreference {const PostPaymentMethodConfigurationsConfigurationRequestGrabpayDisplayPreference({this.preference});

factory PostPaymentMethodConfigurationsConfigurationRequestGrabpayDisplayPreference.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsConfigurationRequestGrabpayDisplayPreference(
  preference: json['preference'] != null ? PostPaymentMethodConfigurationsConfigurationRequestGrabpayDisplayPreferencePreference.fromJson(json['preference'] as String) : null,
); }

final PostPaymentMethodConfigurationsConfigurationRequestGrabpayDisplayPreferencePreference? preference;

Map<String, dynamic> toJson() { return {
  if (preference != null) 'preference': preference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostPaymentMethodConfigurationsConfigurationRequestGrabpayDisplayPreference copyWith({PostPaymentMethodConfigurationsConfigurationRequestGrabpayDisplayPreferencePreference Function()? preference}) { return PostPaymentMethodConfigurationsConfigurationRequestGrabpayDisplayPreference(
  preference: preference != null ? preference() : this.preference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsConfigurationRequestGrabpayDisplayPreference &&
          preference == other.preference; } 
@override int get hashCode { return preference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestGrabpayDisplayPreference(preference: $preference)'; } 
 }
