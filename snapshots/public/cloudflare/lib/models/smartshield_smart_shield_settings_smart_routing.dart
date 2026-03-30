// GENERATED CODE - DO NOT MODIFY BY HAND

/// Specifies the enablement value of Argo Smart Routing.
final class SmartshieldSmartShieldSettingsSmartRoutingValue {const SmartshieldSmartShieldSettingsSmartRoutingValue._(this.value);

factory SmartshieldSmartShieldSettingsSmartRoutingValue.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  _ => SmartshieldSmartShieldSettingsSmartRoutingValue._(json),
}; }

static const SmartshieldSmartShieldSettingsSmartRoutingValue $on = SmartshieldSmartShieldSettingsSmartRoutingValue._('on');

static const SmartshieldSmartShieldSettingsSmartRoutingValue off = SmartshieldSmartShieldSettingsSmartRoutingValue._('off');

static const List<SmartshieldSmartShieldSettingsSmartRoutingValue> values = [$on, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SmartshieldSmartShieldSettingsSmartRoutingValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SmartshieldSmartShieldSettingsSmartRoutingValue($value)'; } 
 }
final class SmartshieldSmartShieldSettingsSmartRouting {const SmartshieldSmartShieldSettingsSmartRouting({this.editable, this.id, this.value, });

factory SmartshieldSmartShieldSettingsSmartRouting.fromJson(Map<String, dynamic> json) { return SmartshieldSmartShieldSettingsSmartRouting(
  editable: json['editable'] as bool?,
  id: json['id'] as String?,
  value: json['value'] != null ? SmartshieldSmartShieldSettingsSmartRoutingValue.fromJson(json['value'] as String) : null,
); }

/// Whether the setting is editable.
final bool? editable;

/// The id of the Smart Routing setting.
final String? id;

/// Specifies the enablement value of Argo Smart Routing.
final SmartshieldSmartShieldSettingsSmartRoutingValue? value;

Map<String, dynamic> toJson() { return {
  'editable': ?editable,
  'id': ?id,
  if (value != null) 'value': value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'editable', 'id', 'value'}.contains(key)); } 
SmartshieldSmartShieldSettingsSmartRouting copyWith({bool Function()? editable, String Function()? id, SmartshieldSmartShieldSettingsSmartRoutingValue Function()? value, }) { return SmartshieldSmartShieldSettingsSmartRouting(
  editable: editable != null ? editable() : this.editable,
  id: id != null ? id() : this.id,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SmartshieldSmartShieldSettingsSmartRouting &&
          editable == other.editable &&
          id == other.id &&
          value == other.value; } 
@override int get hashCode { return Object.hash(editable, id, value); } 
@override String toString() { return 'SmartshieldSmartShieldSettingsSmartRouting(editable: $editable, id: $id, value: $value)'; } 
 }
