// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Control options for the **Security Level** feature from the **Security** app.
/// 
@immutable final class ZonesSecurityLevelId {const ZonesSecurityLevelId._(this.value);

factory ZonesSecurityLevelId.fromJson(String json) { return switch (json) {
  'security_level' => securityLevel,
  _ => ZonesSecurityLevelId._(json),
}; }

static const ZonesSecurityLevelId securityLevel = ZonesSecurityLevelId._('security_level');

static const List<ZonesSecurityLevelId> values = [securityLevel];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSecurityLevelId && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesSecurityLevelId($value)'; } 
 }
@immutable final class ZonesSecurityLevelValue2 {const ZonesSecurityLevelValue2._(this.value);

factory ZonesSecurityLevelValue2.fromJson(String json) { return switch (json) {
  'off' => off,
  'essentially_off' => essentiallyOff,
  'low' => low,
  'medium' => medium,
  'high' => high,
  'under_attack' => underAttack,
  _ => ZonesSecurityLevelValue2._(json),
}; }

static const ZonesSecurityLevelValue2 off = ZonesSecurityLevelValue2._('off');

static const ZonesSecurityLevelValue2 essentiallyOff = ZonesSecurityLevelValue2._('essentially_off');

static const ZonesSecurityLevelValue2 low = ZonesSecurityLevelValue2._('low');

static const ZonesSecurityLevelValue2 medium = ZonesSecurityLevelValue2._('medium');

static const ZonesSecurityLevelValue2 high = ZonesSecurityLevelValue2._('high');

static const ZonesSecurityLevelValue2 underAttack = ZonesSecurityLevelValue2._('under_attack');

static const List<ZonesSecurityLevelValue2> values = [off, essentiallyOff, low, medium, high, underAttack];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesSecurityLevelValue2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesSecurityLevelValue2($value)'; } 
 }
@immutable final class ZonesSecurityLevel {const ZonesSecurityLevel({this.id, this.value, });

factory ZonesSecurityLevel.fromJson(Map<String, dynamic> json) { return ZonesSecurityLevel(
  id: json['id'] != null ? ZonesSecurityLevelId.fromJson(json['id'] as String) : null,
  value: json['value'] != null ? ZonesSecurityLevelValue2.fromJson(json['value'] as String) : null,
); }

/// Control options for the **Security Level** feature from the **Security** app.
/// 
final ZonesSecurityLevelId? id;

final ZonesSecurityLevelValue2? value;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
  if (value != null) 'value': value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'value'}.contains(key)); } 
ZonesSecurityLevel copyWith({ZonesSecurityLevelId Function()? id, ZonesSecurityLevelValue2 Function()? value, }) { return ZonesSecurityLevel(
  id: id != null ? id() : this.id,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesSecurityLevel &&
          id == other.id &&
          value == other.value; } 
@override int get hashCode { return Object.hash(id, value); } 
@override String toString() { return 'ZonesSecurityLevel(id: $id, value: $value)'; } 
 }
