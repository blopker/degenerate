// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostPaymentMethodConfigurationsRequestP24DisplayPreferencePreference {const PostPaymentMethodConfigurationsRequestP24DisplayPreferencePreference._(this.value);

factory PostPaymentMethodConfigurationsRequestP24DisplayPreferencePreference.fromJson(String json) { return switch (json) {
  'none' => none,
  'off' => off,
  'on' => $on,
  _ => PostPaymentMethodConfigurationsRequestP24DisplayPreferencePreference._(json),
}; }

static const PostPaymentMethodConfigurationsRequestP24DisplayPreferencePreference none = PostPaymentMethodConfigurationsRequestP24DisplayPreferencePreference._('none');

static const PostPaymentMethodConfigurationsRequestP24DisplayPreferencePreference off = PostPaymentMethodConfigurationsRequestP24DisplayPreferencePreference._('off');

static const PostPaymentMethodConfigurationsRequestP24DisplayPreferencePreference $on = PostPaymentMethodConfigurationsRequestP24DisplayPreferencePreference._('on');

static const List<PostPaymentMethodConfigurationsRequestP24DisplayPreferencePreference> values = [none, off, $on];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentMethodConfigurationsRequestP24DisplayPreferencePreference && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestP24DisplayPreferencePreference($value)'; } 
 }
final class PostPaymentMethodConfigurationsRequestP24DisplayPreference {const PostPaymentMethodConfigurationsRequestP24DisplayPreference({this.preference});

factory PostPaymentMethodConfigurationsRequestP24DisplayPreference.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsRequestP24DisplayPreference(
  preference: json['preference'] != null ? PostPaymentMethodConfigurationsRequestP24DisplayPreferencePreference.fromJson(json['preference'] as String) : null,
); }

final PostPaymentMethodConfigurationsRequestP24DisplayPreferencePreference? preference;

Map<String, dynamic> toJson() { return {
  if (preference != null) 'preference': preference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostPaymentMethodConfigurationsRequestP24DisplayPreference copyWith({PostPaymentMethodConfigurationsRequestP24DisplayPreferencePreference Function()? preference}) { return PostPaymentMethodConfigurationsRequestP24DisplayPreference(
  preference: preference != null ? preference() : this.preference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsRequestP24DisplayPreference &&
          preference == other.preference; } 
@override int get hashCode { return preference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestP24DisplayPreference(preference: $preference)'; } 
 }
