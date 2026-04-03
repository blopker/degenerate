// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'd1_created_at.dart';import 'd1_database_identifier.dart';import 'd1_database_name.dart';import 'd1_database_version.dart';import 'd1_jurisdiction_nullable.dart';@immutable final class D1DatabaseResponse {const D1DatabaseResponse({this.createdAt, this.jurisdiction, this.name, this.uuid, this.version, });

factory D1DatabaseResponse.fromJson(Map<String, dynamic> json) { return D1DatabaseResponse(
  createdAt: json['created_at'] != null ? D1CreatedAt.fromJson(json['created_at'] as String) : null,
  jurisdiction: json['jurisdiction'] != null ? D1JurisdictionNullable.fromJson(json['jurisdiction'] as String) : null,
  name: json['name'] != null ? D1DatabaseName.fromJson(json['name'] as String) : null,
  uuid: json['uuid'] != null ? D1DatabaseIdentifier.fromJson(json['uuid'] as String) : null,
  version: json['version'] != null ? D1DatabaseVersion.fromJson(json['version'] as String) : null,
); }

/// Specifies the timestamp the resource was created as an ISO8601 string.
final D1CreatedAt? createdAt;

final D1JurisdictionNullable? jurisdiction;

/// D1 database name.
final D1DatabaseName? name;

/// D1 database identifier (UUID).
final D1DatabaseIdentifier? uuid;

final D1DatabaseVersion? version;

Map<String, dynamic> toJson() { return {
  if (createdAt != null) 'created_at': createdAt?.toJson(),
  if (jurisdiction != null) 'jurisdiction': jurisdiction?.toJson(),
  if (name != null) 'name': name?.toJson(),
  if (uuid != null) 'uuid': uuid?.toJson(),
  if (version != null) 'version': version?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'created_at', 'jurisdiction', 'name', 'uuid', 'version'}.contains(key)); } 
D1DatabaseResponse copyWith({D1CreatedAt Function()? createdAt, D1JurisdictionNullable? Function()? jurisdiction, D1DatabaseName Function()? name, D1DatabaseIdentifier Function()? uuid, D1DatabaseVersion Function()? version, }) { return D1DatabaseResponse(
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  jurisdiction: jurisdiction != null ? jurisdiction() : this.jurisdiction,
  name: name != null ? name() : this.name,
  uuid: uuid != null ? uuid() : this.uuid,
  version: version != null ? version() : this.version,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is D1DatabaseResponse &&
          createdAt == other.createdAt &&
          jurisdiction == other.jurisdiction &&
          name == other.name &&
          uuid == other.uuid &&
          version == other.version; } 
@override int get hashCode { return Object.hash(createdAt, jurisdiction, name, uuid, version); } 
@override String toString() { return 'D1DatabaseResponse(createdAt: $createdAt, jurisdiction: $jurisdiction, name: $name, uuid: $uuid, version: $version)'; } 
 }
