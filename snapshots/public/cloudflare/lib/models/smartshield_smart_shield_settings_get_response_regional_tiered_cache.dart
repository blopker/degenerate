// GENERATED CODE - DO NOT MODIFY BY HAND

/// Specifies the enablement value of Cache Reserve.
final class SmartshieldSmartShieldSettingsGetResponseRegionalTieredCacheValue {const SmartshieldSmartShieldSettingsGetResponseRegionalTieredCacheValue._(this.value);

factory SmartshieldSmartShieldSettingsGetResponseRegionalTieredCacheValue.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  _ => SmartshieldSmartShieldSettingsGetResponseRegionalTieredCacheValue._(json),
}; }

static const SmartshieldSmartShieldSettingsGetResponseRegionalTieredCacheValue $on = SmartshieldSmartShieldSettingsGetResponseRegionalTieredCacheValue._('on');

static const SmartshieldSmartShieldSettingsGetResponseRegionalTieredCacheValue off = SmartshieldSmartShieldSettingsGetResponseRegionalTieredCacheValue._('off');

static const List<SmartshieldSmartShieldSettingsGetResponseRegionalTieredCacheValue> values = [$on, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SmartshieldSmartShieldSettingsGetResponseRegionalTieredCacheValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SmartshieldSmartShieldSettingsGetResponseRegionalTieredCacheValue($value)'; } 
 }
final class SmartshieldSmartShieldSettingsGetResponseRegionalTieredCache {const SmartshieldSmartShieldSettingsGetResponseRegionalTieredCache({this.editable, this.id, this.value, });

factory SmartshieldSmartShieldSettingsGetResponseRegionalTieredCache.fromJson(Map<String, dynamic> json) { return SmartshieldSmartShieldSettingsGetResponseRegionalTieredCache(
  editable: json['editable'] as bool?,
  id: json['id'] as String?,
  value: json['value'] != null ? SmartshieldSmartShieldSettingsGetResponseRegionalTieredCacheValue.fromJson(json['value'] as String) : null,
); }

/// Whether the setting is editable.
final bool? editable;

/// The id of the Regional Tiered Cache setting.
final String? id;

/// Specifies the enablement value of Cache Reserve.
final SmartshieldSmartShieldSettingsGetResponseRegionalTieredCacheValue? value;

Map<String, dynamic> toJson() { return {
  'editable': ?editable,
  'id': ?id,
  if (value != null) 'value': value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'editable', 'id', 'value'}.contains(key)); } 
SmartshieldSmartShieldSettingsGetResponseRegionalTieredCache copyWith({bool Function()? editable, String Function()? id, SmartshieldSmartShieldSettingsGetResponseRegionalTieredCacheValue Function()? value, }) { return SmartshieldSmartShieldSettingsGetResponseRegionalTieredCache(
  editable: editable != null ? editable() : this.editable,
  id: id != null ? id() : this.id,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SmartshieldSmartShieldSettingsGetResponseRegionalTieredCache &&
          editable == other.editable &&
          id == other.id &&
          value == other.value; } 
@override int get hashCode { return Object.hash(editable, id, value); } 
@override String toString() { return 'SmartshieldSmartShieldSettingsGetResponseRegionalTieredCache(editable: $editable, id: $id, value: $value)'; } 
 }
