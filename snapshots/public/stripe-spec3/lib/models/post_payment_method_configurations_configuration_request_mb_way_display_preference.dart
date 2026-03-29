// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostPaymentMethodConfigurationsConfigurationRequestMbWayDisplayPreferencePreference {const PostPaymentMethodConfigurationsConfigurationRequestMbWayDisplayPreferencePreference._(this.value);

factory PostPaymentMethodConfigurationsConfigurationRequestMbWayDisplayPreferencePreference.fromJson(String json) { return switch (json) {
  'none' => none,
  'off' => off,
  'on' => $on,
  _ => PostPaymentMethodConfigurationsConfigurationRequestMbWayDisplayPreferencePreference._(json),
}; }

static const PostPaymentMethodConfigurationsConfigurationRequestMbWayDisplayPreferencePreference none = PostPaymentMethodConfigurationsConfigurationRequestMbWayDisplayPreferencePreference._('none');

static const PostPaymentMethodConfigurationsConfigurationRequestMbWayDisplayPreferencePreference off = PostPaymentMethodConfigurationsConfigurationRequestMbWayDisplayPreferencePreference._('off');

static const PostPaymentMethodConfigurationsConfigurationRequestMbWayDisplayPreferencePreference $on = PostPaymentMethodConfigurationsConfigurationRequestMbWayDisplayPreferencePreference._('on');

static const List<PostPaymentMethodConfigurationsConfigurationRequestMbWayDisplayPreferencePreference> values = [none, off, $on];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentMethodConfigurationsConfigurationRequestMbWayDisplayPreferencePreference && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestMbWayDisplayPreferencePreference($value)'; } 
 }
final class PostPaymentMethodConfigurationsConfigurationRequestMbWayDisplayPreference {const PostPaymentMethodConfigurationsConfigurationRequestMbWayDisplayPreference({this.preference});

factory PostPaymentMethodConfigurationsConfigurationRequestMbWayDisplayPreference.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsConfigurationRequestMbWayDisplayPreference(
  preference: json['preference'] != null ? PostPaymentMethodConfigurationsConfigurationRequestMbWayDisplayPreferencePreference.fromJson(json['preference'] as String) : null,
); }

final PostPaymentMethodConfigurationsConfigurationRequestMbWayDisplayPreferencePreference? preference;

Map<String, dynamic> toJson() { return {
  if (preference != null) 'preference': preference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'preference'}.contains(key)); } 
PostPaymentMethodConfigurationsConfigurationRequestMbWayDisplayPreference copyWith({PostPaymentMethodConfigurationsConfigurationRequestMbWayDisplayPreferencePreference Function()? preference}) { return PostPaymentMethodConfigurationsConfigurationRequestMbWayDisplayPreference(
  preference: preference != null ? preference() : this.preference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsConfigurationRequestMbWayDisplayPreference &&
          preference == other.preference; } 
@override int get hashCode { return preference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestMbWayDisplayPreference(preference: $preference)'; } 
 }
