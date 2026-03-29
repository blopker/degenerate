// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'shield_timestamp.dart';import 'shield_uuid.dart';final class ShieldSchemaHosts {const ShieldSchemaHosts({required this.createdAt, required this.hosts, required this.name, required this.schemaId, });

factory ShieldSchemaHosts.fromJson(Map<String, dynamic> json) { return ShieldSchemaHosts(
  createdAt: ShieldTimestamp.fromJson(json['created_at'] as String),
  hosts: (json['hosts'] as List<dynamic>).map((e) => e as String).toList(),
  name: json['name'] as String,
  schemaId: ShieldUuid.fromJson(json['schema_id'] as String),
); }

final ShieldTimestamp createdAt;

/// Hosts serving the schema, e.g zone.host.com
final List<String> hosts;

/// Name of the schema
final String name;

/// A unique identifier of this schema
final ShieldUuid schemaId;

Map<String, dynamic> toJson() { return {
  'created_at': createdAt.toJson(),
  'hosts': hosts,
  'name': name,
  'schema_id': schemaId.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('created_at') &&
      json.containsKey('hosts') &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('schema_id'); } 
ShieldSchemaHosts copyWith({ShieldTimestamp? createdAt, List<String>? hosts, String? name, ShieldUuid? schemaId, }) { return ShieldSchemaHosts(
  createdAt: createdAt ?? this.createdAt,
  hosts: hosts ?? this.hosts,
  name: name ?? this.name,
  schemaId: schemaId ?? this.schemaId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ShieldSchemaHosts &&
          createdAt == other.createdAt &&
          listEquals(hosts, other.hosts) &&
          name == other.name &&
          schemaId == other.schemaId; } 
@override int get hashCode { return Object.hash(createdAt, Object.hashAll(hosts), name, schemaId); } 
@override String toString() { return 'ShieldSchemaHosts(createdAt: $createdAt, hosts: $hosts, name: $name, schemaId: $schemaId)'; } 
 }
