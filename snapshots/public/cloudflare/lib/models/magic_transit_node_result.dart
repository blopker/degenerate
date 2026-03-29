// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// AS number associated with the node object.
extension type const MagicTransitAsn(String value) {
factory MagicTransitAsn.fromJson(String json) => MagicTransitAsn(json);

String toJson() => value;

}
/// IP address of the node.
extension type const MagicTransitIp(String value) {
factory MagicTransitIp.fromJson(String json) => MagicTransitIp(json);

String toJson() => value;

}
/// Maximum RTT in ms.
extension type const MagicTransitMaxRttMs(double value) {
factory MagicTransitMaxRttMs.fromJson(num json) => MagicTransitMaxRttMs(json.toDouble());

num toJson() => value;

}
/// Mean RTT in ms.
extension type const MagicTransitMeanRttMs(double value) {
factory MagicTransitMeanRttMs.fromJson(num json) => MagicTransitMeanRttMs(json.toDouble());

num toJson() => value;

}
/// Minimum RTT in ms.
extension type const MagicTransitMinRttMs(double value) {
factory MagicTransitMinRttMs.fromJson(num json) => MagicTransitMinRttMs(json.toDouble());

num toJson() => value;

}
/// Host name of the address, this may be the same as the IP address.
extension type const MagicTransitName(String value) {
factory MagicTransitName.fromJson(String json) => MagicTransitName(json);

String toJson() => value;

}
/// Number of packets with a response from this node.
extension type const MagicTransitPacketCount(int value) {
factory MagicTransitPacketCount.fromJson(num json) => MagicTransitPacketCount(json.toInt());

num toJson() => value;

}
/// Standard deviation of the RTTs in ms.
extension type const MagicTransitStdDevRttMs(double value) {
factory MagicTransitStdDevRttMs.fromJson(num json) => MagicTransitStdDevRttMs(json.toDouble());

num toJson() => value;

}
final class MagicTransitNodeResult {const MagicTransitNodeResult({this.asn, this.ip, this.labels, this.maxRttMs, this.meanRttMs, this.minRttMs, this.name, this.packetCount, this.stdDevRttMs, });

factory MagicTransitNodeResult.fromJson(Map<String, dynamic> json) { return MagicTransitNodeResult(
  asn: json['asn'] != null ? MagicTransitAsn.fromJson(json['asn'] as String) : null,
  ip: json['ip'] != null ? MagicTransitIp.fromJson(json['ip'] as String) : null,
  labels: (json['labels'] as List<dynamic>?)?.map((e) => e as String).toList(),
  maxRttMs: json['max_rtt_ms'] != null ? MagicTransitMaxRttMs.fromJson(json['max_rtt_ms'] as num) : null,
  meanRttMs: json['mean_rtt_ms'] != null ? MagicTransitMeanRttMs.fromJson(json['mean_rtt_ms'] as num) : null,
  minRttMs: json['min_rtt_ms'] != null ? MagicTransitMinRttMs.fromJson(json['min_rtt_ms'] as num) : null,
  name: json['name'] != null ? MagicTransitName.fromJson(json['name'] as String) : null,
  packetCount: json['packet_count'] != null ? MagicTransitPacketCount.fromJson(json['packet_count'] as num) : null,
  stdDevRttMs: json['std_dev_rtt_ms'] != null ? MagicTransitStdDevRttMs.fromJson(json['std_dev_rtt_ms'] as num) : null,
); }

/// AS number associated with the node object.
final MagicTransitAsn? asn;

/// IP address of the node.
final MagicTransitIp? ip;

/// Field appears if there is an additional annotation printed when the probe returns. Field also appears when running a GRE+ICMP traceroute to denote which traceroute a node comes from.
final List<String>? labels;

/// Maximum RTT in ms.
final MagicTransitMaxRttMs? maxRttMs;

/// Mean RTT in ms.
final MagicTransitMeanRttMs? meanRttMs;

/// Minimum RTT in ms.
final MagicTransitMinRttMs? minRttMs;

/// Host name of the address, this may be the same as the IP address.
final MagicTransitName? name;

final MagicTransitPacketCount? packetCount;

final MagicTransitStdDevRttMs? stdDevRttMs;

Map<String, dynamic> toJson() { return {
  if (asn != null) 'asn': asn?.toJson(),
  if (ip != null) 'ip': ip?.toJson(),
  'labels': ?labels,
  if (maxRttMs != null) 'max_rtt_ms': maxRttMs?.toJson(),
  if (meanRttMs != null) 'mean_rtt_ms': meanRttMs?.toJson(),
  if (minRttMs != null) 'min_rtt_ms': minRttMs?.toJson(),
  if (name != null) 'name': name?.toJson(),
  if (packetCount != null) 'packet_count': packetCount?.toJson(),
  if (stdDevRttMs != null) 'std_dev_rtt_ms': stdDevRttMs?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
MagicTransitNodeResult copyWith({MagicTransitAsn Function()? asn, MagicTransitIp Function()? ip, List<String> Function()? labels, MagicTransitMaxRttMs Function()? maxRttMs, MagicTransitMeanRttMs Function()? meanRttMs, MagicTransitMinRttMs Function()? minRttMs, MagicTransitName Function()? name, MagicTransitPacketCount Function()? packetCount, MagicTransitStdDevRttMs Function()? stdDevRttMs, }) { return MagicTransitNodeResult(
  asn: asn != null ? asn() : this.asn,
  ip: ip != null ? ip() : this.ip,
  labels: labels != null ? labels() : this.labels,
  maxRttMs: maxRttMs != null ? maxRttMs() : this.maxRttMs,
  meanRttMs: meanRttMs != null ? meanRttMs() : this.meanRttMs,
  minRttMs: minRttMs != null ? minRttMs() : this.minRttMs,
  name: name != null ? name() : this.name,
  packetCount: packetCount != null ? packetCount() : this.packetCount,
  stdDevRttMs: stdDevRttMs != null ? stdDevRttMs() : this.stdDevRttMs,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicTransitNodeResult &&
          asn == other.asn &&
          ip == other.ip &&
          listEquals(labels, other.labels) &&
          maxRttMs == other.maxRttMs &&
          meanRttMs == other.meanRttMs &&
          minRttMs == other.minRttMs &&
          name == other.name &&
          packetCount == other.packetCount &&
          stdDevRttMs == other.stdDevRttMs; } 
@override int get hashCode { return Object.hash(asn, ip, Object.hashAll(labels ?? const []), maxRttMs, meanRttMs, minRttMs, name, packetCount, stdDevRttMs); } 
@override String toString() { return 'MagicTransitNodeResult(asn: $asn, ip: $ip, labels: $labels, maxRttMs: $maxRttMs, meanRttMs: $meanRttMs, minRttMs: $minRttMs, name: $name, packetCount: $packetCount, stdDevRttMs: $stdDevRttMs)'; } 
 }
