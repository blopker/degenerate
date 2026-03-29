// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostPaymentMethodConfigurationsConfigurationRequestBacsDebitDisplayPreferencePreference {const PostPaymentMethodConfigurationsConfigurationRequestBacsDebitDisplayPreferencePreference._(this.value);

factory PostPaymentMethodConfigurationsConfigurationRequestBacsDebitDisplayPreferencePreference.fromJson(String json) { return switch (json) {
  'none' => none,
  'off' => off,
  'on' => $on,
  _ => PostPaymentMethodConfigurationsConfigurationRequestBacsDebitDisplayPreferencePreference._(json),
}; }

static const PostPaymentMethodConfigurationsConfigurationRequestBacsDebitDisplayPreferencePreference none = PostPaymentMethodConfigurationsConfigurationRequestBacsDebitDisplayPreferencePreference._('none');

static const PostPaymentMethodConfigurationsConfigurationRequestBacsDebitDisplayPreferencePreference off = PostPaymentMethodConfigurationsConfigurationRequestBacsDebitDisplayPreferencePreference._('off');

static const PostPaymentMethodConfigurationsConfigurationRequestBacsDebitDisplayPreferencePreference $on = PostPaymentMethodConfigurationsConfigurationRequestBacsDebitDisplayPreferencePreference._('on');

static const List<PostPaymentMethodConfigurationsConfigurationRequestBacsDebitDisplayPreferencePreference> values = [none, off, $on];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentMethodConfigurationsConfigurationRequestBacsDebitDisplayPreferencePreference && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestBacsDebitDisplayPreferencePreference($value)'; } 
 }
final class PostPaymentMethodConfigurationsConfigurationRequestBacsDebitDisplayPreference {const PostPaymentMethodConfigurationsConfigurationRequestBacsDebitDisplayPreference({this.preference});

factory PostPaymentMethodConfigurationsConfigurationRequestBacsDebitDisplayPreference.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsConfigurationRequestBacsDebitDisplayPreference(
  preference: json['preference'] != null ? PostPaymentMethodConfigurationsConfigurationRequestBacsDebitDisplayPreferencePreference.fromJson(json['preference'] as String) : null,
); }

final PostPaymentMethodConfigurationsConfigurationRequestBacsDebitDisplayPreferencePreference? preference;

Map<String, dynamic> toJson() { return {
  if (preference != null) 'preference': preference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostPaymentMethodConfigurationsConfigurationRequestBacsDebitDisplayPreference copyWith({PostPaymentMethodConfigurationsConfigurationRequestBacsDebitDisplayPreferencePreference Function()? preference}) { return PostPaymentMethodConfigurationsConfigurationRequestBacsDebitDisplayPreference(
  preference: preference != null ? preference() : this.preference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsConfigurationRequestBacsDebitDisplayPreference &&
          preference == other.preference; } 
@override int get hashCode { return preference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestBacsDebitDisplayPreference(preference: $preference)'; } 
 }
