// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostPaymentMethodConfigurationsConfigurationRequestNzBankAccountDisplayPreferencePreference {const PostPaymentMethodConfigurationsConfigurationRequestNzBankAccountDisplayPreferencePreference._(this.value);

factory PostPaymentMethodConfigurationsConfigurationRequestNzBankAccountDisplayPreferencePreference.fromJson(String json) { return switch (json) {
  'none' => none,
  'off' => off,
  'on' => $on,
  _ => PostPaymentMethodConfigurationsConfigurationRequestNzBankAccountDisplayPreferencePreference._(json),
}; }

static const PostPaymentMethodConfigurationsConfigurationRequestNzBankAccountDisplayPreferencePreference none = PostPaymentMethodConfigurationsConfigurationRequestNzBankAccountDisplayPreferencePreference._('none');

static const PostPaymentMethodConfigurationsConfigurationRequestNzBankAccountDisplayPreferencePreference off = PostPaymentMethodConfigurationsConfigurationRequestNzBankAccountDisplayPreferencePreference._('off');

static const PostPaymentMethodConfigurationsConfigurationRequestNzBankAccountDisplayPreferencePreference $on = PostPaymentMethodConfigurationsConfigurationRequestNzBankAccountDisplayPreferencePreference._('on');

static const List<PostPaymentMethodConfigurationsConfigurationRequestNzBankAccountDisplayPreferencePreference> values = [none, off, $on];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentMethodConfigurationsConfigurationRequestNzBankAccountDisplayPreferencePreference && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestNzBankAccountDisplayPreferencePreference($value)'; } 
 }
final class PostPaymentMethodConfigurationsConfigurationRequestNzBankAccountDisplayPreference {const PostPaymentMethodConfigurationsConfigurationRequestNzBankAccountDisplayPreference({this.preference});

factory PostPaymentMethodConfigurationsConfigurationRequestNzBankAccountDisplayPreference.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsConfigurationRequestNzBankAccountDisplayPreference(
  preference: json['preference'] != null ? PostPaymentMethodConfigurationsConfigurationRequestNzBankAccountDisplayPreferencePreference.fromJson(json['preference'] as String) : null,
); }

final PostPaymentMethodConfigurationsConfigurationRequestNzBankAccountDisplayPreferencePreference? preference;

Map<String, dynamic> toJson() { return {
  if (preference != null) 'preference': preference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostPaymentMethodConfigurationsConfigurationRequestNzBankAccountDisplayPreference copyWith({PostPaymentMethodConfigurationsConfigurationRequestNzBankAccountDisplayPreferencePreference Function()? preference}) { return PostPaymentMethodConfigurationsConfigurationRequestNzBankAccountDisplayPreference(
  preference: preference != null ? preference() : this.preference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsConfigurationRequestNzBankAccountDisplayPreference &&
          preference == other.preference; } 
@override int get hashCode { return preference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestNzBankAccountDisplayPreference(preference: $preference)'; } 
 }
