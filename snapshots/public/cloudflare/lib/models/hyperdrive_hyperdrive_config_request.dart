// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_protected_database_behind_cloudflare_tunnel3.dart';import 'hyperdrive_hyperdrive_caching.dart';import 'hyperdrive_hyperdrive_config_request_origin.dart';import 'hyperdrive_hyperdrive_mtls.dart';import 'hyperdrive_hyperdrive_name.dart';import 'hyperdrive_hyperdrive_origin_connection_limit.dart';import 'public_database3.dart';@immutable final class HyperdriveHyperdriveConfigRequest {const HyperdriveHyperdriveConfigRequest({required this.name, required this.origin, this.caching, this.mtls, this.originConnectionLimit, });

factory HyperdriveHyperdriveConfigRequest.fromJson(Map<String, dynamic> json) {return HyperdriveHyperdriveConfigRequest(
  caching: json['caching'] != null ? HyperdriveHyperdriveCaching.fromJson(json['caching'] as Map<String, dynamic>) : null,
  mtls: json['mtls'] != null ? HyperdriveHyperdriveMtls.fromJson(json['mtls'] as Map<String, dynamic>) : null,
  name: HyperdriveHyperdriveName.fromJson(json['name'] as String),
  origin: OneOf2.parse(json['origin'], fromA: (v) => PublicDatabase3.fromJson(v as Map<String, dynamic>), fromB: (v) => AccessProtectedDatabaseBehindCloudflareTunnel3.fromJson(v as Map<String, dynamic>),),
  originConnectionLimit: json['origin_connection_limit'] != null ? HyperdriveHyperdriveOriginConnectionLimit.fromJson(json['origin_connection_limit'] as num) : null,
);}

final HyperdriveHyperdriveCaching? caching;

final HyperdriveHyperdriveMtls? mtls;

/// The name of the Hyperdrive configuration. Used to identify the configuration in the Cloudflare dashboard and API.
final HyperdriveHyperdriveName name;

final HyperdriveHyperdriveConfigRequestOrigin origin;

/// The (soft) maximum number of connections the Hyperdrive is allowed to make to the origin database.
final HyperdriveHyperdriveOriginConnectionLimit? originConnectionLimit;

Map<String, dynamic> toJson() {return {
  if (caching != null) 'caching': caching?.toJson(),
  if (mtls != null) 'mtls': mtls?.toJson(),
  'name': name.toJson(),
  'origin': origin.toJson(),
  if (originConnectionLimit != null) 'origin_connection_limit': originConnectionLimit?.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('name') &&
      json.containsKey('origin');}
HyperdriveHyperdriveConfigRequest copyWith({HyperdriveHyperdriveCaching? Function()? caching, HyperdriveHyperdriveMtls? Function()? mtls, HyperdriveHyperdriveName? name, HyperdriveHyperdriveConfigRequestOrigin? origin, HyperdriveHyperdriveOriginConnectionLimit? Function()? originConnectionLimit, }) {return HyperdriveHyperdriveConfigRequest(
  caching: caching != null ? caching() : this.caching,
  mtls: mtls != null ? mtls() : this.mtls,
  name: name ?? this.name,
  origin: origin ?? this.origin,
  originConnectionLimit: originConnectionLimit != null ? originConnectionLimit() : this.originConnectionLimit,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is HyperdriveHyperdriveConfigRequest &&
          caching == other.caching &&
          mtls == other.mtls &&
          name == other.name &&
          origin == other.origin &&
          originConnectionLimit == other.originConnectionLimit;}
@override int get hashCode {return Object.hash(caching, mtls, name, origin, originConnectionLimit);}
@override String toString() {return 'HyperdriveHyperdriveConfigRequest(caching: $caching, mtls: $mtls, name: $name, origin: $origin, originConnectionLimit: $originConnectionLimit)';}
}
