// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostPaymentMethodConfigurationsRequestPromptpayDisplayPreferencePreference {const PostPaymentMethodConfigurationsRequestPromptpayDisplayPreferencePreference._(this.value);

factory PostPaymentMethodConfigurationsRequestPromptpayDisplayPreferencePreference.fromJson(String json) { return switch (json) {
  'none' => none,
  'off' => off,
  'on' => $on,
  _ => PostPaymentMethodConfigurationsRequestPromptpayDisplayPreferencePreference._(json),
}; }

static const PostPaymentMethodConfigurationsRequestPromptpayDisplayPreferencePreference none = PostPaymentMethodConfigurationsRequestPromptpayDisplayPreferencePreference._('none');

static const PostPaymentMethodConfigurationsRequestPromptpayDisplayPreferencePreference off = PostPaymentMethodConfigurationsRequestPromptpayDisplayPreferencePreference._('off');

static const PostPaymentMethodConfigurationsRequestPromptpayDisplayPreferencePreference $on = PostPaymentMethodConfigurationsRequestPromptpayDisplayPreferencePreference._('on');

static const List<PostPaymentMethodConfigurationsRequestPromptpayDisplayPreferencePreference> values = [none, off, $on];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentMethodConfigurationsRequestPromptpayDisplayPreferencePreference && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestPromptpayDisplayPreferencePreference($value)'; } 
 }
final class PostPaymentMethodConfigurationsRequestPromptpayDisplayPreference {const PostPaymentMethodConfigurationsRequestPromptpayDisplayPreference({this.preference});

factory PostPaymentMethodConfigurationsRequestPromptpayDisplayPreference.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsRequestPromptpayDisplayPreference(
  preference: json['preference'] != null ? PostPaymentMethodConfigurationsRequestPromptpayDisplayPreferencePreference.fromJson(json['preference'] as String) : null,
); }

final PostPaymentMethodConfigurationsRequestPromptpayDisplayPreferencePreference? preference;

Map<String, dynamic> toJson() { return {
  if (preference != null) 'preference': preference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostPaymentMethodConfigurationsRequestPromptpayDisplayPreference copyWith({PostPaymentMethodConfigurationsRequestPromptpayDisplayPreferencePreference Function()? preference}) { return PostPaymentMethodConfigurationsRequestPromptpayDisplayPreference(
  preference: preference != null ? preference() : this.preference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsRequestPromptpayDisplayPreference &&
          preference == other.preference; } 
@override int get hashCode { return preference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestPromptpayDisplayPreference(preference: $preference)'; } 
 }
