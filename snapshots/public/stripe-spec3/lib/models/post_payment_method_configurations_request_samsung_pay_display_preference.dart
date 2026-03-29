// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostPaymentMethodConfigurationsRequestSamsungPayDisplayPreferencePreference {const PostPaymentMethodConfigurationsRequestSamsungPayDisplayPreferencePreference._(this.value);

factory PostPaymentMethodConfigurationsRequestSamsungPayDisplayPreferencePreference.fromJson(String json) { return switch (json) {
  'none' => none,
  'off' => off,
  'on' => $on,
  _ => PostPaymentMethodConfigurationsRequestSamsungPayDisplayPreferencePreference._(json),
}; }

static const PostPaymentMethodConfigurationsRequestSamsungPayDisplayPreferencePreference none = PostPaymentMethodConfigurationsRequestSamsungPayDisplayPreferencePreference._('none');

static const PostPaymentMethodConfigurationsRequestSamsungPayDisplayPreferencePreference off = PostPaymentMethodConfigurationsRequestSamsungPayDisplayPreferencePreference._('off');

static const PostPaymentMethodConfigurationsRequestSamsungPayDisplayPreferencePreference $on = PostPaymentMethodConfigurationsRequestSamsungPayDisplayPreferencePreference._('on');

static const List<PostPaymentMethodConfigurationsRequestSamsungPayDisplayPreferencePreference> values = [none, off, $on];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentMethodConfigurationsRequestSamsungPayDisplayPreferencePreference && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestSamsungPayDisplayPreferencePreference($value)'; } 
 }
final class PostPaymentMethodConfigurationsRequestSamsungPayDisplayPreference {const PostPaymentMethodConfigurationsRequestSamsungPayDisplayPreference({this.preference});

factory PostPaymentMethodConfigurationsRequestSamsungPayDisplayPreference.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsRequestSamsungPayDisplayPreference(
  preference: json['preference'] != null ? PostPaymentMethodConfigurationsRequestSamsungPayDisplayPreferencePreference.fromJson(json['preference'] as String) : null,
); }

final PostPaymentMethodConfigurationsRequestSamsungPayDisplayPreferencePreference? preference;

Map<String, dynamic> toJson() { return {
  if (preference != null) 'preference': preference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'preference'}.contains(key)); } 
PostPaymentMethodConfigurationsRequestSamsungPayDisplayPreference copyWith({PostPaymentMethodConfigurationsRequestSamsungPayDisplayPreferencePreference Function()? preference}) { return PostPaymentMethodConfigurationsRequestSamsungPayDisplayPreference(
  preference: preference != null ? preference() : this.preference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsRequestSamsungPayDisplayPreference &&
          preference == other.preference; } 
@override int get hashCode { return preference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestSamsungPayDisplayPreference(preference: $preference)'; } 
 }
