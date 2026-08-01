// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'create_message_request.dart';import 'create_thread_request_tool_resources.dart';/// Options to create a new thread. If no thread is provided when running a
/// request, an empty thread will be created.
/// 
@immutable final class CreateThreadRequest {const CreateThreadRequest({this.messages, this.toolResources = const Omittable.absent(), this.metadata = const Omittable.absent(), });

factory CreateThreadRequest.fromJson(Map<String, dynamic> json) { return CreateThreadRequest(
  messages: (json['messages'] as List<dynamic>?)?.map((e) => CreateMessageRequest.fromJson(e as Map<String, dynamic>)).toList(),
  toolResources: json.containsKey('tool_resources') ? Omittable(json['tool_resources'] != null ? CreateThreadRequestToolResources.fromJson(json['tool_resources'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  metadata: json.containsKey('metadata') ? Omittable((json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String))) : const Omittable.absent(),
); }

/// A list of [messages](/docs/api-reference/messages) to start the thread with.
final List<CreateMessageRequest>? messages;

/// A set of resources that are made available to the assistant's tools in this thread. The resources are specific to the type of tool. For example, the `code_interpreter` tool requires a list of file IDs, while the `file_search` tool requires a list of vector store IDs.
/// 
final Omittable<CreateThreadRequestToolResources?> toolResources;

final Omittable<Map<String,String>?> metadata;

Map<String, dynamic> toJson() { return {
  if (messages != null) 'messages': messages?.map((e) => e.toJson()).toList(),
  if (toolResources.isPresent) 'tool_resources': toolResources.value?.toJson(),
  if (metadata.isPresent) 'metadata': metadata.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'messages', 'tool_resources', 'metadata'}.contains(key)); } 
CreateThreadRequest copyWith({List<CreateMessageRequest>? Function()? messages, Omittable<CreateThreadRequestToolResources?>? toolResources, Omittable<Map<String,String>?>? metadata, }) { return CreateThreadRequest(
  messages: messages != null ? messages() : this.messages,
  toolResources: toolResources ?? this.toolResources,
  metadata: metadata ?? this.metadata,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateThreadRequest &&
          listEquals(messages, other.messages) &&
          toolResources == other.toolResources &&
          metadata == other.metadata; } 
@override int get hashCode { return Object.hash(Object.hashAll(messages ?? const []), toolResources, metadata); } 
@override String toString() { return 'CreateThreadRequest(messages: $messages, toolResources: $toolResources, metadata: $metadata)'; } 
 }
