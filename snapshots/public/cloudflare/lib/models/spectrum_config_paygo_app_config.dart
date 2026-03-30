// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'spectrum_config_dns.dart';import 'spectrum_config_identifier.dart';import 'spectrum_config_protocol.dart';import 'spectrum_config_timestamp.dart';final class SpectrumConfigPaygoAppConfig {const SpectrumConfigPaygoAppConfig({required this.createdOn, required this.id, required this.modifiedOn, required this.dns, this.originDirect, required this.protocol, });

factory SpectrumConfigPaygoAppConfig.fromJson(Map<String, dynamic> json) { return SpectrumConfigPaygoAppConfig(
  createdOn: SpectrumConfigTimestamp.fromJson(json['created_on'] as String),
  id: SpectrumConfigIdentifier.fromJson(json['id'] as String),
  modifiedOn: SpectrumConfigTimestamp.fromJson(json['modified_on'] as String),
  dns: SpectrumConfigDns.fromJson(json['dns'] as Map<String, dynamic>),
  originDirect: (json['origin_direct'] as List<dynamic>?)?.map((e) => e as String).toList(),
  protocol: SpectrumConfigProtocol.fromJson(json['protocol'] as String),
); }

/// When the Application was created.
final SpectrumConfigTimestamp createdOn;

/// Identifier.
final SpectrumConfigIdentifier id;

/// When the Application was last modified.
final SpectrumConfigTimestamp modifiedOn;

final SpectrumConfigDns dns;

/// List of origin IP addresses. Array may contain multiple IP addresses for load balancing.
final List<String>? originDirect;

final SpectrumConfigProtocol protocol;

Map<String, dynamic> toJson() { return {
  'created_on': createdOn.toJson(),
  'id': id.toJson(),
  'modified_on': modifiedOn.toJson(),
  'dns': dns.toJson(),
  'origin_direct': ?originDirect,
  'protocol': protocol.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('created_on') &&
      json.containsKey('id') &&
      json.containsKey('modified_on') &&
      json.containsKey('dns') &&
      json.containsKey('protocol'); } 
SpectrumConfigPaygoAppConfig copyWith({SpectrumConfigTimestamp? createdOn, SpectrumConfigIdentifier? id, SpectrumConfigTimestamp? modifiedOn, SpectrumConfigDns? dns, List<String> Function()? originDirect, SpectrumConfigProtocol? protocol, }) { return SpectrumConfigPaygoAppConfig(
  createdOn: createdOn ?? this.createdOn,
  id: id ?? this.id,
  modifiedOn: modifiedOn ?? this.modifiedOn,
  dns: dns ?? this.dns,
  originDirect: originDirect != null ? originDirect() : this.originDirect,
  protocol: protocol ?? this.protocol,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SpectrumConfigPaygoAppConfig &&
          createdOn == other.createdOn &&
          id == other.id &&
          modifiedOn == other.modifiedOn &&
          dns == other.dns &&
          listEquals(originDirect, other.originDirect) &&
          protocol == other.protocol; } 
@override int get hashCode { return Object.hash(createdOn, id, modifiedOn, dns, Object.hashAll(originDirect ?? const []), protocol); } 
@override String toString() { return 'SpectrumConfigPaygoAppConfig(createdOn: $createdOn, id: $id, modifiedOn: $modifiedOn, dns: $dns, originDirect: $originDirect, protocol: $protocol)'; } 
 }
