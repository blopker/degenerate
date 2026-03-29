// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'hyperdrive_hyperdrive_caching.dart';import 'hyperdrive_hyperdrive_config_origin.dart';import 'hyperdrive_hyperdrive_database.dart';import 'hyperdrive_hyperdrive_mtls.dart';import 'hyperdrive_hyperdrive_name.dart';import 'hyperdrive_hyperdrive_origin_connection_limit.dart';import 'hyperdrive_identifier.dart';final class HyperdriveHyperdriveConfig {const HyperdriveHyperdriveConfig({this.caching, this.createdOn, required this.id, this.modifiedOn, this.mtls, required this.name, required this.origin, this.originConnectionLimit, });

factory HyperdriveHyperdriveConfig.fromJson(Map<String, dynamic> json) { return HyperdriveHyperdriveConfig(
  caching: json['caching'] != null ? HyperdriveHyperdriveCaching.fromJson(json['caching'] as Map<String, dynamic>) : null,
  createdOn: json['created_on'] != null ? DateTime.parse(json['created_on'] as String) : null,
  id: HyperdriveIdentifier.fromJson(json['id'] as String),
  modifiedOn: json['modified_on'] != null ? DateTime.parse(json['modified_on'] as String) : null,
  mtls: json['mtls'] != null ? HyperdriveHyperdriveMtls.fromJson(json['mtls'] as Map<String, dynamic>) : null,
  name: HyperdriveHyperdriveName.fromJson(json['name'] as String),
  origin: OneOf2.parse(json['origin'], fromA: (v) => HyperdriveHyperdriveDatabase.fromJson(v as Map<String, dynamic>), fromB: (v) => HyperdriveHyperdriveDatabase.fromJson(v as Map<String, dynamic>),),
  originConnectionLimit: json['origin_connection_limit'] != null ? HyperdriveHyperdriveOriginConnectionLimit.fromJson(json['origin_connection_limit'] as num) : null,
); }

final HyperdriveHyperdriveCaching? caching;

/// Defines the creation time of the Hyperdrive configuration.
final DateTime? createdOn;

final HyperdriveIdentifier id;

/// Defines the last modified time of the Hyperdrive configuration.
final DateTime? modifiedOn;

final HyperdriveHyperdriveMtls? mtls;

final HyperdriveHyperdriveName name;

final HyperdriveHyperdriveConfigOrigin origin;

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
HyperdriveHyperdriveConfig copyWith({HyperdriveHyperdriveCaching Function()? caching, DateTime Function()? createdOn, HyperdriveIdentifier? id, DateTime Function()? modifiedOn, HyperdriveHyperdriveMtls Function()? mtls, HyperdriveHyperdriveName? name, HyperdriveHyperdriveConfigOrigin? origin, HyperdriveHyperdriveOriginConnectionLimit Function()? originConnectionLimit, }) { return HyperdriveHyperdriveConfig(
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
      other is HyperdriveHyperdriveConfig &&
          caching == other.caching &&
          createdOn == other.createdOn &&
          id == other.id &&
          modifiedOn == other.modifiedOn &&
          mtls == other.mtls &&
          name == other.name &&
          origin == other.origin &&
          originConnectionLimit == other.originConnectionLimit; } 
@override int get hashCode { return Object.hash(caching, createdOn, id, modifiedOn, mtls, name, origin, originConnectionLimit); } 
@override String toString() { return 'HyperdriveHyperdriveConfig(caching: $caching, createdOn: $createdOn, id: $id, modifiedOn: $modifiedOn, mtls: $mtls, name: $name, origin: $origin, originConnectionLimit: $originConnectionLimit)'; } 
 }
