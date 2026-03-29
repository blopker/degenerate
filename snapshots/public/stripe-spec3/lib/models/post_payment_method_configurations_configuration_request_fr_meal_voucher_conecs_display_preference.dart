// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostPaymentMethodConfigurationsConfigurationRequestFrMealVoucherConecsDisplayPreferencePreference {const PostPaymentMethodConfigurationsConfigurationRequestFrMealVoucherConecsDisplayPreferencePreference._(this.value);

factory PostPaymentMethodConfigurationsConfigurationRequestFrMealVoucherConecsDisplayPreferencePreference.fromJson(String json) { return switch (json) {
  'none' => none,
  'off' => off,
  'on' => $on,
  _ => PostPaymentMethodConfigurationsConfigurationRequestFrMealVoucherConecsDisplayPreferencePreference._(json),
}; }

static const PostPaymentMethodConfigurationsConfigurationRequestFrMealVoucherConecsDisplayPreferencePreference none = PostPaymentMethodConfigurationsConfigurationRequestFrMealVoucherConecsDisplayPreferencePreference._('none');

static const PostPaymentMethodConfigurationsConfigurationRequestFrMealVoucherConecsDisplayPreferencePreference off = PostPaymentMethodConfigurationsConfigurationRequestFrMealVoucherConecsDisplayPreferencePreference._('off');

static const PostPaymentMethodConfigurationsConfigurationRequestFrMealVoucherConecsDisplayPreferencePreference $on = PostPaymentMethodConfigurationsConfigurationRequestFrMealVoucherConecsDisplayPreferencePreference._('on');

static const List<PostPaymentMethodConfigurationsConfigurationRequestFrMealVoucherConecsDisplayPreferencePreference> values = [none, off, $on];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentMethodConfigurationsConfigurationRequestFrMealVoucherConecsDisplayPreferencePreference && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestFrMealVoucherConecsDisplayPreferencePreference($value)'; } 
 }
final class PostPaymentMethodConfigurationsConfigurationRequestFrMealVoucherConecsDisplayPreference {const PostPaymentMethodConfigurationsConfigurationRequestFrMealVoucherConecsDisplayPreference({this.preference});

factory PostPaymentMethodConfigurationsConfigurationRequestFrMealVoucherConecsDisplayPreference.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsConfigurationRequestFrMealVoucherConecsDisplayPreference(
  preference: json['preference'] != null ? PostPaymentMethodConfigurationsConfigurationRequestFrMealVoucherConecsDisplayPreferencePreference.fromJson(json['preference'] as String) : null,
); }

final PostPaymentMethodConfigurationsConfigurationRequestFrMealVoucherConecsDisplayPreferencePreference? preference;

Map<String, dynamic> toJson() { return {
  if (preference != null) 'preference': preference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostPaymentMethodConfigurationsConfigurationRequestFrMealVoucherConecsDisplayPreference copyWith({PostPaymentMethodConfigurationsConfigurationRequestFrMealVoucherConecsDisplayPreferencePreference Function()? preference}) { return PostPaymentMethodConfigurationsConfigurationRequestFrMealVoucherConecsDisplayPreference(
  preference: preference != null ? preference() : this.preference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsConfigurationRequestFrMealVoucherConecsDisplayPreference &&
          preference == other.preference; } 
@override int get hashCode { return preference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestFrMealVoucherConecsDisplayPreference(preference: $preference)'; } 
 }
