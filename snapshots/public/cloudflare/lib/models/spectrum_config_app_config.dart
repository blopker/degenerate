// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'spectrum_config_dns.dart';import 'spectrum_config_edge_ips.dart';import 'spectrum_config_edge_ips_dynamic.dart';import 'spectrum_config_edge_ips_static.dart';import 'spectrum_config_identifier.dart';import 'spectrum_config_origin_dns.dart';import 'spectrum_config_origin_port.dart';import 'spectrum_config_protocol.dart';import 'spectrum_config_timestamp.dart';/// Enables Argo Smart Routing for this application.
/// Notes: Only available for TCP applications with traffic_type set to "direct".
extension type const SpectrumConfigArgoSmartRouting(bool value) {
factory SpectrumConfigArgoSmartRouting.fromJson(bool json) => SpectrumConfigArgoSmartRouting(json);

bool toJson() => value;

}
/// Enables IP Access Rules for this application.
/// Notes: Only available for TCP applications.
extension type const SpectrumConfigIpFirewall(bool value) {
factory SpectrumConfigIpFirewall.fromJson(bool json) => SpectrumConfigIpFirewall(json);

bool toJson() => value;

}
/// Enables Proxy Protocol to the origin. Refer to [Enable Proxy protocol](https://developers.cloudflare.com/spectrum/getting-started/proxy-protocol/) for implementation details on PROXY Protocol V1, PROXY Protocol V2, and Simple Proxy Protocol.
@immutable final class SpectrumConfigProxyProtocol {const SpectrumConfigProxyProtocol._(this.value);

factory SpectrumConfigProxyProtocol.fromJson(String json) { return switch (json) {
  'off' => off,
  'v1' => v1,
  'v2' => v2,
  'simple' => simple,
  _ => SpectrumConfigProxyProtocol._(json),
}; }

static const SpectrumConfigProxyProtocol off = SpectrumConfigProxyProtocol._('off');

static const SpectrumConfigProxyProtocol v1 = SpectrumConfigProxyProtocol._('v1');

static const SpectrumConfigProxyProtocol v2 = SpectrumConfigProxyProtocol._('v2');

static const SpectrumConfigProxyProtocol simple = SpectrumConfigProxyProtocol._('simple');

static const List<SpectrumConfigProxyProtocol> values = [off, v1, v2, simple];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SpectrumConfigProxyProtocol && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SpectrumConfigProxyProtocol($value)'; } 
 }
/// The type of TLS termination associated with the application.
@immutable final class SpectrumConfigTls {const SpectrumConfigTls._(this.value);

factory SpectrumConfigTls.fromJson(String json) { return switch (json) {
  'off' => off,
  'flexible' => flexible,
  'full' => full,
  'strict' => strict,
  _ => SpectrumConfigTls._(json),
}; }

static const SpectrumConfigTls off = SpectrumConfigTls._('off');

static const SpectrumConfigTls flexible = SpectrumConfigTls._('flexible');

static const SpectrumConfigTls full = SpectrumConfigTls._('full');

static const SpectrumConfigTls strict = SpectrumConfigTls._('strict');

static const List<SpectrumConfigTls> values = [off, flexible, full, strict];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SpectrumConfigTls && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SpectrumConfigTls($value)'; } 
 }
/// Determines how data travels from the edge to your origin. When set to "direct", Spectrum will send traffic directly to your origin, and the application's type is derived from the `protocol`. When set to "http" or "https", Spectrum will apply Cloudflare's HTTP/HTTPS features as it sends traffic to your origin, and the application type matches this property exactly.
@immutable final class SpectrumConfigTrafficType {const SpectrumConfigTrafficType._(this.value);

factory SpectrumConfigTrafficType.fromJson(String json) { return switch (json) {
  'direct' => direct,
  'http' => http,
  'https' => https,
  _ => SpectrumConfigTrafficType._(json),
}; }

static const SpectrumConfigTrafficType direct = SpectrumConfigTrafficType._('direct');

static const SpectrumConfigTrafficType http = SpectrumConfigTrafficType._('http');

static const SpectrumConfigTrafficType https = SpectrumConfigTrafficType._('https');

static const List<SpectrumConfigTrafficType> values = [direct, http, https];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SpectrumConfigTrafficType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SpectrumConfigTrafficType($value)'; } 
 }
