// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostPaymentMethodConfigurationsConfigurationRequestBillieDisplayPreferencePreference {const PostPaymentMethodConfigurationsConfigurationRequestBillieDisplayPreferencePreference._(this.value);

factory PostPaymentMethodConfigurationsConfigurationRequestBillieDisplayPreferencePreference.fromJson(String json) { return switch (json) {
  'none' => none,
  'off' => off,
  'on' => $on,
  _ => PostPaymentMethodConfigurationsConfigurationRequestBillieDisplayPreferencePreference._(json),
}; }

static const PostPaymentMethodConfigurationsConfigurationRequestBillieDisplayPreferencePreference none = PostPaymentMethodConfigurationsConfigurationRequestBillieDisplayPreferencePreference._('none');

static const PostPaymentMethodConfigurationsConfigurationRequestBillieDisplayPreferencePreference off = PostPaymentMethodConfigurationsConfigurationRequestBillieDisplayPreferencePreference._('off');

static const PostPaymentMethodConfigurationsConfigurationRequestBillieDisplayPreferencePreference $on = PostPaymentMethodConfigurationsConfigurationRequestBillieDisplayPreferencePreference._('on');

static const List<PostPaymentMethodConfigurationsConfigurationRequestBillieDisplayPreferencePreference> values = [none, off, $on];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentMethodConfigurationsConfigurationRequestBillieDisplayPreferencePreference && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestBillieDisplayPreferencePreference($value)'; } 
 }
final class PostPaymentMethodConfigurationsConfigurationRequestBillieDisplayPreference {const PostPaymentMethodConfigurationsConfigurationRequestBillieDisplayPreference({this.preference});

factory PostPaymentMethodConfigurationsConfigurationRequestBillieDisplayPreference.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsConfigurationRequestBillieDisplayPreference(
  preference: json['preference'] != null ? PostPaymentMethodConfigurationsConfigurationRequestBillieDisplayPreferencePreference.fromJson(json['preference'] as String) : null,
); }

final PostPaymentMethodConfigurationsConfigurationRequestBillieDisplayPreferencePreference? preference;

Map<String, dynamic> toJson() { return {
  if (preference != null) 'preference': preference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'preference'}.contains(key)); } 
PostPaymentMethodConfigurationsConfigurationRequestBillieDisplayPreference copyWith({PostPaymentMethodConfigurationsConfigurationRequestBillieDisplayPreferencePreference Function()? preference}) { return PostPaymentMethodConfigurationsConfigurationRequestBillieDisplayPreference(
  preference: preference != null ? preference() : this.preference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsConfigurationRequestBillieDisplayPreference &&
          preference == other.preference; } 
@override int get hashCode { return preference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestBillieDisplayPreference(preference: $preference)'; } 
 }
