// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_identifier.dart';/// The owner of the zone.
@immutable final class ZonesZoneOwner {const ZonesZoneOwner({this.id, this.name, this.type, });

factory ZonesZoneOwner.fromJson(Map<String, dynamic> json) { return ZonesZoneOwner(
  id: json['id'] != null ? ZonesIdentifier.fromJson(json['id'] as String) : null,
  name: json['name'] as String?,
  type: json['type'] as String?,
); }

/// Identifier
final ZonesIdentifier? id;

/// Name of the owner.
final String? name;

/// The type of owner.
final String? type;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
  'name': ?name,
  'type': ?type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'name', 'type'}.contains(key)); } 
ZonesZoneOwner copyWith({ZonesIdentifier Function()? id, String Function()? name, String Function()? type, }) { return ZonesZoneOwner(
  id: id != null ? id() : this.id,
  name: name != null ? name() : this.name,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesZoneOwner &&
          id == other.id &&
          name == other.name &&
          type == other.type; } 
@override int get hashCode { return Object.hash(id, name, type); } 
@override String toString() { return 'ZonesZoneOwner(id: $id, name: $name, type: $type)'; } 
 }
