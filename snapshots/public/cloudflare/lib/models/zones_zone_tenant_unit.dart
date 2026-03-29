// GENERATED CODE - DO NOT MODIFY BY HAND

import 'zones_identifier.dart';/// The immediate parent organizational unit that this zone belongs to (such as under a tenant or sub-organization).
final class ZonesZoneTenantUnit {const ZonesZoneTenantUnit({this.id});

factory ZonesZoneTenantUnit.fromJson(Map<String, dynamic> json) { return ZonesZoneTenantUnit(
  id: json['id'] != null ? ZonesIdentifier.fromJson(json['id'] as String) : null,
); }

/// Identifier
final ZonesIdentifier? id;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
ZonesZoneTenantUnit copyWith({ZonesIdentifier Function()? id}) { return ZonesZoneTenantUnit(
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesZoneTenantUnit &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'ZonesZoneTenantUnit(id: $id)'; } 
 }
