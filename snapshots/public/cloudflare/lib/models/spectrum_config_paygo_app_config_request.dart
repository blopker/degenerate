// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'spectrum_config_dns.dart';import 'spectrum_config_protocol.dart';@immutable final class SpectrumConfigPaygoAppConfigRequest {const SpectrumConfigPaygoAppConfigRequest({required this.dns, required this.protocol, this.originDirect, });

factory SpectrumConfigPaygoAppConfigRequest.fromJson(Map<String, dynamic> json) { return SpectrumConfigPaygoAppConfigRequest(
  dns: SpectrumConfigDns.fromJson(json['dns'] as Map<String, dynamic>),
  originDirect: (json['origin_direct'] as List<dynamic>?)?.map((e) => e as String).toList(),
  protocol: SpectrumConfigProtocol.fromJson(json['protocol'] as String),
); }

final SpectrumConfigDns dns;

/// List of origin IP addresses. Array may contain multiple IP addresses for load balancing.
final List<String>? originDirect;

/// The port configuration at Cloudflare's edge. May specify a single port, for example `"tcp/1000"`, or a range of ports, for example `"tcp/1000-2000"`.
final SpectrumConfigProtocol protocol;

Map<String, dynamic> toJson() { return {
  'dns': dns.toJson(),
  'origin_direct': ?originDirect,
  'protocol': protocol.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('dns') &&
      json.containsKey('protocol'); } 
SpectrumConfigPaygoAppConfigRequest copyWith({SpectrumConfigDns? dns, List<String>? Function()? originDirect, SpectrumConfigProtocol? protocol, }) { return SpectrumConfigPaygoAppConfigRequest(
  dns: dns ?? this.dns,
  originDirect: originDirect != null ? originDirect() : this.originDirect,
  protocol: protocol ?? this.protocol,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SpectrumConfigPaygoAppConfigRequest &&
          dns == other.dns &&
          listEquals(originDirect, other.originDirect) &&
          protocol == other.protocol; } 
@override int get hashCode { return Object.hash(dns, Object.hashAll(originDirect ?? const []), protocol); } 
@override String toString() { return 'SpectrumConfigPaygoAppConfigRequest(dns: $dns, originDirect: $originDirect, protocol: $protocol)'; } 
 }
