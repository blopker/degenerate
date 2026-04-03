// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_port.dart';/// The communication protocol your application secures.
@immutable final class AccessProtocolSelfHostedApp {const AccessProtocolSelfHostedApp._(this.value);

factory AccessProtocolSelfHostedApp.fromJson(String json) { return switch (json) {
  'RDP' => rdp,
  _ => AccessProtocolSelfHostedApp._(json),
}; }

static const AccessProtocolSelfHostedApp rdp = AccessProtocolSelfHostedApp._('RDP');

static const List<AccessProtocolSelfHostedApp> values = [rdp];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessProtocolSelfHostedApp && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccessProtocolSelfHostedApp($value)'; } 
 }
@immutable final class AccessTargetCriteriaSelfHostedApp {const AccessTargetCriteriaSelfHostedApp({required this.port, required this.targetAttributes, required this.protocol, });

factory AccessTargetCriteriaSelfHostedApp.fromJson(Map<String, dynamic> json) { return AccessTargetCriteriaSelfHostedApp(
  port: AccessPort.fromJson(json['port'] as num),
  targetAttributes: (json['target_attributes'] as Map<String, dynamic>).map((k, v) => MapEntry(k, (v as List<dynamic>).map((e) => e as String).toList())),
  protocol: AccessProtocolSelfHostedApp.fromJson(json['protocol'] as String),
); }

/// The port that the targets use for the chosen communication protocol. A port cannot be assigned to multiple protocols.
final AccessPort port;

/// Contains a map of target attribute keys to target attribute values.
final Map<String,List<String>> targetAttributes;

/// The communication protocol your application secures.
final AccessProtocolSelfHostedApp protocol;

Map<String, dynamic> toJson() { return {
  'port': port.toJson(),
  'target_attributes': targetAttributes.map((k, v) => MapEntry(k, v)),
  'protocol': protocol.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('port') &&
      json.containsKey('target_attributes') &&
      json.containsKey('protocol'); } 
AccessTargetCriteriaSelfHostedApp copyWith({AccessPort? port, Map<String,List<String>>? targetAttributes, AccessProtocolSelfHostedApp? protocol, }) { return AccessTargetCriteriaSelfHostedApp(
  port: port ?? this.port,
  targetAttributes: targetAttributes ?? this.targetAttributes,
  protocol: protocol ?? this.protocol,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessTargetCriteriaSelfHostedApp &&
          port == other.port &&
          targetAttributes == other.targetAttributes &&
          protocol == other.protocol; } 
@override int get hashCode { return Object.hash(port, targetAttributes, protocol); } 
@override String toString() { return 'AccessTargetCriteriaSelfHostedApp(port: $port, targetAttributes: $targetAttributes, protocol: $protocol)'; } 
 }
