// GENERATED CODE - DO NOT MODIFY BY HAND

/// Max TTL.
extension type const MagicTransitMaxTtl(int value) {
factory MagicTransitMaxTtl.fromJson(num json) => MagicTransitMaxTtl(json.toInt());

num toJson() => value;

}
/// Type of packet sent.
final class MagicTransitPacketType {const MagicTransitPacketType._(this.value);

factory MagicTransitPacketType.fromJson(String json) { return switch (json) {
  'icmp' => icmp,
  'tcp' => tcp,
  'udp' => udp,
  'gre' => gre,
  'gre+icmp' => greicmp,
  _ => MagicTransitPacketType._(json),
}; }

static const MagicTransitPacketType icmp = MagicTransitPacketType._('icmp');

static const MagicTransitPacketType tcp = MagicTransitPacketType._('tcp');

static const MagicTransitPacketType udp = MagicTransitPacketType._('udp');

static const MagicTransitPacketType gre = MagicTransitPacketType._('gre');

static const MagicTransitPacketType greicmp = MagicTransitPacketType._('gre+icmp');

static const List<MagicTransitPacketType> values = [icmp, tcp, udp, gre, greicmp];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MagicTransitPacketType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MagicTransitPacketType($value)'; } 
 }
/// Number of packets sent at each TTL.
extension type const MagicTransitPacketsPerTtl(int value) {
factory MagicTransitPacketsPerTtl.fromJson(num json) => MagicTransitPacketsPerTtl(json.toInt());

num toJson() => value;

}
/// For UDP and TCP, specifies the destination port. For ICMP, specifies the initial ICMP sequence value. Default value 0 will choose the best value to use for each protocol.
extension type const MagicTransitPort(int value) {
factory MagicTransitPort.fromJson(num json) => MagicTransitPort(json.toInt());

num toJson() => value;

}
/// Set the time (in seconds) to wait for a response to a probe.
extension type const MagicTransitWaitTime(int value) {
factory MagicTransitWaitTime.fromJson(num json) => MagicTransitWaitTime(json.toInt());

num toJson() => value;

}
final class MagicTransitOptions {const MagicTransitOptions({this.maxTtl, this.packetType, this.packetsPerTtl, this.port, this.waitTime, });

factory MagicTransitOptions.fromJson(Map<String, dynamic> json) { return MagicTransitOptions(
  maxTtl: json['max_ttl'] != null ? MagicTransitMaxTtl.fromJson(json['max_ttl'] as num) : null,
  packetType: json['packet_type'] != null ? MagicTransitPacketType.fromJson(json['packet_type'] as String) : null,
  packetsPerTtl: json['packets_per_ttl'] != null ? MagicTransitPacketsPerTtl.fromJson(json['packets_per_ttl'] as num) : null,
  port: json['port'] != null ? MagicTransitPort.fromJson(json['port'] as num) : null,
  waitTime: json['wait_time'] != null ? MagicTransitWaitTime.fromJson(json['wait_time'] as num) : null,
); }

/// Max TTL.
final MagicTransitMaxTtl? maxTtl;

final MagicTransitPacketType? packetType;

final MagicTransitPacketsPerTtl? packetsPerTtl;

final MagicTransitPort? port;

final MagicTransitWaitTime? waitTime;

Map<String, dynamic> toJson() { return {
  if (maxTtl != null) 'max_ttl': maxTtl?.toJson(),
  if (packetType != null) 'packet_type': packetType?.toJson(),
  if (packetsPerTtl != null) 'packets_per_ttl': packetsPerTtl?.toJson(),
  if (port != null) 'port': port?.toJson(),
  if (waitTime != null) 'wait_time': waitTime?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
MagicTransitOptions copyWith({MagicTransitMaxTtl Function()? maxTtl, MagicTransitPacketType Function()? packetType, MagicTransitPacketsPerTtl Function()? packetsPerTtl, MagicTransitPort Function()? port, MagicTransitWaitTime Function()? waitTime, }) { return MagicTransitOptions(
  maxTtl: maxTtl != null ? maxTtl() : this.maxTtl,
  packetType: packetType != null ? packetType() : this.packetType,
  packetsPerTtl: packetsPerTtl != null ? packetsPerTtl() : this.packetsPerTtl,
  port: port != null ? port() : this.port,
  waitTime: waitTime != null ? waitTime() : this.waitTime,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicTransitOptions &&
          maxTtl == other.maxTtl &&
          packetType == other.packetType &&
          packetsPerTtl == other.packetsPerTtl &&
          port == other.port &&
          waitTime == other.waitTime; } 
@override int get hashCode { return Object.hash(maxTtl, packetType, packetsPerTtl, port, waitTime); } 
@override String toString() { return 'MagicTransitOptions(maxTtl: $maxTtl, packetType: $packetType, packetsPerTtl: $packetsPerTtl, port: $port, waitTime: $waitTime)'; } 
 }
