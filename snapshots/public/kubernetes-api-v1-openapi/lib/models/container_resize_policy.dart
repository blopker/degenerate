// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// ContainerResizePolicy represents resource resize policy for the container.
@immutable final class ContainerResizePolicy {const ContainerResizePolicy({this.resourceName = '', this.restartPolicy = '', });

factory ContainerResizePolicy.fromJson(Map<String, dynamic> json) { return ContainerResizePolicy(
  resourceName: json['resourceName'] as String,
  restartPolicy: json['restartPolicy'] as String,
); }

/// Name of the resource to which this resource resize policy applies. Supported values: cpu, memory.
final String resourceName;

/// Restart policy to apply when specified resource is resized. If not specified, it defaults to NotRequired.
final String restartPolicy;

Map<String, dynamic> toJson() { return {
  'resourceName': resourceName,
  'restartPolicy': restartPolicy,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('resourceName') && json['resourceName'] is String &&
      json.containsKey('restartPolicy') && json['restartPolicy'] is String; } 
ContainerResizePolicy copyWith({String? resourceName, String? restartPolicy, }) { return ContainerResizePolicy(
  resourceName: resourceName ?? this.resourceName,
  restartPolicy: restartPolicy ?? this.restartPolicy,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ContainerResizePolicy &&
          resourceName == other.resourceName &&
          restartPolicy == other.restartPolicy; } 
@override int get hashCode { return Object.hash(resourceName, restartPolicy); } 
@override String toString() { return 'ContainerResizePolicy(resourceName: $resourceName, restartPolicy: $restartPolicy)'; } 
 }
