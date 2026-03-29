// GENERATED CODE - DO NOT MODIFY BY HAND

/// The L4 protocol of the destination. When omitted, both UDP and TCP traffic will match.
final class PrivateDestinationL4Protocol {const PrivateDestinationL4Protocol._(this.value);

factory PrivateDestinationL4Protocol.fromJson(String json) { return switch (json) {
  'tcp' => tcp,
  'udp' => udp,
  _ => PrivateDestinationL4Protocol._(json),
}; }

static const PrivateDestinationL4Protocol tcp = PrivateDestinationL4Protocol._('tcp');

static const PrivateDestinationL4Protocol udp = PrivateDestinationL4Protocol._('udp');

static const List<PrivateDestinationL4Protocol> values = [tcp, udp];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PrivateDestinationL4Protocol && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PrivateDestinationL4Protocol($value)'; } 
 }
final class PrivateDestinationType {const PrivateDestinationType._(this.value);

factory PrivateDestinationType.fromJson(String json) { return switch (json) {
  'private' => private,
  _ => PrivateDestinationType._(json),
}; }

static const PrivateDestinationType private = PrivateDestinationType._('private');

static const List<PrivateDestinationType> values = [private];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PrivateDestinationType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PrivateDestinationType($value)'; } 
 }
final class PrivateDestination {const PrivateDestination({this.cidr, this.hostname, this.l4Protocol, this.portRange, this.type, this.vnetId, });

factory PrivateDestination.fromJson(Map<String, dynamic> json) { return PrivateDestination(
  cidr: json['cidr'] as String?,
  hostname: json['hostname'] as String?,
  l4Protocol: json['l4_protocol'] != null ? PrivateDestinationL4Protocol.fromJson(json['l4_protocol'] as String) : null,
  portRange: json['port_range'] as String?,
  type: json['type'] != null ? PrivateDestinationType.fromJson(json['type'] as String) : null,
  vnetId: json['vnet_id'] as String?,
); }

/// The CIDR range of the destination. Single IPs will be computed as /32.
final String? cidr;

/// The hostname of the destination. Matches a valid SNI served by an HTTPS origin.
final String? hostname;

/// The L4 protocol of the destination. When omitted, both UDP and TCP traffic will match.
final PrivateDestinationL4Protocol? l4Protocol;

/// The port range of the destination. Can be a single port or a range of ports. When omitted, all ports will match.
/// 
final String? portRange;

final PrivateDestinationType? type;

/// The VNET ID to match the destination. When omitted, all VNETs will match.
final String? vnetId;

Map<String, dynamic> toJson() { return {
  'cidr': ?cidr,
  'hostname': ?hostname,
  if (l4Protocol != null) 'l4_protocol': l4Protocol?.toJson(),
  'port_range': ?portRange,
  if (type != null) 'type': type?.toJson(),
  'vnet_id': ?vnetId,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PrivateDestination copyWith({String Function()? cidr, String Function()? hostname, PrivateDestinationL4Protocol Function()? l4Protocol, String Function()? portRange, PrivateDestinationType Function()? type, String Function()? vnetId, }) { return PrivateDestination(
  cidr: cidr != null ? cidr() : this.cidr,
  hostname: hostname != null ? hostname() : this.hostname,
  l4Protocol: l4Protocol != null ? l4Protocol() : this.l4Protocol,
  portRange: portRange != null ? portRange() : this.portRange,
  type: type != null ? type() : this.type,
  vnetId: vnetId != null ? vnetId() : this.vnetId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PrivateDestination &&
          cidr == other.cidr &&
          hostname == other.hostname &&
          l4Protocol == other.l4Protocol &&
          portRange == other.portRange &&
          type == other.type &&
          vnetId == other.vnetId; } 
@override int get hashCode { return Object.hash(cidr, hostname, l4Protocol, portRange, type, vnetId); } 
@override String toString() { return 'PrivateDestination(cidr: $cidr, hostname: $hostname, l4Protocol: $l4Protocol, portRange: $portRange, type: $type, vnetId: $vnetId)'; } 
 }
