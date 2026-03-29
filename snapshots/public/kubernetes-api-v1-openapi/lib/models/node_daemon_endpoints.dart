// GENERATED CODE - DO NOT MODIFY BY HAND

import 'daemon_endpoint.dart';/// NodeDaemonEndpoints lists ports opened by daemons running on the Node.
final class NodeDaemonEndpoints {const NodeDaemonEndpoints({this.kubeletEndpoint});

factory NodeDaemonEndpoints.fromJson(Map<String, dynamic> json) { return NodeDaemonEndpoints(
  kubeletEndpoint: json['kubeletEndpoint'] != null ? DaemonEndpoint.fromJson(json['kubeletEndpoint'] as Map<String, dynamic>) : null,
); }

/// Endpoint on which Kubelet is listening.
final DaemonEndpoint? kubeletEndpoint;

Map<String, dynamic> toJson() { return {
  if (kubeletEndpoint != null) 'kubeletEndpoint': kubeletEndpoint?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'kubeletEndpoint'}.contains(key)); } 
NodeDaemonEndpoints copyWith({DaemonEndpoint Function()? kubeletEndpoint}) { return NodeDaemonEndpoints(
  kubeletEndpoint: kubeletEndpoint != null ? kubeletEndpoint() : this.kubeletEndpoint,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is NodeDaemonEndpoints &&
          kubeletEndpoint == other.kubeletEndpoint; } 
@override int get hashCode { return kubeletEndpoint.hashCode; } 
@override String toString() { return 'NodeDaemonEndpoints(kubeletEndpoint: $kubeletEndpoint)'; } 
 }
