// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostPaymentMethodConfigurationsConfigurationRequestAlipayDisplayPreferencePreference {const PostPaymentMethodConfigurationsConfigurationRequestAlipayDisplayPreferencePreference._(this.value);

factory PostPaymentMethodConfigurationsConfigurationRequestAlipayDisplayPreferencePreference.fromJson(String json) { return switch (json) {
  'none' => none,
  'off' => off,
  'on' => $on,
  _ => PostPaymentMethodConfigurationsConfigurationRequestAlipayDisplayPreferencePreference._(json),
}; }

static const PostPaymentMethodConfigurationsConfigurationRequestAlipayDisplayPreferencePreference none = PostPaymentMethodConfigurationsConfigurationRequestAlipayDisplayPreferencePreference._('none');

static const PostPaymentMethodConfigurationsConfigurationRequestAlipayDisplayPreferencePreference off = PostPaymentMethodConfigurationsConfigurationRequestAlipayDisplayPreferencePreference._('off');

static const PostPaymentMethodConfigurationsConfigurationRequestAlipayDisplayPreferencePreference $on = PostPaymentMethodConfigurationsConfigurationRequestAlipayDisplayPreferencePreference._('on');

static const List<PostPaymentMethodConfigurationsConfigurationRequestAlipayDisplayPreferencePreference> values = [none, off, $on];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentMethodConfigurationsConfigurationRequestAlipayDisplayPreferencePreference && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestAlipayDisplayPreferencePreference($value)'; } 
 }
final class PostPaymentMethodConfigurationsConfigurationRequestAlipayDisplayPreference {const PostPaymentMethodConfigurationsConfigurationRequestAlipayDisplayPreference({this.preference});

factory PostPaymentMethodConfigurationsConfigurationRequestAlipayDisplayPreference.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsConfigurationRequestAlipayDisplayPreference(
  preference: json['preference'] != null ? PostPaymentMethodConfigurationsConfigurationRequestAlipayDisplayPreferencePreference.fromJson(json['preference'] as String) : null,
); }

final PostPaymentMethodConfigurationsConfigurationRequestAlipayDisplayPreferencePreference? preference;

Map<String, dynamic> toJson() { return {
  if (preference != null) 'preference': preference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostPaymentMethodConfigurationsConfigurationRequestAlipayDisplayPreference copyWith({PostPaymentMethodConfigurationsConfigurationRequestAlipayDisplayPreferencePreference Function()? preference}) { return PostPaymentMethodConfigurationsConfigurationRequestAlipayDisplayPreference(
  preference: preference != null ? preference() : this.preference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsConfigurationRequestAlipayDisplayPreference &&
          preference == other.preference; } 
@override int get hashCode { return preference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestAlipayDisplayPreference(preference: $preference)'; } 
 }
