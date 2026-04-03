// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Specifies the enablement value of Cache Reserve.
@immutable final class SmartshieldSmartShieldSettingsPatchBodyCacheReserveValue {const SmartshieldSmartShieldSettingsPatchBodyCacheReserveValue._(this.value);

factory SmartshieldSmartShieldSettingsPatchBodyCacheReserveValue.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  _ => SmartshieldSmartShieldSettingsPatchBodyCacheReserveValue._(json),
}; }

static const SmartshieldSmartShieldSettingsPatchBodyCacheReserveValue $on = SmartshieldSmartShieldSettingsPatchBodyCacheReserveValue._('on');

static const SmartshieldSmartShieldSettingsPatchBodyCacheReserveValue off = SmartshieldSmartShieldSettingsPatchBodyCacheReserveValue._('off');

static const List<SmartshieldSmartShieldSettingsPatchBodyCacheReserveValue> values = [$on, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SmartshieldSmartShieldSettingsPatchBodyCacheReserveValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SmartshieldSmartShieldSettingsPatchBodyCacheReserveValue($value)'; } 
 }
@immutable final class SmartshieldSmartShieldSettingsPatchBodyCacheReserve {const SmartshieldSmartShieldSettingsPatchBodyCacheReserve({this.value});

factory SmartshieldSmartShieldSettingsPatchBodyCacheReserve.fromJson(Map<String, dynamic> json) { return SmartshieldSmartShieldSettingsPatchBodyCacheReserve(
  value: json['value'] != null ? SmartshieldSmartShieldSettingsPatchBodyCacheReserveValue.fromJson(json['value'] as String) : null,
); }

/// Specifies the enablement value of Cache Reserve.
final SmartshieldSmartShieldSettingsPatchBodyCacheReserveValue? value;

Map<String, dynamic> toJson() { return {
  if (value != null) 'value': value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'value'}.contains(key)); } 
SmartshieldSmartShieldSettingsPatchBodyCacheReserve copyWith({SmartshieldSmartShieldSettingsPatchBodyCacheReserveValue Function()? value}) { return SmartshieldSmartShieldSettingsPatchBodyCacheReserve(
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SmartshieldSmartShieldSettingsPatchBodyCacheReserve &&
          value == other.value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SmartshieldSmartShieldSettingsPatchBodyCacheReserve(value: $value)'; } 
 }
