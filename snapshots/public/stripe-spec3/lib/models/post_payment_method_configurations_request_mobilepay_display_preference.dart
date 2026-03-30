// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostPaymentMethodConfigurationsRequestMobilepayDisplayPreferencePreference {const PostPaymentMethodConfigurationsRequestMobilepayDisplayPreferencePreference._(this.value);

factory PostPaymentMethodConfigurationsRequestMobilepayDisplayPreferencePreference.fromJson(String json) { return switch (json) {
  'none' => none,
  'off' => off,
  'on' => $on,
  _ => PostPaymentMethodConfigurationsRequestMobilepayDisplayPreferencePreference._(json),
}; }

static const PostPaymentMethodConfigurationsRequestMobilepayDisplayPreferencePreference none = PostPaymentMethodConfigurationsRequestMobilepayDisplayPreferencePreference._('none');

static const PostPaymentMethodConfigurationsRequestMobilepayDisplayPreferencePreference off = PostPaymentMethodConfigurationsRequestMobilepayDisplayPreferencePreference._('off');

static const PostPaymentMethodConfigurationsRequestMobilepayDisplayPreferencePreference $on = PostPaymentMethodConfigurationsRequestMobilepayDisplayPreferencePreference._('on');

static const List<PostPaymentMethodConfigurationsRequestMobilepayDisplayPreferencePreference> values = [none, off, $on];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentMethodConfigurationsRequestMobilepayDisplayPreferencePreference && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestMobilepayDisplayPreferencePreference($value)'; } 
 }
final class PostPaymentMethodConfigurationsRequestMobilepayDisplayPreference {const PostPaymentMethodConfigurationsRequestMobilepayDisplayPreference({this.preference});

factory PostPaymentMethodConfigurationsRequestMobilepayDisplayPreference.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsRequestMobilepayDisplayPreference(
  preference: json['preference'] != null ? PostPaymentMethodConfigurationsRequestMobilepayDisplayPreferencePreference.fromJson(json['preference'] as String) : null,
); }

final PostPaymentMethodConfigurationsRequestMobilepayDisplayPreferencePreference? preference;

Map<String, dynamic> toJson() { return {
  if (preference != null) 'preference': preference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'preference'}.contains(key)); } 
PostPaymentMethodConfigurationsRequestMobilepayDisplayPreference copyWith({PostPaymentMethodConfigurationsRequestMobilepayDisplayPreferencePreference Function()? preference}) { return PostPaymentMethodConfigurationsRequestMobilepayDisplayPreference(
  preference: preference != null ? preference() : this.preference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsRequestMobilepayDisplayPreference &&
          preference == other.preference; } 
@override int get hashCode { return preference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestMobilepayDisplayPreference(preference: $preference)'; } 
 }
