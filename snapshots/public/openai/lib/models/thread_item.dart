// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'assistant_message_item.dart';import 'client_tool_call_item.dart';import 'task_group_item.dart';import 'task_item.dart';import 'user_message_item.dart';import 'widget_message_item.dart';sealed class ThreadItem {const ThreadItem();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory ThreadItem.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'chatkit.user_message' => ThreadItemChatkitUserMessage.fromJson(json),
  'chatkit.assistant_message' => ThreadItemChatkitAssistantMessage.fromJson(json),
  'chatkit.widget' => ThreadItemChatkitWidget.fromJson(json),
  'chatkit.client_tool_call' => ThreadItemChatkitClientToolCall.fromJson(json),
  'chatkit.task' => ThreadItemChatkitTask.fromJson(json),
  'chatkit.task_group' => ThreadItemChatkitTaskGroup.fromJson(json),
  _ => ThreadItem$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is ThreadItem$Unknown; } 
 }
@immutable final class ThreadItemChatkitUserMessage extends ThreadItem {const ThreadItemChatkitUserMessage(this.userMessageItem);

factory ThreadItemChatkitUserMessage.fromJson(Map<String, dynamic> json) { return ThreadItemChatkitUserMessage(UserMessageItem.fromJson(json)); }

final UserMessageItem userMessageItem;

@override String get type { return 'chatkit.user_message'; } 
@override Map<String, dynamic> toJson() { return {...userMessageItem.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ThreadItemChatkitUserMessage && userMessageItem == other.userMessageItem; } 
@override int get hashCode { return userMessageItem.hashCode; } 
@override String toString() { return 'ThreadItemChatkitUserMessage(userMessageItem: $userMessageItem)'; } 
 }
@immutable final class ThreadItemChatkitAssistantMessage extends ThreadItem {const ThreadItemChatkitAssistantMessage(this.assistantMessageItem);

factory ThreadItemChatkitAssistantMessage.fromJson(Map<String, dynamic> json) { return ThreadItemChatkitAssistantMessage(AssistantMessageItem.fromJson(json)); }

final AssistantMessageItem assistantMessageItem;

@override String get type { return 'chatkit.assistant_message'; } 
@override Map<String, dynamic> toJson() { return {...assistantMessageItem.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ThreadItemChatkitAssistantMessage && assistantMessageItem == other.assistantMessageItem; } 
@override int get hashCode { return assistantMessageItem.hashCode; } 
@override String toString() { return 'ThreadItemChatkitAssistantMessage(assistantMessageItem: $assistantMessageItem)'; } 
 }
@immutable final class ThreadItemChatkitWidget extends ThreadItem {const ThreadItemChatkitWidget(this.widgetMessageItem);

factory ThreadItemChatkitWidget.fromJson(Map<String, dynamic> json) { return ThreadItemChatkitWidget(WidgetMessageItem.fromJson(json)); }

final WidgetMessageItem widgetMessageItem;

@override String get type { return 'chatkit.widget'; } 
@override Map<String, dynamic> toJson() { return {...widgetMessageItem.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ThreadItemChatkitWidget && widgetMessageItem == other.widgetMessageItem; } 
@override int get hashCode { return widgetMessageItem.hashCode; } 
@override String toString() { return 'ThreadItemChatkitWidget(widgetMessageItem: $widgetMessageItem)'; } 
 }
@immutable final class ThreadItemChatkitClientToolCall extends ThreadItem {const ThreadItemChatkitClientToolCall(this.clientToolCallItem);

factory ThreadItemChatkitClientToolCall.fromJson(Map<String, dynamic> json) { return ThreadItemChatkitClientToolCall(ClientToolCallItem.fromJson(json)); }

final ClientToolCallItem clientToolCallItem;

@override String get type { return 'chatkit.client_tool_call'; } 
@override Map<String, dynamic> toJson() { return {...clientToolCallItem.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ThreadItemChatkitClientToolCall && clientToolCallItem == other.clientToolCallItem; } 
@override int get hashCode { return clientToolCallItem.hashCode; } 
@override String toString() { return 'ThreadItemChatkitClientToolCall(clientToolCallItem: $clientToolCallItem)'; } 
 }
@immutable final class ThreadItemChatkitTask extends ThreadItem {const ThreadItemChatkitTask(this.taskItem);

factory ThreadItemChatkitTask.fromJson(Map<String, dynamic> json) { return ThreadItemChatkitTask(TaskItem.fromJson(json)); }

final TaskItem taskItem;

@override String get type { return 'chatkit.task'; } 
@override Map<String, dynamic> toJson() { return {...taskItem.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ThreadItemChatkitTask && taskItem == other.taskItem; } 
@override int get hashCode { return taskItem.hashCode; } 
@override String toString() { return 'ThreadItemChatkitTask(taskItem: $taskItem)'; } 
 }
@immutable final class ThreadItemChatkitTaskGroup extends ThreadItem {const ThreadItemChatkitTaskGroup(this.taskGroupItem);

factory ThreadItemChatkitTaskGroup.fromJson(Map<String, dynamic> json) { return ThreadItemChatkitTaskGroup(TaskGroupItem.fromJson(json)); }

final TaskGroupItem taskGroupItem;

@override String get type { return 'chatkit.task_group'; } 
@override Map<String, dynamic> toJson() { return {...taskGroupItem.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ThreadItemChatkitTaskGroup && taskGroupItem == other.taskGroupItem; } 
@override int get hashCode { return taskGroupItem.hashCode; } 
@override String toString() { return 'ThreadItemChatkitTaskGroup(taskGroupItem: $taskGroupItem)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
@immutable final class ThreadItem$Unknown extends ThreadItem {const ThreadItem$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ThreadItem$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'ThreadItem.unknown($json)'; } 
 }
