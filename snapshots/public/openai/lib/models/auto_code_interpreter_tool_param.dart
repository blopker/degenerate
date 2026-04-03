// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'auto_code_interpreter_tool_param_network_policy.dart';import 'container_memory_limit.dart';/// Always `auto`.
@immutable final class AutoCodeInterpreterToolParamType {const AutoCodeInterpreterToolParamType._(this.value);

factory AutoCodeInterpreterToolParamType.fromJson(String json) { return switch (json) {
  'auto' => auto,
  _ => AutoCodeInterpreterToolParamType._(json),
}; }

static const AutoCodeInterpreterToolParamType auto = AutoCodeInterpreterToolParamType._('auto');

static const List<AutoCodeInterpreterToolParamType> values = [auto];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AutoCodeInterpreterToolParamType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AutoCodeInterpreterToolParamType($value)'; } 
 }
/// Configuration for a code interpreter container. Optionally specify the IDs of the files to run the code on.
@immutable final class AutoCodeInterpreterToolParam {const AutoCodeInterpreterToolParam({this.type = AutoCodeInterpreterToolParamType.auto, this.fileIds, this.memoryLimit, this.networkPolicy, });

factory AutoCodeInterpreterToolParam.fromJson(Map<String, dynamic> json) { return AutoCodeInterpreterToolParam(
  type: AutoCodeInterpreterToolParamType.fromJson(json['type'] as String),
  fileIds: (json['file_ids'] as List<dynamic>?)?.map((e) => e as String).toList(),
  memoryLimit: json['memory_limit'] != null ? ContainerMemoryLimit.fromJson(json['memory_limit'] as String) : null,
  networkPolicy: json['network_policy'] != null ? AutoCodeInterpreterToolParamNetworkPolicy.fromJson(json['network_policy'] as Map<String, dynamic>) : null,
); }

/// Always `auto`.
final AutoCodeInterpreterToolParamType type;

/// An optional list of uploaded files to make available to your code.
final List<String>? fileIds;

final ContainerMemoryLimit? memoryLimit;

/// Network access policy for the container.
final AutoCodeInterpreterToolParamNetworkPolicy? networkPolicy;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  'file_ids': ?fileIds,
  if (memoryLimit != null) 'memory_limit': memoryLimit?.toJson(),
  if (networkPolicy != null) 'network_policy': networkPolicy?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
AutoCodeInterpreterToolParam copyWith({AutoCodeInterpreterToolParamType? type, List<String> Function()? fileIds, ContainerMemoryLimit? Function()? memoryLimit, AutoCodeInterpreterToolParamNetworkPolicy Function()? networkPolicy, }) { return AutoCodeInterpreterToolParam(
  type: type ?? this.type,
  fileIds: fileIds != null ? fileIds() : this.fileIds,
  memoryLimit: memoryLimit != null ? memoryLimit() : this.memoryLimit,
  networkPolicy: networkPolicy != null ? networkPolicy() : this.networkPolicy,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AutoCodeInterpreterToolParam &&
          type == other.type &&
          listEquals(fileIds, other.fileIds) &&
          memoryLimit == other.memoryLimit &&
          networkPolicy == other.networkPolicy; } 
@override int get hashCode { return Object.hash(type, Object.hashAll(fileIds ?? const []), memoryLimit, networkPolicy); } 
@override String toString() { return 'AutoCodeInterpreterToolParam(type: $type, fileIds: $fileIds, memoryLimit: $memoryLimit, networkPolicy: $networkPolicy)'; } 
 }
