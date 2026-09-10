// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'spectrum_config_argo_smart_routing.dart';import 'spectrum_config_dns.dart';import 'spectrum_config_edge_ips.dart';import 'spectrum_config_edge_ips_dynamic.dart';import 'spectrum_config_edge_ips_static.dart';import 'spectrum_config_ip_firewall.dart';import 'spectrum_config_origin_dns.dart';import 'spectrum_config_origin_port.dart';import 'spectrum_config_protocol.dart';import 'spectrum_config_proxy_protocol.dart';import 'spectrum_config_tls.dart';import 'spectrum_config_traffic_type.dart';@immutable final class SpectrumConfigAppConfigRequest {const SpectrumConfigAppConfigRequest({required this.dns, required this.protocol, required this.trafficType, this.argoSmartRouting, this.edgeIps, this.ipFirewall, this.originDirect, this.originDns, this.originPort, this.proxyProtocol, this.tls, });

factory SpectrumConfigAppConfigRequest.fromJson(Map<String, dynamic> json) {return SpectrumConfigAppConfigRequest(
  argoSmartRouting: json['argo_smart_routing'] != null ? SpectrumConfigArgoSmartRouting.fromJson(json['argo_smart_routing'] as bool) : null,
  dns: SpectrumConfigDns.fromJson(json['dns'] as Map<String, dynamic>),
  edgeIps: json['edge_ips'] != null ? OneOf2.parse(json['edge_ips'], fromA: (v) => SpectrumConfigEdgeIpsDynamic.fromJson(v as Map<String, dynamic>), fromB: (v) => SpectrumConfigEdgeIpsStatic.fromJson(v as Map<String, dynamic>),) : null,
  ipFirewall: json['ip_firewall'] != null ? SpectrumConfigIpFirewall.fromJson(json['ip_firewall'] as bool) : null,
  originDirect: (json['origin_direct'] as List<dynamic>?)?.map((e) => e as String).toList(),
  originDns: json['origin_dns'] != null ? SpectrumConfigOriginDns.fromJson(json['origin_dns'] as Map<String, dynamic>) : null,
  originPort: json['origin_port'] != null ? SpectrumConfigOriginPort.fromJson(json['origin_port']) : null,
  protocol: SpectrumConfigProtocol.fromJson(json['protocol'] as String),
  proxyProtocol: json['proxy_protocol'] != null ? SpectrumConfigProxyProtocol.fromJson(json['proxy_protocol'] as String) : null,
  tls: json['tls'] != null ? SpectrumConfigTls.fromJson(json['tls'] as String) : null,
  trafficType: SpectrumConfigTrafficType.fromJson(json['traffic_type'] as String),
);}

/// Enables Argo Smart Routing for this application.
/// Notes: Only available for TCP applications with traffic_type set to "direct".
final SpectrumConfigArgoSmartRouting? argoSmartRouting;

final SpectrumConfigDns dns;

final SpectrumConfigEdgeIps? edgeIps;

/// Enables IP Access Rules for this application.
/// Notes: Only available for TCP applications.
final SpectrumConfigIpFirewall? ipFirewall;

/// List of origin IP addresses. Array may contain multiple IP addresses for load balancing.
final List<String>? originDirect;

final SpectrumConfigOriginDns? originDns;

final SpectrumConfigOriginPort? originPort;

/// The port configuration at Cloudflare's edge. May specify a single port, for example `"tcp/1000"`, or a range of ports, for example `"tcp/1000-2000"`.
final SpectrumConfigProtocol protocol;

/// Enables Proxy Protocol to the origin. Refer to [Enable Proxy protocol](https://developers.cloudflare.com/spectrum/getting-started/proxy-protocol/) for implementation details on PROXY Protocol V1, PROXY Protocol V2, and Simple Proxy Protocol.
final SpectrumConfigProxyProtocol? proxyProtocol;

/// The type of TLS termination associated with the application.
final SpectrumConfigTls? tls;

/// Determines how data travels from the edge to your origin. When set to "direct", Spectrum will send traffic directly to your origin, and the application's type is derived from the `protocol`. When set to "http" or "https", Spectrum will apply Cloudflare's HTTP/HTTPS features as it sends traffic to your origin, and the application type matches this property exactly.
final SpectrumConfigTrafficType trafficType;

Map<String, dynamic> toJson() {return {
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
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('dns') &&
      json.containsKey('protocol') &&
      json.containsKey('traffic_type');}
SpectrumConfigAppConfigRequest copyWith({SpectrumConfigArgoSmartRouting? Function()? argoSmartRouting, SpectrumConfigDns? dns, SpectrumConfigEdgeIps? Function()? edgeIps, SpectrumConfigIpFirewall? Function()? ipFirewall, List<String>? Function()? originDirect, SpectrumConfigOriginDns? Function()? originDns, SpectrumConfigOriginPort? Function()? originPort, SpectrumConfigProtocol? protocol, SpectrumConfigProxyProtocol? Function()? proxyProtocol, SpectrumConfigTls? Function()? tls, SpectrumConfigTrafficType? trafficType, }) {return SpectrumConfigAppConfigRequest(
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
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is SpectrumConfigAppConfigRequest &&
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
          trafficType == other.trafficType;}
@override int get hashCode {return Object.hash(argoSmartRouting, dns, edgeIps, ipFirewall, Object.hashAll(originDirect ?? const []), originDns, originPort, protocol, proxyProtocol, tls, trafficType);}
@override String toString() {return 'SpectrumConfigAppConfigRequest(argoSmartRouting: $argoSmartRouting, dns: $dns, edgeIps: $edgeIps, ipFirewall: $ipFirewall, originDirect: $originDirect, originDns: $originDns, originPort: $originPort, protocol: $protocol, proxyProtocol: $proxyProtocol, tls: $tls, trafficType: $trafficType)';}
}
