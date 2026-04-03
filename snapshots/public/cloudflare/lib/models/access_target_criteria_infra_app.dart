// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_port.dart';/// The communication protocol your application secures.
@immutable final class AccessProtocolInfraApp {const AccessProtocolInfraApp._(this.value);

factory AccessProtocolInfraApp.fromJson(String json) { return switch (json) {
  'SSH' => ssh,
  _ => AccessProtocolInfraApp._(json),
}; }

static const AccessProtocolInfraApp ssh = AccessProtocolInfraApp._('SSH');

static const List<AccessProtocolInfraApp> values = [ssh];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessProtocolInfraApp && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccessProtocolInfraApp($value)'; } 
 }
@immutable final class AccessTargetCriteriaInfraApp {const AccessTargetCriteriaInfraApp({required this.port, required this.targetAttributes, required this.protocol, });

factory AccessTargetCriteriaInfraApp.fromJson(Map<String, dynamic> json) { return AccessTargetCriteriaInfraApp(
  port: AccessPort.fromJson(json['port'] as num),
  targetAttributes: (json['target_attributes'] as Map<String, dynamic>).map((k, v) => MapEntry(k, (v as List<dynamic>).map((e) => e as String).toList())),
  protocol: AccessProtocolInfraApp.fromJson(json['protocol'] as String),
); }

/// The port that the targets use for the chosen communication protocol. A port cannot be assigned to multiple protocols.
final AccessPort port;

/// Contains a map of target attribute keys to target attribute values.
final Map<String,List<String>> targetAttributes;

/// The communication protocol your application secures.
final AccessProtocolInfraApp protocol;

Map<String, dynamic> toJson() { return {
  'port': port.toJson(),
  'target_attributes': targetAttributes.map((k, v) => MapEntry(k, v)),
  'protocol': protocol.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('port') &&
      json.containsKey('target_attributes') &&
      json.containsKey('protocol'); } 
AccessTargetCriteriaInfraApp copyWith({AccessPort? port, Map<String,List<String>>? targetAttributes, AccessProtocolInfraApp? protocol, }) { return AccessTargetCriteriaInfraApp(
  port: port ?? this.port,
  targetAttributes: targetAttributes ?? this.targetAttributes,
  protocol: protocol ?? this.protocol,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessTargetCriteriaInfraApp &&
          port == other.port &&
          targetAttributes == other.targetAttributes &&
          protocol == other.protocol; } 
@override int get hashCode { return Object.hash(port, targetAttributes, protocol); } 
@override String toString() { return 'AccessTargetCriteriaInfraApp(port: $port, targetAttributes: $targetAttributes, protocol: $protocol)'; } 
 }
