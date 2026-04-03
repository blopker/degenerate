// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Whether the feature is enabled or disabled.
@immutable final class ZoneSettingsChangeSpeedBrainSettingRequestValue {const ZoneSettingsChangeSpeedBrainSettingRequestValue._(this.value);

factory ZoneSettingsChangeSpeedBrainSettingRequestValue.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  _ => ZoneSettingsChangeSpeedBrainSettingRequestValue._(json),
}; }

static const ZoneSettingsChangeSpeedBrainSettingRequestValue $on = ZoneSettingsChangeSpeedBrainSettingRequestValue._('on');

static const ZoneSettingsChangeSpeedBrainSettingRequestValue off = ZoneSettingsChangeSpeedBrainSettingRequestValue._('off');

static const List<ZoneSettingsChangeSpeedBrainSettingRequestValue> values = [$on, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZoneSettingsChangeSpeedBrainSettingRequestValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZoneSettingsChangeSpeedBrainSettingRequestValue($value)'; } 
 }
@immutable final class ZoneSettingsChangeSpeedBrainSettingRequest {const ZoneSettingsChangeSpeedBrainSettingRequest({required this.value});

factory ZoneSettingsChangeSpeedBrainSettingRequest.fromJson(Map<String, dynamic> json) { return ZoneSettingsChangeSpeedBrainSettingRequest(
  value: ZoneSettingsChangeSpeedBrainSettingRequestValue.fromJson(json['value'] as String),
); }

/// Whether the feature is enabled or disabled.
final ZoneSettingsChangeSpeedBrainSettingRequestValue value;

Map<String, dynamic> toJson() { return {
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('value'); } 
ZoneSettingsChangeSpeedBrainSettingRequest copyWith({ZoneSettingsChangeSpeedBrainSettingRequestValue? value}) { return ZoneSettingsChangeSpeedBrainSettingRequest(
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZoneSettingsChangeSpeedBrainSettingRequest &&
          value == other.value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZoneSettingsChangeSpeedBrainSettingRequest(value: $value)'; } 
 }
