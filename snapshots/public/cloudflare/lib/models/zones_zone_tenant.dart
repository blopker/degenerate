// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_identifier.dart';/// The root organizational unit that this zone belongs to (such as a tenant or organization).
@immutable final class ZonesZoneTenant {const ZonesZoneTenant({this.id, this.name, });

factory ZonesZoneTenant.fromJson(Map<String, dynamic> json) { return ZonesZoneTenant(
  id: json['id'] != null ? ZonesIdentifier.fromJson(json['id'] as String) : null,
  name: json['name'] as String?,
); }

/// Identifier
final ZonesIdentifier? id;

/// The name of the Tenant account.
final String? name;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
  'name': ?name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'name'}.contains(key)); } 
ZonesZoneTenant copyWith({ZonesIdentifier Function()? id, String Function()? name, }) { return ZonesZoneTenant(
  id: id != null ? id() : this.id,
  name: name != null ? name() : this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesZoneTenant &&
          id == other.id &&
          name == other.name; } 
@override int get hashCode { return Object.hash(id, name); } 
@override String toString() { return 'ZonesZoneTenant(id: $id, name: $name)'; } 
 }
