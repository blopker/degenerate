// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Provides details about the zone affected by the action.
@immutable final class AaaAuditLogs2Zone {const AaaAuditLogs2Zone({this.id, this.name, });

factory AaaAuditLogs2Zone.fromJson(Map<String, dynamic> json) { return AaaAuditLogs2Zone(
  id: json['id'] as String?,
  name: json['name'] as String?,
); }

/// A string that identifies the zone id.
final String? id;

/// A string that identifies the zone name.
final String? name;

Map<String, dynamic> toJson() { return {
  'id': ?id,
  'name': ?name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'name'}.contains(key)); } 
AaaAuditLogs2Zone copyWith({String Function()? id, String Function()? name, }) { return AaaAuditLogs2Zone(
  id: id != null ? id() : this.id,
  name: name != null ? name() : this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AaaAuditLogs2Zone &&
          id == other.id &&
          name == other.name; } 
@override int get hashCode { return Object.hash(id, name); } 
@override String toString() { return 'AaaAuditLogs2Zone(id: $id, name: $name)'; } 
 }
