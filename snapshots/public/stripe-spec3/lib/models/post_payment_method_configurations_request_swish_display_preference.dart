// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostPaymentMethodConfigurationsRequestSwishDisplayPreferencePreference {const PostPaymentMethodConfigurationsRequestSwishDisplayPreferencePreference._(this.value);

factory PostPaymentMethodConfigurationsRequestSwishDisplayPreferencePreference.fromJson(String json) { return switch (json) {
  'none' => none,
  'off' => off,
  'on' => $on,
  _ => PostPaymentMethodConfigurationsRequestSwishDisplayPreferencePreference._(json),
}; }

static const PostPaymentMethodConfigurationsRequestSwishDisplayPreferencePreference none = PostPaymentMethodConfigurationsRequestSwishDisplayPreferencePreference._('none');

static const PostPaymentMethodConfigurationsRequestSwishDisplayPreferencePreference off = PostPaymentMethodConfigurationsRequestSwishDisplayPreferencePreference._('off');

static const PostPaymentMethodConfigurationsRequestSwishDisplayPreferencePreference $on = PostPaymentMethodConfigurationsRequestSwishDisplayPreferencePreference._('on');

static const List<PostPaymentMethodConfigurationsRequestSwishDisplayPreferencePreference> values = [none, off, $on];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentMethodConfigurationsRequestSwishDisplayPreferencePreference && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestSwishDisplayPreferencePreference($value)'; } 
 }
final class PostPaymentMethodConfigurationsRequestSwishDisplayPreference {const PostPaymentMethodConfigurationsRequestSwishDisplayPreference({this.preference});

factory PostPaymentMethodConfigurationsRequestSwishDisplayPreference.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsRequestSwishDisplayPreference(
  preference: json['preference'] != null ? PostPaymentMethodConfigurationsRequestSwishDisplayPreferencePreference.fromJson(json['preference'] as String) : null,
); }

final PostPaymentMethodConfigurationsRequestSwishDisplayPreferencePreference? preference;

Map<String, dynamic> toJson() { return {
  if (preference != null) 'preference': preference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostPaymentMethodConfigurationsRequestSwishDisplayPreference copyWith({PostPaymentMethodConfigurationsRequestSwishDisplayPreferencePreference Function()? preference}) { return PostPaymentMethodConfigurationsRequestSwishDisplayPreference(
  preference: preference != null ? preference() : this.preference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsRequestSwishDisplayPreference &&
          preference == other.preference; } 
@override int get hashCode { return preference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestSwishDisplayPreference(preference: $preference)'; } 
 }
