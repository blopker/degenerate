// GENERATED CODE - DO NOT MODIFY BY HAND

/// Specifies the enablement value of Cache Reserve.
final class SmartshieldSmartShieldSettingsCacheReserveValue {const SmartshieldSmartShieldSettingsCacheReserveValue._(this.value);

factory SmartshieldSmartShieldSettingsCacheReserveValue.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  _ => SmartshieldSmartShieldSettingsCacheReserveValue._(json),
}; }

static const SmartshieldSmartShieldSettingsCacheReserveValue $on = SmartshieldSmartShieldSettingsCacheReserveValue._('on');

static const SmartshieldSmartShieldSettingsCacheReserveValue off = SmartshieldSmartShieldSettingsCacheReserveValue._('off');

static const List<SmartshieldSmartShieldSettingsCacheReserveValue> values = [$on, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SmartshieldSmartShieldSettingsCacheReserveValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SmartshieldSmartShieldSettingsCacheReserveValue($value)'; } 
 }
final class SmartshieldSmartShieldSettingsCacheReserve {const SmartshieldSmartShieldSettingsCacheReserve({this.editable, this.id, this.value, });

factory SmartshieldSmartShieldSettingsCacheReserve.fromJson(Map<String, dynamic> json) { return SmartshieldSmartShieldSettingsCacheReserve(
  editable: json['editable'] as bool?,
  id: json['id'] as String?,
  value: json['value'] != null ? SmartshieldSmartShieldSettingsCacheReserveValue.fromJson(json['value'] as String) : null,
); }

/// Whether the setting is editable.
final bool? editable;

/// The id of the Cache Reserve setting.
final String? id;

/// Specifies the enablement value of Cache Reserve.
final SmartshieldSmartShieldSettingsCacheReserveValue? value;

Map<String, dynamic> toJson() { return {
  'editable': ?editable,
  'id': ?id,
  if (value != null) 'value': value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'editable', 'id', 'value'}.contains(key)); } 
SmartshieldSmartShieldSettingsCacheReserve copyWith({bool Function()? editable, String Function()? id, SmartshieldSmartShieldSettingsCacheReserveValue Function()? value, }) { return SmartshieldSmartShieldSettingsCacheReserve(
  editable: editable != null ? editable() : this.editable,
  id: id != null ? id() : this.id,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SmartshieldSmartShieldSettingsCacheReserve &&
          editable == other.editable &&
          id == other.id &&
          value == other.value; } 
@override int get hashCode { return Object.hash(editable, id, value); } 
@override String toString() { return 'SmartshieldSmartShieldSettingsCacheReserve(editable: $editable, id: $id, value: $value)'; } 
 }
