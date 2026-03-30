// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'resource_quantity.dart';/// ResourceQuotaStatus defines the enforced hard limits and observed use.
final class ResourceQuotaStatus {const ResourceQuotaStatus({this.hard, this.used, });

factory ResourceQuotaStatus.fromJson(Map<String, dynamic> json) { return ResourceQuotaStatus(
  hard: (json['hard'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, OneOf2.parse(v, fromA: (v) => v as String, fromB: (v) => (v as num).toDouble(),))),
  used: (json['used'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, OneOf2.parse(v, fromA: (v) => v as String, fromB: (v) => (v as num).toDouble(),))),
); }

/// Hard is the set of enforced hard limits for each named resource. More info: https://kubernetes.io/docs/concepts/policy/resource-quotas/
final Map<String,ResourceQuantity>? hard;

/// Used is the current observed total usage of the resource in the namespace.
final Map<String,ResourceQuantity>? used;

Map<String, dynamic> toJson() { return {
  if (hard != null) 'hard': hard?.map((k, v) => MapEntry(k, v.toJson())),
  if (used != null) 'used': used?.map((k, v) => MapEntry(k, v.toJson())),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'hard', 'used'}.contains(key)); } 
ResourceQuotaStatus copyWith({Map<String, ResourceQuantity> Function()? hard, Map<String, ResourceQuantity> Function()? used, }) { return ResourceQuotaStatus(
  hard: hard != null ? hard() : this.hard,
  used: used != null ? used() : this.used,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResourceQuotaStatus &&
          hard == other.hard &&
          used == other.used; } 
@override int get hashCode { return Object.hash(hard, used); } 
@override String toString() { return 'ResourceQuotaStatus(hard: $hard, used: $used)'; } 
 }
