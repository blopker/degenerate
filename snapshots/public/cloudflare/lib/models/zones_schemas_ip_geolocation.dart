// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_ip_geolocation_value.dart';/// Enable IP Geolocation to have Cloudflare geolocate visitors to your website and pass the country code to you. (https://support.cloudflare.com/hc/en-us/articles/200168236).
@immutable final class ZonesSchemasIpGeolocation {const ZonesSchemasIpGeolocation({required this.id, required this.value, this.editable = true, this.modifiedOn, });

factory ZonesSchemasIpGeolocation.fromJson(Map<String, dynamic> json) { return ZonesSchemasIpGeolocation(
  editable: json.containsKey('editable') ? json['editable'] as bool : true,
  id: json['id'],
  modifiedOn: json['modified_on'] != null ? DateTime.parse(json['modified_on'] as String) : null,
  value: ZonesIpGeolocationValue.fromJson(json['value'] as String),
); }

/// Whether or not this setting can be modified for this zone (based on your Cloudflare plan level).
final bool editable;

/// ID of the zone setting.
final dynamic id;

/// last time this setting was modified.
final DateTime? modifiedOn;

/// Value of the zone setting.
final ZonesIpGeolocationValue value;

Map<String, dynamic> toJson() { return {
  'editable': editable,
  'id': ?id,
  if (modifiedOn != null) 'modified_on': modifiedOn?.toIso8601String(),
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') &&
      json.containsKey('value'); } 
ZonesSchemasIpGeolocation copyWith({bool Function()? editable, dynamic Function()? id, DateTime? Function()? modifiedOn, ZonesIpGeolocationValue? value, }) { return ZonesSchemasIpGeolocation(
  editable: editable != null ? editable() : this.editable,
  id: id != null ? id() : this.id,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesSchemasIpGeolocation &&
          editable == other.editable &&
          id == other.id &&
          modifiedOn == other.modifiedOn &&
          value == other.value; } 
@override int get hashCode { return Object.hash(editable, id, modifiedOn, value); } 
@override String toString() { return 'ZonesSchemasIpGeolocation(editable: $editable, id: $id, modifiedOn: $modifiedOn, value: $value)'; } 
 }
