// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'speed_cloudflare_fonts_value.dart';@immutable final class ZoneSettingsChangeFontsSettingRequest {const ZoneSettingsChangeFontsSettingRequest({required this.value});

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
