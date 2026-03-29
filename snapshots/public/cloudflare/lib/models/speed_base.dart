// GENERATED CODE - DO NOT MODIFY BY HAND

/// Current value of the zone setting.
final class SpeedBaseValue {const SpeedBaseValue._(this.value);

factory SpeedBaseValue.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  _ => SpeedBaseValue._(json),
}; }

static const SpeedBaseValue $on = SpeedBaseValue._('on');

static const SpeedBaseValue off = SpeedBaseValue._('off');

static const List<SpeedBaseValue> values = [$on, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SpeedBaseValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SpeedBaseValue($value)'; } 
 }
final class SpeedBase {const SpeedBase({this.editable = true, this.id, this.modifiedOn, this.value, });

factory SpeedBase.fromJson(Map<String, dynamic> json) { return SpeedBase(
  editable: json.containsKey('editable') ? json['editable'] as bool : true,
  id: json['id'] as String?,
  modifiedOn: json['modified_on'] != null ? DateTime.parse(json['modified_on'] as String) : null,
  value: json['value'] != null ? SpeedBaseValue.fromJson(json['value'] as String) : null,
); }

/// Whether or not this setting can be modified for this zone (based on your Cloudflare plan level).
final bool editable;

/// Identifier of the zone setting.
final String? id;

/// last time this setting was modified.
final DateTime? modifiedOn;

/// Current value of the zone setting.
final SpeedBaseValue? value;

Map<String, dynamic> toJson() { return {
  'editable': editable,
  'id': ?id,
  if (modifiedOn != null) 'modified_on': modifiedOn?.toIso8601String(),
  if (value != null) 'value': value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
SpeedBase copyWith({bool Function()? editable, String Function()? id, DateTime? Function()? modifiedOn, SpeedBaseValue Function()? value, }) { return SpeedBase(
  editable: editable != null ? editable() : this.editable,
  id: id != null ? id() : this.id,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SpeedBase &&
          editable == other.editable &&
          id == other.id &&
          modifiedOn == other.modifiedOn &&
          value == other.value; } 
@override int get hashCode { return Object.hash(editable, id, modifiedOn, value); } 
@override String toString() { return 'SpeedBase(editable: $editable, id: $id, modifiedOn: $modifiedOn, value: $value)'; } 
 }
