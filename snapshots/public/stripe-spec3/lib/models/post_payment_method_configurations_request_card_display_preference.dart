// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostPaymentMethodConfigurationsRequestCardDisplayPreferencePreference {const PostPaymentMethodConfigurationsRequestCardDisplayPreferencePreference._(this.value);

factory PostPaymentMethodConfigurationsRequestCardDisplayPreferencePreference.fromJson(String json) { return switch (json) {
  'none' => none,
  'off' => off,
  'on' => $on,
  _ => PostPaymentMethodConfigurationsRequestCardDisplayPreferencePreference._(json),
}; }

static const PostPaymentMethodConfigurationsRequestCardDisplayPreferencePreference none = PostPaymentMethodConfigurationsRequestCardDisplayPreferencePreference._('none');

static const PostPaymentMethodConfigurationsRequestCardDisplayPreferencePreference off = PostPaymentMethodConfigurationsRequestCardDisplayPreferencePreference._('off');

static const PostPaymentMethodConfigurationsRequestCardDisplayPreferencePreference $on = PostPaymentMethodConfigurationsRequestCardDisplayPreferencePreference._('on');

static const List<PostPaymentMethodConfigurationsRequestCardDisplayPreferencePreference> values = [none, off, $on];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentMethodConfigurationsRequestCardDisplayPreferencePreference && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestCardDisplayPreferencePreference($value)'; } 
 }
final class PostPaymentMethodConfigurationsRequestCardDisplayPreference {const PostPaymentMethodConfigurationsRequestCardDisplayPreference({this.preference});

factory PostPaymentMethodConfigurationsRequestCardDisplayPreference.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsRequestCardDisplayPreference(
  preference: json['preference'] != null ? PostPaymentMethodConfigurationsRequestCardDisplayPreferencePreference.fromJson(json['preference'] as String) : null,
); }

final PostPaymentMethodConfigurationsRequestCardDisplayPreferencePreference? preference;

Map<String, dynamic> toJson() { return {
  if (preference != null) 'preference': preference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'preference'}.contains(key)); } 
PostPaymentMethodConfigurationsRequestCardDisplayPreference copyWith({PostPaymentMethodConfigurationsRequestCardDisplayPreferencePreference Function()? preference}) { return PostPaymentMethodConfigurationsRequestCardDisplayPreference(
  preference: preference != null ? preference() : this.preference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsRequestCardDisplayPreference &&
          preference == other.preference; } 
@override int get hashCode { return preference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestCardDisplayPreference(preference: $preference)'; } 
 }
