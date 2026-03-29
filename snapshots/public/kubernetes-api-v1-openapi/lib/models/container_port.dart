// GENERATED CODE - DO NOT MODIFY BY HAND

/// ContainerPort represents a network port in a single container.
final class ContainerPort {const ContainerPort({this.containerPort = 0, this.hostIp, this.hostPort, this.name, this.protocol = 'TCP', });

factory ContainerPort.fromJson(Map<String, dynamic> json) { return ContainerPort(
  containerPort: (json['containerPort'] as num).toInt(),
  hostIp: json['hostIP'] as String?,
  hostPort: json['hostPort'] != null ? (json['hostPort'] as num).toInt() : null,
  name: json['name'] as String?,
  protocol: json.containsKey('protocol') ? json['protocol'] as String : 'TCP',
); }

/// Number of port to expose on the pod's IP address. This must be a valid port number, 0 < x < 65536.
final int containerPort;

/// What host IP to bind the external port to.
final String? hostIp;

/// Number of port to expose on the host. If specified, this must be a valid port number, 0 < x < 65536. If HostNetwork is specified, this must match ContainerPort. Most containers do not need this.
final int? hostPort;

/// If specified, this must be an IANA_SVC_NAME and unique within the pod. Each named port in a pod must have a unique name. Name for the port that can be referred to by services.
final String? name;

/// Protocol for port. Must be UDP, TCP, or SCTP. Defaults to "TCP".
final String protocol;

Map<String, dynamic> toJson() { return {
  'containerPort': containerPort,
  'hostIP': ?hostIp,
  'hostPort': ?hostPort,
  'name': ?name,
  'protocol': protocol,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('containerPort') && json['containerPort'] is num; } 
ContainerPort copyWith({int? containerPort, String Function()? hostIp, int Function()? hostPort, String Function()? name, String Function()? protocol, }) { return ContainerPort(
  containerPort: containerPort ?? this.containerPort,
  hostIp: hostIp != null ? hostIp() : this.hostIp,
  hostPort: hostPort != null ? hostPort() : this.hostPort,
  name: name != null ? name() : this.name,
  protocol: protocol != null ? protocol() : this.protocol,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ContainerPort &&
          containerPort == other.containerPort &&
          hostIp == other.hostIp &&
          hostPort == other.hostPort &&
          name == other.name &&
          protocol == other.protocol; } 
@override int get hashCode { return Object.hash(containerPort, hostIp, hostPort, name, protocol); } 
@override String toString() { return 'ContainerPort(containerPort: $containerPort, hostIp: $hostIp, hostPort: $hostPort, name: $name, protocol: $protocol)'; } 
 }
