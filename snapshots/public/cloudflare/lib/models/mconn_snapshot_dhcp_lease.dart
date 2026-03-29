// GENERATED CODE - DO NOT MODIFY BY HAND

/// Snapshot DHCP lease
final class MconnSnapshotDhcpLease {const MconnSnapshotDhcpLease({required this.clientId, this.connectorId, required this.expiryTime, required this.hostname, required this.interfaceName, required this.ipAddress, required this.macAddress, });

factory MconnSnapshotDhcpLease.fromJson(Map<String, dynamic> json) { return MconnSnapshotDhcpLease(
  clientId: json['client_id'] as String,
  connectorId: json['connector_id'] as String?,
  expiryTime: (json['expiry_time'] as num).toDouble(),
  hostname: json['hostname'] as String,
  interfaceName: json['interface_name'] as String,
  ipAddress: json['ip_address'] as String,
  macAddress: json['mac_address'] as String,
); }

/// Client ID of the device the IP Address was leased to
final String clientId;

/// Connector identifier
final String? connectorId;

/// Expiry time of the DHCP lease (seconds since the Unix epoch)
final double expiryTime;

/// Hostname of the device the IP Address was leased to
final String hostname;

/// Name of the network interface
final String interfaceName;

/// IP Address that was leased
final String ipAddress;

/// MAC Address of the device the IP Address was leased to
final String macAddress;

Map<String, dynamic> toJson() { return {
  'client_id': clientId,
  'connector_id': ?connectorId,
  'expiry_time': expiryTime,
  'hostname': hostname,
  'interface_name': interfaceName,
  'ip_address': ipAddress,
  'mac_address': macAddress,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('client_id') && json['client_id'] is String &&
      json.containsKey('expiry_time') && json['expiry_time'] is num &&
      json.containsKey('hostname') && json['hostname'] is String &&
      json.containsKey('interface_name') && json['interface_name'] is String &&
      json.containsKey('ip_address') && json['ip_address'] is String &&
      json.containsKey('mac_address') && json['mac_address'] is String; } 
MconnSnapshotDhcpLease copyWith({String? clientId, String Function()? connectorId, double? expiryTime, String? hostname, String? interfaceName, String? ipAddress, String? macAddress, }) { return MconnSnapshotDhcpLease(
  clientId: clientId ?? this.clientId,
  connectorId: connectorId != null ? connectorId() : this.connectorId,
  expiryTime: expiryTime ?? this.expiryTime,
  hostname: hostname ?? this.hostname,
  interfaceName: interfaceName ?? this.interfaceName,
  ipAddress: ipAddress ?? this.ipAddress,
  macAddress: macAddress ?? this.macAddress,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnSnapshotDhcpLease &&
          clientId == other.clientId &&
          connectorId == other.connectorId &&
          expiryTime == other.expiryTime &&
          hostname == other.hostname &&
          interfaceName == other.interfaceName &&
          ipAddress == other.ipAddress &&
          macAddress == other.macAddress; } 
@override int get hashCode { return Object.hash(clientId, connectorId, expiryTime, hostname, interfaceName, ipAddress, macAddress); } 
@override String toString() { return 'MconnSnapshotDhcpLease(clientId: $clientId, connectorId: $connectorId, expiryTime: $expiryTime, hostname: $hostname, interfaceName: $interfaceName, ipAddress: $ipAddress, macAddress: $macAddress)'; } 
 }
