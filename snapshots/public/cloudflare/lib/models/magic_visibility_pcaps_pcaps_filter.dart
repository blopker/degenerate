// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The packet capture filter. When this field is empty, all packets are captured.
@immutable final class MagicVisibilityPcapsPcapsFilter {const MagicVisibilityPcapsPcapsFilter({this.destinationAddress, this.destinationPort, this.protocol, this.sourceAddress, this.sourcePort, });

factory MagicVisibilityPcapsPcapsFilter.fromJson(Map<String, dynamic> json) { return MagicVisibilityPcapsPcapsFilter(
  destinationAddress: json['destination_address'] as String?,
  destinationPort: json['destination_port'] != null ? (json['destination_port'] as num).toDouble() : null,
  protocol: json['protocol'] != null ? (json['protocol'] as num).toDouble() : null,
  sourceAddress: json['source_address'] as String?,
  sourcePort: json['source_port'] != null ? (json['source_port'] as num).toDouble() : null,
); }

/// The destination IP address of the packet.
final String? destinationAddress;

/// The destination port of the packet.
final double? destinationPort;

/// The protocol number of the packet.
final double? protocol;

/// The source IP address of the packet.
final String? sourceAddress;

/// The source port of the packet.
final double? sourcePort;

Map<String, dynamic> toJson() { return {
  'destination_address': ?destinationAddress,
  'destination_port': ?destinationPort,
  'protocol': ?protocol,
  'source_address': ?sourceAddress,
  'source_port': ?sourcePort,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'destination_address', 'destination_port', 'protocol', 'source_address', 'source_port'}.contains(key)); } 
MagicVisibilityPcapsPcapsFilter copyWith({String Function()? destinationAddress, double Function()? destinationPort, double Function()? protocol, String Function()? sourceAddress, double Function()? sourcePort, }) { return MagicVisibilityPcapsPcapsFilter(
  destinationAddress: destinationAddress != null ? destinationAddress() : this.destinationAddress,
  destinationPort: destinationPort != null ? destinationPort() : this.destinationPort,
  protocol: protocol != null ? protocol() : this.protocol,
  sourceAddress: sourceAddress != null ? sourceAddress() : this.sourceAddress,
  sourcePort: sourcePort != null ? sourcePort() : this.sourcePort,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicVisibilityPcapsPcapsFilter &&
          destinationAddress == other.destinationAddress &&
          destinationPort == other.destinationPort &&
          protocol == other.protocol &&
          sourceAddress == other.sourceAddress &&
          sourcePort == other.sourcePort; } 
@override int get hashCode { return Object.hash(destinationAddress, destinationPort, protocol, sourceAddress, sourcePort); } 
@override String toString() { return 'MagicVisibilityPcapsPcapsFilter(destinationAddress: $destinationAddress, destinationPort: $destinationPort, protocol: $protocol, sourceAddress: $sourceAddress, sourcePort: $sourcePort)'; } 
 }
