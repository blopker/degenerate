// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'node_affinity.dart';import 'pod_affinity.dart';import 'pod_anti_affinity.dart';/// Affinity is a group of affinity scheduling rules.
@immutable final class Affinity {const Affinity({this.nodeAffinity, this.podAffinity, this.podAntiAffinity, });

factory Affinity.fromJson(Map<String, dynamic> json) { return Affinity(
  nodeAffinity: json['nodeAffinity'] != null ? NodeAffinity.fromJson(json['nodeAffinity'] as Map<String, dynamic>) : null,
  podAffinity: json['podAffinity'] != null ? PodAffinity.fromJson(json['podAffinity'] as Map<String, dynamic>) : null,
  podAntiAffinity: json['podAntiAffinity'] != null ? PodAntiAffinity.fromJson(json['podAntiAffinity'] as Map<String, dynamic>) : null,
); }

/// Describes node affinity scheduling rules for the pod.
final NodeAffinity? nodeAffinity;

/// Describes pod affinity scheduling rules (e.g. co-locate this pod in the same node, zone, etc. as some other pod(s)).
final PodAffinity? podAffinity;

/// Describes pod anti-affinity scheduling rules (e.g. avoid putting this pod in the same node, zone, etc. as some other pod(s)).
final PodAntiAffinity? podAntiAffinity;

Map<String, dynamic> toJson() { return {
  if (nodeAffinity != null) 'nodeAffinity': nodeAffinity?.toJson(),
  if (podAffinity != null) 'podAffinity': podAffinity?.toJson(),
  if (podAntiAffinity != null) 'podAntiAffinity': podAntiAffinity?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'nodeAffinity', 'podAffinity', 'podAntiAffinity'}.contains(key)); } 
Affinity copyWith({NodeAffinity Function()? nodeAffinity, PodAffinity Function()? podAffinity, PodAntiAffinity Function()? podAntiAffinity, }) { return Affinity(
  nodeAffinity: nodeAffinity != null ? nodeAffinity() : this.nodeAffinity,
  podAffinity: podAffinity != null ? podAffinity() : this.podAffinity,
  podAntiAffinity: podAntiAffinity != null ? podAntiAffinity() : this.podAntiAffinity,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Affinity &&
          nodeAffinity == other.nodeAffinity &&
          podAffinity == other.podAffinity &&
          podAntiAffinity == other.podAntiAffinity; } 
@override int get hashCode { return Object.hash(nodeAffinity, podAffinity, podAntiAffinity); } 
@override String toString() { return 'Affinity(nodeAffinity: $nodeAffinity, podAffinity: $podAffinity, podAntiAffinity: $podAntiAffinity)'; } 
 }
