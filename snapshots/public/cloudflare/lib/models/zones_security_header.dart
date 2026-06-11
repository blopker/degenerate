// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_security_header_value.dart';/// Cloudflare security header for a zone.
@immutable final class ZonesSecurityHeader {const ZonesSecurityHeader({required this.id, required this.value, this.editable = true, this.modifiedOn, });

factory ZonesSecurityHeader.fromJson(Map<String, dynamic> json) { return ZonesSecurityHeader(
  editable: json.containsKey('editable') ? json['editable'] as bool : true,
  id: json['id'],
  modifiedOn: json['modified_on'] != null ? DateTime.parse(json['modified_on'] as String) : null,
  value: ZonesSecurityHeaderValue.fromJson(json['value'] as Map<String, dynamic>),
); }

/// Whether or not this setting can be modified for this zone (based on your Cloudflare plan level).
final bool editable;

/// ID of the zone's security header.
final dynamic id;

/// last time this setting was modified.
final DateTime? modifiedOn;

final ZonesSecurityHeaderValue value;

Map<String, dynamic> toJson() { return {
  'editable': editable,
  'id': ?id,
  if (modifiedOn != null) 'modified_on': modifiedOn?.toIso8601String(),
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') &&
      json.containsKey('value'); } 
ZonesSecurityHeader copyWith({bool Function()? editable, dynamic Function()? id, DateTime? Function()? modifiedOn, ZonesSecurityHeaderValue? value, }) { return ZonesSecurityHeader(
  editable: editable != null ? editable() : this.editable,
  id: id != null ? id() : this.id,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesSecurityHeader &&
          editable == other.editable &&
          id == other.id &&
          modifiedOn == other.modifiedOn &&
          value == other.value; } 
@override int get hashCode { return Object.hash(editable, id, modifiedOn, value); } 
@override String toString() { return 'ZonesSecurityHeader(editable: $editable, id: $id, modifiedOn: $modifiedOn, value: $value)'; } 
 }
