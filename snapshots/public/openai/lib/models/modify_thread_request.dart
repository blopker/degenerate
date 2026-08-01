// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'modify_thread_request_tool_resources.dart';@immutable final class ModifyThreadRequest {const ModifyThreadRequest({this.toolResources = const Omittable.absent(), this.metadata = const Omittable.absent(), });

factory ModifyThreadRequest.fromJson(Map<String, dynamic> json) { return ModifyThreadRequest(
  toolResources: json.containsKey('tool_resources') ? Omittable(json['tool_resources'] != null ? ModifyThreadRequestToolResources.fromJson(json['tool_resources'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  metadata: json.containsKey('metadata') ? Omittable((json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String))) : const Omittable.absent(),
); }

/// A set of resources that are made available to the assistant's tools in this thread. The resources are specific to the type of tool. For example, the `code_interpreter` tool requires a list of file IDs, while the `file_search` tool requires a list of vector store IDs.
/// 
final Omittable<ModifyThreadRequestToolResources?> toolResources;

/// Set of 16 key-value pairs that can be attached to an object. This can be
/// useful for storing additional information about the object in a structured
/// format, and querying for objects via API or the dashboard.
/// 
/// Keys are strings with a maximum length of 64 characters. Values are strings
/// with a maximum length of 512 characters.
/// 
final Omittable<Map<String,String>?> metadata;

Map<String, dynamic> toJson() { return {
  if (toolResources.isPresent) 'tool_resources': toolResources.value?.toJson(),
  if (metadata.isPresent) 'metadata': metadata.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'tool_resources', 'metadata'}.contains(key)); } 
ModifyThreadRequest copyWith({Omittable<ModifyThreadRequestToolResources?>? toolResources, Omittable<Map<String,String>?>? metadata, }) { return ModifyThreadRequest(
  toolResources: toolResources ?? this.toolResources,
  metadata: metadata ?? this.metadata,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ModifyThreadRequest &&
          toolResources == other.toolResources &&
          metadata == other.metadata; } 
@override int get hashCode { return Object.hash(toolResources, metadata); } 
@override String toString() { return 'ModifyThreadRequest(toolResources: $toolResources, metadata: $metadata)'; } 
 }
