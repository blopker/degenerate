// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'pod_affinity_term.dart';import 'weighted_pod_affinity_term.dart';/// Pod affinity is a group of inter pod affinity scheduling rules.
final class PodAffinity {const PodAffinity({this.preferredDuringSchedulingIgnoredDuringExecution, this.requiredDuringSchedulingIgnoredDuringExecution, });

factory PodAffinity.fromJson(Map<String, dynamic> json) { return PodAffinity(
  preferredDuringSchedulingIgnoredDuringExecution: (json['preferredDuringSchedulingIgnoredDuringExecution'] as List<dynamic>?)?.map((e) => WeightedPodAffinityTerm.fromJson(e as Map<String, dynamic>)).toList(),
  requiredDuringSchedulingIgnoredDuringExecution: (json['requiredDuringSchedulingIgnoredDuringExecution'] as List<dynamic>?)?.map((e) => PodAffinityTerm.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding "weight" to the sum if the node has pods which matches the corresponding podAffinityTerm; the node(s) with the highest sum are the most preferred.
final List<WeightedPodAffinityTerm>? preferredDuringSchedulingIgnoredDuringExecution;

/// If the affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to a pod label update), the system may or may not try to eventually evict the pod from its node. When there are multiple elements, the lists of nodes corresponding to each podAffinityTerm are intersected, i.e. all terms must be satisfied.
final List<PodAffinityTerm>? requiredDuringSchedulingIgnoredDuringExecution;

Map<String, dynamic> toJson() { return {
  if (preferredDuringSchedulingIgnoredDuringExecution != null) 'preferredDuringSchedulingIgnoredDuringExecution': preferredDuringSchedulingIgnoredDuringExecution?.map((e) => e.toJson()).toList(),
  if (requiredDuringSchedulingIgnoredDuringExecution != null) 'requiredDuringSchedulingIgnoredDuringExecution': requiredDuringSchedulingIgnoredDuringExecution?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PodAffinity copyWith({List<WeightedPodAffinityTerm> Function()? preferredDuringSchedulingIgnoredDuringExecution, List<PodAffinityTerm> Function()? requiredDuringSchedulingIgnoredDuringExecution, }) { return PodAffinity(
  preferredDuringSchedulingIgnoredDuringExecution: preferredDuringSchedulingIgnoredDuringExecution != null ? preferredDuringSchedulingIgnoredDuringExecution() : this.preferredDuringSchedulingIgnoredDuringExecution,
  requiredDuringSchedulingIgnoredDuringExecution: requiredDuringSchedulingIgnoredDuringExecution != null ? requiredDuringSchedulingIgnoredDuringExecution() : this.requiredDuringSchedulingIgnoredDuringExecution,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PodAffinity &&
          listEquals(preferredDuringSchedulingIgnoredDuringExecution, other.preferredDuringSchedulingIgnoredDuringExecution) &&
          listEquals(requiredDuringSchedulingIgnoredDuringExecution, other.requiredDuringSchedulingIgnoredDuringExecution); } 
@override int get hashCode { return Object.hash(Object.hashAll(preferredDuringSchedulingIgnoredDuringExecution ?? const []), Object.hashAll(requiredDuringSchedulingIgnoredDuringExecution ?? const [])); } 
@override String toString() { return 'PodAffinity(preferredDuringSchedulingIgnoredDuringExecution: $preferredDuringSchedulingIgnoredDuringExecution, requiredDuringSchedulingIgnoredDuringExecution: $requiredDuringSchedulingIgnoredDuringExecution)'; } 
 }
