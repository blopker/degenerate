// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'load_balancing_address.dart';import 'load_balancing_origin_port.dart';import 'load_balancing_schemas_enabled.dart';import 'load_balancing_schemas_header.dart';import 'load_balancing_schemas_name.dart';import 'load_balancing_virtual_network_id.dart';import 'load_balancing_weight.dart';@immutable final class LoadBalancingOriginRequest {const LoadBalancingOriginRequest({this.address, this.enabled, this.header, this.name, this.port, this.virtualNetworkId, this.weight, });

factory LoadBalancingOriginRequest.fromJson(Map<String, dynamic> json) {return LoadBalancingOriginRequest(
  address: json['address'] != null ? LoadBalancingAddress.fromJson(json['address'] as String) : null,
  enabled: json['enabled'] != null ? LoadBalancingSchemasEnabled.fromJson(json['enabled'] as bool) : null,
  header: json['header'] != null ? LoadBalancingSchemasHeader.fromJson(json['header'] as Map<String, dynamic>) : null,
  name: json['name'] != null ? LoadBalancingSchemasName.fromJson(json['name'] as String) : null,
  port: json['port'] != null ? LoadBalancingOriginPort.fromJson(json['port'] as num) : null,
  virtualNetworkId: json['virtual_network_id'] != null ? LoadBalancingVirtualNetworkId.fromJson(json['virtual_network_id'] as String) : null,
  weight: json['weight'] != null ? LoadBalancingWeight.fromJson(json['weight'] as num) : null,
);}

/// The IP address (IPv4 or IPv6) of the origin, or its publicly addressable hostname. Hostnames entered here should resolve directly to the origin, and not be a hostname proxied by Cloudflare. To set an internal/reserved address, virtual_network_id must also be set.
final LoadBalancingAddress? address;

/// Whether to enable (the default) this origin within the pool. Disabled origins will not receive traffic and are excluded from health checks. The origin will only be disabled for the current pool.
final LoadBalancingSchemasEnabled? enabled;

final LoadBalancingSchemasHeader? header;

/// A human-identifiable name for the origin.
final LoadBalancingSchemasName? name;

/// The port for upstream connections. A value of 0 means the default port for the protocol will be used.
final LoadBalancingOriginPort? port;

/// The virtual network subnet ID the origin belongs in. Virtual network must also belong to the account.
final LoadBalancingVirtualNetworkId? virtualNetworkId;

/// The weight of this origin relative to other origins in the pool. Based on the configured weight the total traffic is distributed among origins within the pool.
/// - `origin_steering.policy="least_outstanding_requests"`: Use weight to scale the origin's outstanding requests.
/// - `origin_steering.policy="least_connections"`: Use weight to scale the origin's open connections.
final LoadBalancingWeight? weight;

Map<String, dynamic> toJson() {return {
  if (address != null) 'address': address?.toJson(),
  if (enabled != null) 'enabled': enabled?.toJson(),
  if (header != null) 'header': header?.toJson(),
  if (name != null) 'name': name?.toJson(),
  if (port != null) 'port': port?.toJson(),
  if (virtualNetworkId != null) 'virtual_network_id': virtualNetworkId?.toJson(),
  if (weight != null) 'weight': weight?.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'address', 'enabled', 'header', 'name', 'port', 'virtual_network_id', 'weight'}.contains(key));}
LoadBalancingOriginRequest copyWith({LoadBalancingAddress? Function()? address, LoadBalancingSchemasEnabled? Function()? enabled, LoadBalancingSchemasHeader? Function()? header, LoadBalancingSchemasName? Function()? name, LoadBalancingOriginPort? Function()? port, LoadBalancingVirtualNetworkId? Function()? virtualNetworkId, LoadBalancingWeight? Function()? weight, }) {return LoadBalancingOriginRequest(
  address: address != null ? address() : this.address,
  enabled: enabled != null ? enabled() : this.enabled,
  header: header != null ? header() : this.header,
  name: name != null ? name() : this.name,
  port: port != null ? port() : this.port,
  virtualNetworkId: virtualNetworkId != null ? virtualNetworkId() : this.virtualNetworkId,
  weight: weight != null ? weight() : this.weight,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is LoadBalancingOriginRequest &&
          address == other.address &&
          enabled == other.enabled &&
          header == other.header &&
          name == other.name &&
          port == other.port &&
          virtualNetworkId == other.virtualNetworkId &&
          weight == other.weight;}
@override int get hashCode {return Object.hash(address, enabled, header, name, port, virtualNetworkId, weight);}
@override String toString() {return 'LoadBalancingOriginRequest(address: $address, enabled: $enabled, header: $header, name: $name, port: $port, virtualNetworkId: $virtualNetworkId, weight: $weight)';}
}
