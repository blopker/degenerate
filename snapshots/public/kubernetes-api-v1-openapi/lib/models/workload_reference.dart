// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// WorkloadReference identifies the Workload object and PodGroup membership that a Pod belongs to. The scheduler uses this information to apply workload-aware scheduling semantics.
@immutable final class WorkloadReference {const WorkloadReference({this.name = '', this.podGroup = '', this.podGroupReplicaKey, });

factory WorkloadReference.fromJson(Map<String, dynamic> json) { return WorkloadReference(
  name: json['name'] as String,
  podGroup: json['podGroup'] as String,
  podGroupReplicaKey: json['podGroupReplicaKey'] as String?,
); }

/// Name defines the name of the Workload object this Pod belongs to. Workload must be in the same namespace as the Pod. If it doesn't match any existing Workload, the Pod will remain unschedulable until a Workload object is created and observed by the kube-scheduler. It must be a DNS subdomain.
final String name;

/// PodGroup is the name of the PodGroup within the Workload that this Pod belongs to. If it doesn't match any existing PodGroup within the Workload, the Pod will remain unschedulable until the Workload object is recreated and observed by the kube-scheduler. It must be a DNS label.
final String podGroup;

/// PodGroupReplicaKey specifies the replica key of the PodGroup to which this Pod belongs. It is used to distinguish pods belonging to different replicas of the same pod group. The pod group policy is applied separately to each replica. When set, it must be a DNS label.
final String? podGroupReplicaKey;

Map<String, dynamic> toJson() { return {
  'name': name,
  'podGroup': podGroup,
  'podGroupReplicaKey': ?podGroupReplicaKey,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String &&
      json.containsKey('podGroup') && json['podGroup'] is String; } 
WorkloadReference copyWith({String? name, String? podGroup, String Function()? podGroupReplicaKey, }) { return WorkloadReference(
  name: name ?? this.name,
  podGroup: podGroup ?? this.podGroup,
  podGroupReplicaKey: podGroupReplicaKey != null ? podGroupReplicaKey() : this.podGroupReplicaKey,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkloadReference &&
          name == other.name &&
          podGroup == other.podGroup &&
          podGroupReplicaKey == other.podGroupReplicaKey; } 
@override int get hashCode { return Object.hash(name, podGroup, podGroupReplicaKey); } 
@override String toString() { return 'WorkloadReference(name: $name, podGroup: $podGroup, podGroupReplicaKey: $podGroupReplicaKey)'; } 
 }
