// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Whether the feature is enabled or disabled.
@immutable final class SpeedCloudflareFontsValue {const SpeedCloudflareFontsValue._(this.value);

factory SpeedCloudflareFontsValue.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  _ => SpeedCloudflareFontsValue._(json),
}; }

static const SpeedCloudflareFontsValue $on = SpeedCloudflareFontsValue._('on');

static const SpeedCloudflareFontsValue off = SpeedCloudflareFontsValue._('off');

static const List<SpeedCloudflareFontsValue> values = [$on, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SpeedCloudflareFontsValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SpeedCloudflareFontsValue($value)'; } 
 }
@immutable final class ZoneSettingsChangeFontsSettingRequest {const ZoneSettingsChangeFontsSettingRequest({required this.value});

factory ZoneSettingsChangeFontsSettingRequest.fromJson(Map<String, dynamic> json) { return ZoneSettingsChangeFontsSettingRequest(
  value: SpeedCloudflareFontsValue.fromJson(json['value'] as String),
); }

/// Whether the feature is enabled or disabled.
final SpeedCloudflareFontsValue value;

Map<String, dynamic> toJson() { return {
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('value'); } 
ZoneSettingsChangeFontsSettingRequest copyWith({SpeedCloudflareFontsValue? value}) { return ZoneSettingsChangeFontsSettingRequest(
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZoneSettingsChangeFontsSettingRequest &&
          value == other.value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZoneSettingsChangeFontsSettingRequest(value: $value)'; } 
 }
