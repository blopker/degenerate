// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostPaymentMethodConfigurationsRequestKlarnaDisplayPreferencePreference {const PostPaymentMethodConfigurationsRequestKlarnaDisplayPreferencePreference._(this.value);

factory PostPaymentMethodConfigurationsRequestKlarnaDisplayPreferencePreference.fromJson(String json) { return switch (json) {
  'none' => none,
  'off' => off,
  'on' => $on,
  _ => PostPaymentMethodConfigurationsRequestKlarnaDisplayPreferencePreference._(json),
}; }

static const PostPaymentMethodConfigurationsRequestKlarnaDisplayPreferencePreference none = PostPaymentMethodConfigurationsRequestKlarnaDisplayPreferencePreference._('none');

static const PostPaymentMethodConfigurationsRequestKlarnaDisplayPreferencePreference off = PostPaymentMethodConfigurationsRequestKlarnaDisplayPreferencePreference._('off');

static const PostPaymentMethodConfigurationsRequestKlarnaDisplayPreferencePreference $on = PostPaymentMethodConfigurationsRequestKlarnaDisplayPreferencePreference._('on');

static const List<PostPaymentMethodConfigurationsRequestKlarnaDisplayPreferencePreference> values = [none, off, $on];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentMethodConfigurationsRequestKlarnaDisplayPreferencePreference && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestKlarnaDisplayPreferencePreference($value)'; } 
 }
final class PostPaymentMethodConfigurationsRequestKlarnaDisplayPreference {const PostPaymentMethodConfigurationsRequestKlarnaDisplayPreference({this.preference});

factory PostPaymentMethodConfigurationsRequestKlarnaDisplayPreference.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsRequestKlarnaDisplayPreference(
  preference: json['preference'] != null ? PostPaymentMethodConfigurationsRequestKlarnaDisplayPreferencePreference.fromJson(json['preference'] as String) : null,
); }

final PostPaymentMethodConfigurationsRequestKlarnaDisplayPreferencePreference? preference;

Map<String, dynamic> toJson() { return {
  if (preference != null) 'preference': preference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'preference'}.contains(key)); } 
PostPaymentMethodConfigurationsRequestKlarnaDisplayPreference copyWith({PostPaymentMethodConfigurationsRequestKlarnaDisplayPreferencePreference Function()? preference}) { return PostPaymentMethodConfigurationsRequestKlarnaDisplayPreference(
  preference: preference != null ? preference() : this.preference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsRequestKlarnaDisplayPreference &&
          preference == other.preference; } 
@override int get hashCode { return preference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestKlarnaDisplayPreference(preference: $preference)'; } 
 }