@immutable final class SpectrumConfigAppConfig {const SpectrumConfigAppConfig({required this.createdOn, required this.id, required this.modifiedOn, required this.dns, required this.protocol, required this.trafficType, this.argoSmartRouting, this.edgeIps, this.ipFirewall, this.originDirect, this.originDns, this.originPort, this.proxyProtocol, this.tls, });

factory SpectrumConfigAppConfig.fromJson(Map<String, dynamic> json) { return SpectrumConfigAppConfig(
  createdOn: SpectrumConfigTimestamp.fromJson(json['created_on'] as String),
  id: SpectrumConfigIdentifier.fromJson(json['id'] as String),
  modifiedOn: SpectrumConfigTimestamp.fromJson(json['modified_on'] as String),
  argoSmartRouting: json['argo_smart_routing'] != null ? SpectrumConfigArgoSmartRouting.fromJson(json['argo_smart_routing'] as bool) : null,
  dns: SpectrumConfigDns.fromJson(json['dns'] as Map<String, dynamic>),
  edgeIps: json['edge_ips'] != null ? OneOf2.parse(json['edge_ips'], fromA: (v) => SpectrumConfigEdgeIpsDynamic.fromJson(v as Map<String, dynamic>), fromB: (v) => SpectrumConfigEdgeIpsStatic.fromJson(v as Map<String, dynamic>),) : null,
  ipFirewall: json['ip_firewall'] != null ? SpectrumConfigIpFirewall.fromJson(json['ip_firewall'] as bool) : null,
  originDirect: (json['origin_direct'] as List<dynamic>?)?.map((e) => e as String).toList(),
  originDns: json['origin_dns'] != null ? SpectrumConfigOriginDns.fromJson(json['origin_dns'] as Map<String, dynamic>) : null,
  originPort: json['origin_port'] != null ? OneOf2.parse(json['origin_port'], fromA: (v) => (v as num).toInt(), fromB: (v) => v as String,) : null,
  protocol: SpectrumConfigProtocol.fromJson(json['protocol'] as String),
  proxyProtocol: json['proxy_protocol'] != null ? SpectrumConfigProxyProtocol.fromJson(json['proxy_protocol'] as String) : null,
  tls: json['tls'] != null ? SpectrumConfigTls.fromJson(json['tls'] as String) : null,
  trafficType: SpectrumConfigTrafficType.fromJson(json['traffic_type'] as String),
); }

final SpectrumConfigTimestamp createdOn;

final SpectrumConfigIdentifier id;

final SpectrumConfigTimestamp modifiedOn;

final SpectrumConfigArgoSmartRouting? argoSmartRouting;

final SpectrumConfigDns dns;

final SpectrumConfigEdgeIps? edgeIps;

final SpectrumConfigIpFirewall? ipFirewall;

final List<String>? originDirect;

final SpectrumConfigOriginDns? originDns;

final SpectrumConfigOriginPort? originPort;

final SpectrumConfigProtocol protocol;

final SpectrumConfigProxyProtocol? proxyProtocol;

final SpectrumConfigTls? tls;

final SpectrumConfigTrafficType trafficType;

Map<String, dynamic> toJson() { return {
  'created_on': createdOn.toJson(),
  'id': id.toJson(),
  'modified_on': modifiedOn.toJson(),
  if (argoSmartRouting != null) 'argo_smart_routing': argoSmartRouting?.toJson(),
  'dns': dns.toJson(),
  if (edgeIps != null) 'edge_ips': edgeIps?.toJson(),
  if (ipFirewall != null) 'ip_firewall': ipFirewall?.toJson(),
  'origin_direct': ?originDirect,
  if (originDns != null) 'origin_dns': originDns?.toJson(),
  if (originPort != null) 'origin_port': originPort?.toJson(),
  'protocol': protocol.toJson(),
  if (proxyProtocol != null) 'proxy_protocol': proxyProtocol?.toJson(),
  if (tls != null) 'tls': tls?.toJson(),
  'traffic_type': trafficType.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('created_on') &&
      json.containsKey('id') &&
      json.containsKey('modified_on') &&
      json.containsKey('dns') &&
      json.containsKey('protocol') &&
      json.containsKey('traffic_type'); } 
SpectrumConfigAppConfig copyWith({SpectrumConfigTimestamp? createdOn, SpectrumConfigIdentifier? id, SpectrumConfigTimestamp? modifiedOn, SpectrumConfigArgoSmartRouting Function()? argoSmartRouting, SpectrumConfigDns? dns, SpectrumConfigEdgeIps Function()? edgeIps, SpectrumConfigIpFirewall Function()? ipFirewall, List<String> Function()? originDirect, SpectrumConfigOriginDns Function()? originDns, SpectrumConfigOriginPort Function()? originPort, SpectrumConfigProtocol? protocol, SpectrumConfigProxyProtocol Function()? proxyProtocol, SpectrumConfigTls Function()? tls, SpectrumConfigTrafficType? trafficType, }) { return SpectrumConfigAppConfig(
  createdOn: createdOn ?? this.createdOn,
  id: id ?? this.id,
  modifiedOn: modifiedOn ?? this.modifiedOn,
  argoSmartRouting: argoSmartRouting != null ? argoSmartRouting() : this.argoSmartRouting,
  dns: dns ?? this.dns,
  edgeIps: edgeIps != null ? edgeIps() : this.edgeIps,
  ipFirewall: ipFirewall != null ? ipFirewall() : this.ipFirewall,
  originDirect: originDirect != null ? originDirect() : this.originDirect,
  originDns: originDns != null ? originDns() : this.originDns,
  originPort: originPort != null ? originPort() : this.originPort,
  protocol: protocol ?? this.protocol,
  proxyProtocol: proxyProtocol != null ? proxyProtocol() : this.proxyProtocol,
  tls: tls != null ? tls() : this.tls,
  trafficType: trafficType ?? this.trafficType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SpectrumConfigAppConfig &&
          createdOn == other.createdOn &&
          id == other.id &&
          modifiedOn == other.modifiedOn &&
          argoSmartRouting == other.argoSmartRouting &&
          dns == other.dns &&
          edgeIps == other.edgeIps &&
          ipFirewall == other.ipFirewall &&
          listEquals(originDirect, other.originDirect) &&
          originDns == other.originDns &&
          originPort == other.originPort &&
          protocol == other.protocol &&
          proxyProtocol == other.proxyProtocol &&
          tls == other.tls &&
          trafficType == other.trafficType; } 
@override int get hashCode { return Object.hash(createdOn, id, modifiedOn, argoSmartRouting, dns, edgeIps, ipFirewall, Object.hashAll(originDirect ?? const []), originDns, originPort, protocol, proxyProtocol, tls, trafficType); } 
@override String toString() { return 'SpectrumConfigAppConfig(createdOn: $createdOn, id: $id, modifiedOn: $modifiedOn, argoSmartRouting: $argoSmartRouting, dns: $dns, edgeIps: $edgeIps, ipFirewall: $ipFirewall, originDirect: $originDirect, originDns: $originDns, originPort: $originPort, protocol: $protocol, proxyProtocol: $proxyProtocol, tls: $tls, trafficType: $trafficType)'; } 
 }
