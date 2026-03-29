// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostPaymentMethodConfigurationsRequestNzBankAccountDisplayPreferencePreference {const PostPaymentMethodConfigurationsRequestNzBankAccountDisplayPreferencePreference._(this.value);

factory PostPaymentMethodConfigurationsRequestNzBankAccountDisplayPreferencePreference.fromJson(String json) { return switch (json) {
  'none' => none,
  'off' => off,
  'on' => $on,
  _ => PostPaymentMethodConfigurationsRequestNzBankAccountDisplayPreferencePreference._(json),
}; }

static const PostPaymentMethodConfigurationsRequestNzBankAccountDisplayPreferencePreference none = PostPaymentMethodConfigurationsRequestNzBankAccountDisplayPreferencePreference._('none');

static const PostPaymentMethodConfigurationsRequestNzBankAccountDisplayPreferencePreference off = PostPaymentMethodConfigurationsRequestNzBankAccountDisplayPreferencePreference._('off');

static const PostPaymentMethodConfigurationsRequestNzBankAccountDisplayPreferencePreference $on = PostPaymentMethodConfigurationsRequestNzBankAccountDisplayPreferencePreference._('on');

static const List<PostPaymentMethodConfigurationsRequestNzBankAccountDisplayPreferencePreference> values = [none, off, $on];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentMethodConfigurationsRequestNzBankAccountDisplayPreferencePreference && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestNzBankAccountDisplayPreferencePreference($value)'; } 
 }
final class PostPaymentMethodConfigurationsRequestNzBankAccountDisplayPreference {const PostPaymentMethodConfigurationsRequestNzBankAccountDisplayPreference({this.preference});

factory PostPaymentMethodConfigurationsRequestNzBankAccountDisplayPreference.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsRequestNzBankAccountDisplayPreference(
  preference: json['preference'] != null ? PostPaymentMethodConfigurationsRequestNzBankAccountDisplayPreferencePreference.fromJson(json['preference'] as String) : null,
); }

final PostPaymentMethodConfigurationsRequestNzBankAccountDisplayPreferencePreference? preference;

Map<String, dynamic> toJson() { return {
  if (preference != null) 'preference': preference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'preference'}.contains(key)); } 
PostPaymentMethodConfigurationsRequestNzBankAccountDisplayPreference copyWith({PostPaymentMethodConfigurationsRequestNzBankAccountDisplayPreferencePreference Function()? preference}) { return PostPaymentMethodConfigurationsRequestNzBankAccountDisplayPreference(
  preference: preference != null ? preference() : this.preference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsRequestNzBankAccountDisplayPreference &&
          preference == other.preference; } 
@override int get hashCode { return preference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestNzBankAccountDisplayPreference(preference: $preference)'; } 
 }
