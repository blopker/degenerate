// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'object_meta.dart';import 'pod_spec.dart';/// PodTemplateSpec describes the data a pod should have when created from a template
@immutable final class PodTemplateSpec {const PodTemplateSpec({this.metadata, this.spec, });

factory PodTemplateSpec.fromJson(Map<String, dynamic> json) { return PodTemplateSpec(
  metadata: json['metadata'] != null ? ObjectMeta.fromJson(json['metadata'] as Map<String, dynamic>) : null,
  spec: json['spec'] != null ? PodSpec.fromJson(json['spec'] as Map<String, dynamic>) : null,
); }

/// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
final ObjectMeta? metadata;

/// Specification of the desired behavior of the pod. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
final PodSpec? spec;

Map<String, dynamic> toJson() { return {
  if (metadata != null) 'metadata': metadata?.toJson(),
  if (spec != null) 'spec': spec?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'metadata', 'spec'}.contains(key)); } 
PodTemplateSpec copyWith({ObjectMeta Function()? metadata, PodSpec Function()? spec, }) { return PodTemplateSpec(
  metadata: metadata != null ? metadata() : this.metadata,
  spec: spec != null ? spec() : this.spec,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PodTemplateSpec &&
          metadata == other.metadata &&
          spec == other.spec; } 
@override int get hashCode { return Object.hash(metadata, spec); } 
@override String toString() { return 'PodTemplateSpec(metadata: $metadata, spec: $spec)'; } 
 }
