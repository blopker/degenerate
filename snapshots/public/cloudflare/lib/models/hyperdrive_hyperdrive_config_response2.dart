// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_protected_database_behind_cloudflare_tunnel2.dart';import 'hyperdrive_hyperdrive_caching.dart';import 'hyperdrive_hyperdrive_config_response2_origin.dart';import 'hyperdrive_hyperdrive_mtls.dart';import 'hyperdrive_hyperdrive_name.dart';import 'hyperdrive_hyperdrive_origin_connection_limit.dart';import 'hyperdrive_identifier.dart';import 'public_database2.dart';@immutable final class HyperdriveHyperdriveConfigResponse2 {const HyperdriveHyperdriveConfigResponse2({required this.id, required this.name, required this.origin, this.caching, this.createdOn, this.modifiedOn, this.mtls, this.originConnectionLimit, });

factory HyperdriveHyperdriveConfigResponse2.fromJson(Map<String, dynamic> json) { return HyperdriveHyperdriveConfigResponse2(
  caching: json['caching'] != null ? HyperdriveHyperdriveCaching.fromJson(json['caching'] as Map<String, dynamic>) : null,
  createdOn: json['created_on'] != null ? DateTime.parse(json['created_on'] as String) : null,
  id: HyperdriveIdentifier.fromJson(json['id'] as String),
  modifiedOn: json['modified_on'] != null ? DateTime.parse(json['modified_on'] as String) : null,
  mtls: json['mtls'] != null ? HyperdriveHyperdriveMtls.fromJson(json['mtls'] as Map<String, dynamic>) : null,
  name: HyperdriveHyperdriveName.fromJson(json['name'] as String),
  origin: OneOf2.parse(json['origin'], fromA: (v) => PublicDatabase2.fromJson(v as Map<String, dynamic>), fromB: (v) => AccessProtectedDatabaseBehindCloudflareTunnel2.fromJson(v as Map<String, dynamic>),),
  originConnectionLimit: json['origin_connection_limit'] != null ? HyperdriveHyperdriveOriginConnectionLimit.fromJson(json['origin_connection_limit'] as num) : null,
); }

final HyperdriveHyperdriveCaching? caching;

/// Defines the creation time of the Hyperdrive configuration.
final DateTime? createdOn;

/// Define configurations using a unique string identifier.
final HyperdriveIdentifier id;

/// Defines the last modified time of the Hyperdrive configuration.
final DateTime? modifiedOn;

final HyperdriveHyperdriveMtls? mtls;

/// The name of the Hyperdrive configuration. Used to identify the configuration in the Cloudflare dashboard and API.
final HyperdriveHyperdriveName name;

final HyperdriveHyperdriveConfigResponse2Origin origin;

/// The (soft) maximum number of connections the Hyperdrive is allowed to make to the origin database.
final HyperdriveHyperdriveOriginConnectionLimit? originConnectionLimit;

Map<String, dynamic> toJson() { return {
  if (caching != null) 'caching': caching?.toJson(),
  if (createdOn != null) 'created_on': createdOn?.toIso8601String(),
  'id': id.toJson(),
  if (modifiedOn != null) 'modified_on': modifiedOn?.toIso8601String(),
  if (mtls != null) 'mtls': mtls?.toJson(),
  'name': name.toJson(),
  'origin': origin.toJson(),
  if (originConnectionLimit != null) 'origin_connection_limit': originConnectionLimit?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') &&
      json.containsKey('name') &&
      json.containsKey('origin'); } 
HyperdriveHyperdriveConfigResponse2 copyWith({HyperdriveHyperdriveCaching? Function()? caching, DateTime? Function()? createdOn, HyperdriveIdentifier? id, DateTime? Function()? modifiedOn, HyperdriveHyperdriveMtls? Function()? mtls, HyperdriveHyperdriveName? name, HyperdriveHyperdriveConfigResponse2Origin? origin, HyperdriveHyperdriveOriginConnectionLimit? Function()? originConnectionLimit, }) { return HyperdriveHyperdriveConfigResponse2(
  caching: caching != null ? caching() : this.caching,
  createdOn: createdOn != null ? createdOn() : this.createdOn,
  id: id ?? this.id,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
  mtls: mtls != null ? mtls() : this.mtls,
  name: name ?? this.name,
  origin: origin ?? this.origin,
  originConnectionLimit: originConnectionLimit != null ? originConnectionLimit() : this.originConnectionLimit,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is HyperdriveHyperdriveConfigResponse2 &&
          caching == other.caching &&
          createdOn == other.createdOn &&
          id == other.id &&
          modifiedOn == other.modifiedOn &&
          mtls == other.mtls &&
          name == other.name &&
          origin == other.origin &&
          originConnectionLimit == other.originConnectionLimit; } 
@override int get hashCode { return Object.hash(caching, createdOn, id, modifiedOn, mtls, name, origin, originConnectionLimit); } 
@override String toString() { return 'HyperdriveHyperdriveConfigResponse2(caching: $caching, createdOn: $createdOn, id: $id, modifiedOn: $modifiedOn, mtls: $mtls, name: $name, origin: $origin, originConnectionLimit: $originConnectionLimit)'; } 
 }
