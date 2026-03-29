// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostPaymentMethodConfigurationsConfigurationRequestWechatPayDisplayPreferencePreference {const PostPaymentMethodConfigurationsConfigurationRequestWechatPayDisplayPreferencePreference._(this.value);

factory PostPaymentMethodConfigurationsConfigurationRequestWechatPayDisplayPreferencePreference.fromJson(String json) { return switch (json) {
  'none' => none,
  'off' => off,
  'on' => $on,
  _ => PostPaymentMethodConfigurationsConfigurationRequestWechatPayDisplayPreferencePreference._(json),
}; }

static const PostPaymentMethodConfigurationsConfigurationRequestWechatPayDisplayPreferencePreference none = PostPaymentMethodConfigurationsConfigurationRequestWechatPayDisplayPreferencePreference._('none');

static const PostPaymentMethodConfigurationsConfigurationRequestWechatPayDisplayPreferencePreference off = PostPaymentMethodConfigurationsConfigurationRequestWechatPayDisplayPreferencePreference._('off');

static const PostPaymentMethodConfigurationsConfigurationRequestWechatPayDisplayPreferencePreference $on = PostPaymentMethodConfigurationsConfigurationRequestWechatPayDisplayPreferencePreference._('on');

static const List<PostPaymentMethodConfigurationsConfigurationRequestWechatPayDisplayPreferencePreference> values = [none, off, $on];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentMethodConfigurationsConfigurationRequestWechatPayDisplayPreferencePreference && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestWechatPayDisplayPreferencePreference($value)'; } 
 }
final class PostPaymentMethodConfigurationsConfigurationRequestWechatPayDisplayPreference {const PostPaymentMethodConfigurationsConfigurationRequestWechatPayDisplayPreference({this.preference});

factory PostPaymentMethodConfigurationsConfigurationRequestWechatPayDisplayPreference.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsConfigurationRequestWechatPayDisplayPreference(
  preference: json['preference'] != null ? PostPaymentMethodConfigurationsConfigurationRequestWechatPayDisplayPreferencePreference.fromJson(json['preference'] as String) : null,
); }

final PostPaymentMethodConfigurationsConfigurationRequestWechatPayDisplayPreferencePreference? preference;

Map<String, dynamic> toJson() { return {
  if (preference != null) 'preference': preference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostPaymentMethodConfigurationsConfigurationRequestWechatPayDisplayPreference copyWith({PostPaymentMethodConfigurationsConfigurationRequestWechatPayDisplayPreferencePreference Function()? preference}) { return PostPaymentMethodConfigurationsConfigurationRequestWechatPayDisplayPreference(
  preference: preference != null ? preference() : this.preference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsConfigurationRequestWechatPayDisplayPreference &&
          preference == other.preference; } 
@override int get hashCode { return preference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestWechatPayDisplayPreference(preference: $preference)'; } 
 }
