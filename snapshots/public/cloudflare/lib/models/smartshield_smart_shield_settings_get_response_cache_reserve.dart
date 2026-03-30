// GENERATED CODE - DO NOT MODIFY BY HAND

/// Specifies the enablement value of Cache Reserve.
final class SmartshieldSmartShieldSettingsGetResponseCacheReserveValue {const SmartshieldSmartShieldSettingsGetResponseCacheReserveValue._(this.value);

factory SmartshieldSmartShieldSettingsGetResponseCacheReserveValue.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  _ => SmartshieldSmartShieldSettingsGetResponseCacheReserveValue._(json),
}; }

static const SmartshieldSmartShieldSettingsGetResponseCacheReserveValue $on = SmartshieldSmartShieldSettingsGetResponseCacheReserveValue._('on');

static const SmartshieldSmartShieldSettingsGetResponseCacheReserveValue off = SmartshieldSmartShieldSettingsGetResponseCacheReserveValue._('off');

static const List<SmartshieldSmartShieldSettingsGetResponseCacheReserveValue> values = [$on, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SmartshieldSmartShieldSettingsGetResponseCacheReserveValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SmartshieldSmartShieldSettingsGetResponseCacheReserveValue($value)'; } 
 }
final class SmartshieldSmartShieldSettingsGetResponseCacheReserve {const SmartshieldSmartShieldSettingsGetResponseCacheReserve({this.editable, this.id, this.value, });

factory SmartshieldSmartShieldSettingsGetResponseCacheReserve.fromJson(Map<String, dynamic> json) { return SmartshieldSmartShieldSettingsGetResponseCacheReserve(
  editable: json['editable'] as bool?,
  id: json['id'] as String?,
  value: json['value'] != null ? SmartshieldSmartShieldSettingsGetResponseCacheReserveValue.fromJson(json['value'] as String) : null,
); }

/// Whether the setting is editable.
final bool? editable;

/// The id of the Cache Reserve setting.
final String? id;

/// Specifies the enablement value of Cache Reserve.
final SmartshieldSmartShieldSettingsGetResponseCacheReserveValue? value;

Map<String, dynamic> toJson() { return {
  'editable': ?editable,
  'id': ?id,
  if (value != null) 'value': value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'editable', 'id', 'value'}.contains(key)); } 
SmartshieldSmartShieldSettingsGetResponseCacheReserve copyWith({bool Function()? editable, String Function()? id, SmartshieldSmartShieldSettingsGetResponseCacheReserveValue Function()? value, }) { return SmartshieldSmartShieldSettingsGetResponseCacheReserve(
  editable: editable != null ? editable() : this.editable,
  id: id != null ? id() : this.id,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SmartshieldSmartShieldSettingsGetResponseCacheReserve &&
          editable == other.editable &&
          id == other.id &&
          value == other.value; } 
@override int get hashCode { return Object.hash(editable, id, value); } 
@override String toString() { return 'SmartshieldSmartShieldSettingsGetResponseCacheReserve(editable: $editable, id: $id, value: $value)'; } 
 }
