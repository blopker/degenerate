// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Specifies the enablement value of Tiered Cache.
@immutable final class SmartshieldSmartShieldSettingsGetResponseSmartTieredCacheValue {const SmartshieldSmartShieldSettingsGetResponseSmartTieredCacheValue._(this.value);

factory SmartshieldSmartShieldSettingsGetResponseSmartTieredCacheValue.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  _ => SmartshieldSmartShieldSettingsGetResponseSmartTieredCacheValue._(json),
}; }

static const SmartshieldSmartShieldSettingsGetResponseSmartTieredCacheValue $on = SmartshieldSmartShieldSettingsGetResponseSmartTieredCacheValue._('on');

static const SmartshieldSmartShieldSettingsGetResponseSmartTieredCacheValue off = SmartshieldSmartShieldSettingsGetResponseSmartTieredCacheValue._('off');

static const List<SmartshieldSmartShieldSettingsGetResponseSmartTieredCacheValue> values = [$on, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SmartshieldSmartShieldSettingsGetResponseSmartTieredCacheValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SmartshieldSmartShieldSettingsGetResponseSmartTieredCacheValue($value)'; } 
 }
@immutable final class SmartshieldSmartShieldSettingsGetResponseSmartTieredCache {const SmartshieldSmartShieldSettingsGetResponseSmartTieredCache({this.editable, this.id, this.modifiedOn, this.value, });

factory SmartshieldSmartShieldSettingsGetResponseSmartTieredCache.fromJson(Map<String, dynamic> json) { return SmartshieldSmartShieldSettingsGetResponseSmartTieredCache(
  editable: json['editable'] as bool?,
  id: json['id'] as String?,
  modifiedOn: json['modified_on'] as String?,
  value: json['value'] != null ? SmartshieldSmartShieldSettingsGetResponseSmartTieredCacheValue.fromJson(json['value'] as String) : null,
); }

/// Whether the setting is editable.
final bool? editable;

/// The id of the Smart Tiered Cache setting.
final String? id;

/// The last time the setting was modified.
final String? modifiedOn;

/// Specifies the enablement value of Tiered Cache.
final SmartshieldSmartShieldSettingsGetResponseSmartTieredCacheValue? value;

Map<String, dynamic> toJson() { return {
  'editable': ?editable,
  'id': ?id,
  'modified_on': ?modifiedOn,
  if (value != null) 'value': value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'editable', 'id', 'modified_on', 'value'}.contains(key)); } 
SmartshieldSmartShieldSettingsGetResponseSmartTieredCache copyWith({bool Function()? editable, String Function()? id, String Function()? modifiedOn, SmartshieldSmartShieldSettingsGetResponseSmartTieredCacheValue Function()? value, }) { return SmartshieldSmartShieldSettingsGetResponseSmartTieredCache(
  editable: editable != null ? editable() : this.editable,
  id: id != null ? id() : this.id,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SmartshieldSmartShieldSettingsGetResponseSmartTieredCache &&
          editable == other.editable &&
          id == other.id &&
          modifiedOn == other.modifiedOn &&
          value == other.value; } 
@override int get hashCode { return Object.hash(editable, id, modifiedOn, value); } 
@override String toString() { return 'SmartshieldSmartShieldSettingsGetResponseSmartTieredCache(editable: $editable, id: $id, modifiedOn: $modifiedOn, value: $value)'; } 
 }
