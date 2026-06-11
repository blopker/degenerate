// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_origin_error_page_pass_thru_value.dart';/// Cloudflare will proxy customer error pages on any 502,504 errors on origin server instead of showing a default Cloudflare error page. This does not apply to 522 errors and is limited to Enterprise Zones.
@immutable final class ZonesSchemasOriginErrorPagePassThru {const ZonesSchemasOriginErrorPagePassThru({required this.id, required this.value, this.editable = true, this.modifiedOn, });

factory ZonesSchemasOriginErrorPagePassThru.fromJson(Map<String, dynamic> json) { return ZonesSchemasOriginErrorPagePassThru(
  editable: json.containsKey('editable') ? json['editable'] as bool : true,
  id: json['id'],
  modifiedOn: json['modified_on'] != null ? DateTime.parse(json['modified_on'] as String) : null,
  value: ZonesOriginErrorPagePassThruValue.fromJson(json['value'] as String),
); }

/// Whether or not this setting can be modified for this zone (based on your Cloudflare plan level).
final bool editable;

/// ID of the zone setting.
final dynamic id;

/// last time this setting was modified.
final DateTime? modifiedOn;

/// Value of the zone setting.
final ZonesOriginErrorPagePassThruValue value;

Map<String, dynamic> toJson() { return {
  'editable': editable,
  'id': ?id,
  if (modifiedOn != null) 'modified_on': modifiedOn?.toIso8601String(),
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') &&
      json.containsKey('value'); } 
ZonesSchemasOriginErrorPagePassThru copyWith({bool Function()? editable, dynamic Function()? id, DateTime? Function()? modifiedOn, ZonesOriginErrorPagePassThruValue? value, }) { return ZonesSchemasOriginErrorPagePassThru(
  editable: editable != null ? editable() : this.editable,
  id: id != null ? id() : this.id,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesSchemasOriginErrorPagePassThru &&
          editable == other.editable &&
          id == other.id &&
          modifiedOn == other.modifiedOn &&
          value == other.value; } 
@override int get hashCode { return Object.hash(editable, id, modifiedOn, value); } 
@override String toString() { return 'ZonesSchemasOriginErrorPagePassThru(editable: $editable, id: $id, modifiedOn: $modifiedOn, value: $value)'; } 
 }
