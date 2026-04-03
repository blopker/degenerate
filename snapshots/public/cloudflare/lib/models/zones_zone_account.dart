// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_identifier.dart';/// The account the zone belongs to.
@immutable final class ZonesZoneAccount {const ZonesZoneAccount({this.id, this.name, });

factory ZonesZoneAccount.fromJson(Map<String, dynamic> json) { return ZonesZoneAccount(
  id: json['id'] != null ? ZonesIdentifier.fromJson(json['id'] as String) : null,
  name: json['name'] as String?,
); }

/// Identifier
final ZonesIdentifier? id;

/// The name of the account.
final String? name;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
  'name': ?name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'name'}.contains(key)); } 
ZonesZoneAccount copyWith({ZonesIdentifier Function()? id, String Function()? name, }) { return ZonesZoneAccount(
  id: id != null ? id() : this.id,
  name: name != null ? name() : this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesZoneAccount &&
          id == other.id &&
          name == other.name; } 
@override int get hashCode { return Object.hash(id, name); } 
@override String toString() { return 'ZonesZoneAccount(id: $id, name: $name)'; } 
 }
