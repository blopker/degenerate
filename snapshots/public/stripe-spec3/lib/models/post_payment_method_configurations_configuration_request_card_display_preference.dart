// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostPaymentMethodConfigurationsConfigurationRequestCardDisplayPreferencePreference {const PostPaymentMethodConfigurationsConfigurationRequestCardDisplayPreferencePreference._(this.value);

factory PostPaymentMethodConfigurationsConfigurationRequestCardDisplayPreferencePreference.fromJson(String json) { return switch (json) {
  'none' => none,
  'off' => off,
  'on' => $on,
  _ => PostPaymentMethodConfigurationsConfigurationRequestCardDisplayPreferencePreference._(json),
}; }

static const PostPaymentMethodConfigurationsConfigurationRequestCardDisplayPreferencePreference none = PostPaymentMethodConfigurationsConfigurationRequestCardDisplayPreferencePreference._('none');

static const PostPaymentMethodConfigurationsConfigurationRequestCardDisplayPreferencePreference off = PostPaymentMethodConfigurationsConfigurationRequestCardDisplayPreferencePreference._('off');

static const PostPaymentMethodConfigurationsConfigurationRequestCardDisplayPreferencePreference $on = PostPaymentMethodConfigurationsConfigurationRequestCardDisplayPreferencePreference._('on');

static const List<PostPaymentMethodConfigurationsConfigurationRequestCardDisplayPreferencePreference> values = [none, off, $on];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentMethodConfigurationsConfigurationRequestCardDisplayPreferencePreference && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestCardDisplayPreferencePreference($value)'; } 
 }
final class PostPaymentMethodConfigurationsConfigurationRequestCardDisplayPreference {const PostPaymentMethodConfigurationsConfigurationRequestCardDisplayPreference({this.preference});

factory PostPaymentMethodConfigurationsConfigurationRequestCardDisplayPreference.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsConfigurationRequestCardDisplayPreference(
  preference: json['preference'] != null ? PostPaymentMethodConfigurationsConfigurationRequestCardDisplayPreferencePreference.fromJson(json['preference'] as String) : null,
); }

final PostPaymentMethodConfigurationsConfigurationRequestCardDisplayPreferencePreference? preference;

Map<String, dynamic> toJson() { return {
  if (preference != null) 'preference': preference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'preference'}.contains(key)); } 
PostPaymentMethodConfigurationsConfigurationRequestCardDisplayPreference copyWith({PostPaymentMethodConfigurationsConfigurationRequestCardDisplayPreferencePreference Function()? preference}) { return PostPaymentMethodConfigurationsConfigurationRequestCardDisplayPreference(
  preference: preference != null ? preference() : this.preference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsConfigurationRequestCardDisplayPreference &&
          preference == other.preference; } 
@override int get hashCode { return preference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestCardDisplayPreference(preference: $preference)'; } 
 }
