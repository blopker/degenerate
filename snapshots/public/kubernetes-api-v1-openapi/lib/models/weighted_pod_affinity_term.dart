// GENERATED CODE - DO NOT MODIFY BY HAND

import 'pod_affinity_term.dart';/// The weights of all of the matched WeightedPodAffinityTerm fields are added per-node to find the most preferred node(s)
final class WeightedPodAffinityTerm {const WeightedPodAffinityTerm({required this.podAffinityTerm, this.weight = 0, });

factory WeightedPodAffinityTerm.fromJson(Map<String, dynamic> json) { return WeightedPodAffinityTerm(
  podAffinityTerm: PodAffinityTerm.fromJson(json['podAffinityTerm'] as Map<String, dynamic>),
  weight: (json['weight'] as num).toInt(),
); }

/// Required. A pod affinity term, associated with the corresponding weight.
final PodAffinityTerm podAffinityTerm;

/// weight associated with matching the corresponding podAffinityTerm, in the range 1-100.
final int weight;

Map<String, dynamic> toJson() { return {
  'podAffinityTerm': podAffinityTerm.toJson(),
  'weight': weight,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('podAffinityTerm') &&
      json.containsKey('weight') && json['weight'] is num; } 
WeightedPodAffinityTerm copyWith({PodAffinityTerm? podAffinityTerm, int? weight, }) { return WeightedPodAffinityTerm(
  podAffinityTerm: podAffinityTerm ?? this.podAffinityTerm,
  weight: weight ?? this.weight,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WeightedPodAffinityTerm &&
          podAffinityTerm == other.podAffinityTerm &&
          weight == other.weight; } 
@override int get hashCode { return Object.hash(podAffinityTerm, weight); } 
@override String toString() { return 'WeightedPodAffinityTerm(podAffinityTerm: $podAffinityTerm, weight: $weight)'; } 
 }
