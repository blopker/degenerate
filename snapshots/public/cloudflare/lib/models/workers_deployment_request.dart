// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_deployment_request_annotations.dart';import 'workers_deployment_request_versions.dart';@immutable final class WorkersDeploymentRequestStrategy {const WorkersDeploymentRequestStrategy._(this.value);

factory WorkersDeploymentRequestStrategy.fromJson(String json) { return switch (json) {
  'percentage' => percentage,
  _ => WorkersDeploymentRequestStrategy._(json),
}; }

static const WorkersDeploymentRequestStrategy percentage = WorkersDeploymentRequestStrategy._('percentage');

static const List<WorkersDeploymentRequestStrategy> values = [percentage];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersDeploymentRequestStrategy && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WorkersDeploymentRequestStrategy($value)'; } 
 }
@immutable final class WorkersDeploymentRequest {const WorkersDeploymentRequest({required this.strategy, required this.versions, this.annotations, });

factory WorkersDeploymentRequest.fromJson(Map<String, dynamic> json) { return WorkersDeploymentRequest(
  annotations: json['annotations'] != null ? WorkersDeploymentRequestAnnotations.fromJson(json['annotations'] as Map<String, dynamic>) : null,
  strategy: WorkersDeploymentRequestStrategy.fromJson(json['strategy'] as String),
  versions: (json['versions'] as List<dynamic>).map((e) => WorkersDeploymentRequestVersions.fromJson(e as Map<String, dynamic>)).toList(),
); }

final WorkersDeploymentRequestAnnotations? annotations;

final WorkersDeploymentRequestStrategy strategy;

final List<WorkersDeploymentRequestVersions> versions;

Map<String, dynamic> toJson() { return {
  if (annotations != null) 'annotations': annotations?.toJson(),
  'strategy': strategy.toJson(),
  'versions': versions.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('strategy') &&
      json.containsKey('versions'); } 
WorkersDeploymentRequest copyWith({WorkersDeploymentRequestAnnotations? Function()? annotations, WorkersDeploymentRequestStrategy? strategy, List<WorkersDeploymentRequestVersions>? versions, }) { return WorkersDeploymentRequest(
  annotations: annotations != null ? annotations() : this.annotations,
  strategy: strategy ?? this.strategy,
  versions: versions ?? this.versions,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersDeploymentRequest &&
          annotations == other.annotations &&
          strategy == other.strategy &&
          listEquals(versions, other.versions); } 
@override int get hashCode { return Object.hash(annotations, strategy, Object.hashAll(versions)); } 
@override String toString() { return 'WorkersDeploymentRequest(annotations: $annotations, strategy: $strategy, versions: $versions)'; } 
 }
