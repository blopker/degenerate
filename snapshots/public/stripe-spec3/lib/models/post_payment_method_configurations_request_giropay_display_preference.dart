// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostPaymentMethodConfigurationsRequestGiropayDisplayPreferencePreference {const PostPaymentMethodConfigurationsRequestGiropayDisplayPreferencePreference._(this.value);

factory PostPaymentMethodConfigurationsRequestGiropayDisplayPreferencePreference.fromJson(String json) { return switch (json) {
  'none' => none,
  'off' => off,
  'on' => $on,
  _ => PostPaymentMethodConfigurationsRequestGiropayDisplayPreferencePreference._(json),
}; }

static const PostPaymentMethodConfigurationsRequestGiropayDisplayPreferencePreference none = PostPaymentMethodConfigurationsRequestGiropayDisplayPreferencePreference._('none');

static const PostPaymentMethodConfigurationsRequestGiropayDisplayPreferencePreference off = PostPaymentMethodConfigurationsRequestGiropayDisplayPreferencePreference._('off');

static const PostPaymentMethodConfigurationsRequestGiropayDisplayPreferencePreference $on = PostPaymentMethodConfigurationsRequestGiropayDisplayPreferencePreference._('on');

static const List<PostPaymentMethodConfigurationsRequestGiropayDisplayPreferencePreference> values = [none, off, $on];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentMethodConfigurationsRequestGiropayDisplayPreferencePreference && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestGiropayDisplayPreferencePreference($value)'; } 
 }
final class PostPaymentMethodConfigurationsRequestGiropayDisplayPreference {const PostPaymentMethodConfigurationsRequestGiropayDisplayPreference({this.preference});

factory PostPaymentMethodConfigurationsRequestGiropayDisplayPreference.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsRequestGiropayDisplayPreference(
  preference: json['preference'] != null ? PostPaymentMethodConfigurationsRequestGiropayDisplayPreferencePreference.fromJson(json['preference'] as String) : null,
); }

final PostPaymentMethodConfigurationsRequestGiropayDisplayPreferencePreference? preference;

Map<String, dynamic> toJson() { return {
  if (preference != null) 'preference': preference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'preference'}.contains(key)); } 
PostPaymentMethodConfigurationsRequestGiropayDisplayPreference copyWith({PostPaymentMethodConfigurationsRequestGiropayDisplayPreferencePreference Function()? preference}) { return PostPaymentMethodConfigurationsRequestGiropayDisplayPreference(
  preference: preference != null ? preference() : this.preference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsRequestGiropayDisplayPreference &&
          preference == other.preference; } 
@override int get hashCode { return preference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestGiropayDisplayPreference(preference: $preference)'; } 
 }
