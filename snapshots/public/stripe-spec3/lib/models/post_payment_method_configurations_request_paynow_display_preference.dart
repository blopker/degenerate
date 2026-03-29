// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostPaymentMethodConfigurationsRequestPaynowDisplayPreferencePreference {const PostPaymentMethodConfigurationsRequestPaynowDisplayPreferencePreference._(this.value);

factory PostPaymentMethodConfigurationsRequestPaynowDisplayPreferencePreference.fromJson(String json) { return switch (json) {
  'none' => none,
  'off' => off,
  'on' => $on,
  _ => PostPaymentMethodConfigurationsRequestPaynowDisplayPreferencePreference._(json),
}; }

static const PostPaymentMethodConfigurationsRequestPaynowDisplayPreferencePreference none = PostPaymentMethodConfigurationsRequestPaynowDisplayPreferencePreference._('none');

static const PostPaymentMethodConfigurationsRequestPaynowDisplayPreferencePreference off = PostPaymentMethodConfigurationsRequestPaynowDisplayPreferencePreference._('off');

static const PostPaymentMethodConfigurationsRequestPaynowDisplayPreferencePreference $on = PostPaymentMethodConfigurationsRequestPaynowDisplayPreferencePreference._('on');

static const List<PostPaymentMethodConfigurationsRequestPaynowDisplayPreferencePreference> values = [none, off, $on];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentMethodConfigurationsRequestPaynowDisplayPreferencePreference && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestPaynowDisplayPreferencePreference($value)'; } 
 }
final class PostPaymentMethodConfigurationsRequestPaynowDisplayPreference {const PostPaymentMethodConfigurationsRequestPaynowDisplayPreference({this.preference});

factory PostPaymentMethodConfigurationsRequestPaynowDisplayPreference.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsRequestPaynowDisplayPreference(
  preference: json['preference'] != null ? PostPaymentMethodConfigurationsRequestPaynowDisplayPreferencePreference.fromJson(json['preference'] as String) : null,
); }

final PostPaymentMethodConfigurationsRequestPaynowDisplayPreferencePreference? preference;

Map<String, dynamic> toJson() { return {
  if (preference != null) 'preference': preference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostPaymentMethodConfigurationsRequestPaynowDisplayPreference copyWith({PostPaymentMethodConfigurationsRequestPaynowDisplayPreferencePreference Function()? preference}) { return PostPaymentMethodConfigurationsRequestPaynowDisplayPreference(
  preference: preference != null ? preference() : this.preference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsRequestPaynowDisplayPreference &&
          preference == other.preference; } 
@override int get hashCode { return preference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestPaynowDisplayPreference(preference: $preference)'; } 
 }
