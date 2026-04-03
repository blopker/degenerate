// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'task_group_task.dart';/// Type discriminator that is always `chatkit.thread_item`.
@immutable final class TaskGroupItemObject {const TaskGroupItemObject._(this.value);

factory TaskGroupItemObject.fromJson(String json) { return switch (json) {
  'chatkit.thread_item' => chatkitThreadItem,
  _ => TaskGroupItemObject._(json),
}; }

static const TaskGroupItemObject chatkitThreadItem = TaskGroupItemObject._('chatkit.thread_item');

static const List<TaskGroupItemObject> values = [chatkitThreadItem];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TaskGroupItemObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TaskGroupItemObject($value)'; } 
 }
/// Collection of workflow tasks grouped together in the thread.
@immutable final class TaskGroupItem {const TaskGroupItem({required this.id, required this.createdAt, required this.threadId, required this.tasks, this.object = TaskGroupItemObject.chatkitThreadItem, this.type = 'chatkit.task_group', });

factory TaskGroupItem.fromJson(Map<String, dynamic> json) { return TaskGroupItem(
  id: json['id'] as String,
  object: TaskGroupItemObject.fromJson(json['object'] as String),
  createdAt: (json['created_at'] as num).toInt(),
  threadId: json['thread_id'] as String,
  type: json['type'] as String,
  tasks: (json['tasks'] as List<dynamic>).map((e) => TaskGroupTask.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Identifier of the thread item.
final String id;

/// Type discriminator that is always `chatkit.thread_item`.
final TaskGroupItemObject object;

/// Unix timestamp (in seconds) for when the item was created.
final int createdAt;

/// Identifier of the parent thread.
final String threadId;

/// Type discriminator that is always `chatkit.task_group`.
final String type;

/// Tasks included in the group.
final List<TaskGroupTask> tasks;

Map<String, dynamic> toJson() { return {
  'id': id,
  'object': object.toJson(),
  'created_at': createdAt,
  'thread_id': threadId,
  'type': type,
  'tasks': tasks.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String &&
      json.containsKey('object') &&
      json.containsKey('created_at') && json['created_at'] is num &&
      json.containsKey('thread_id') && json['thread_id'] is String &&
      json.containsKey('type') && json['type'] is String &&
      json.containsKey('tasks'); } 
TaskGroupItem copyWith({String? id, TaskGroupItemObject? object, int? createdAt, String? threadId, String? type, List<TaskGroupTask>? tasks, }) { return TaskGroupItem(
  id: id ?? this.id,
  object: object ?? this.object,
  createdAt: createdAt ?? this.createdAt,
  threadId: threadId ?? this.threadId,
  type: type ?? this.type,
  tasks: tasks ?? this.tasks,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TaskGroupItem &&
          id == other.id &&
          object == other.object &&
          createdAt == other.createdAt &&
          threadId == other.threadId &&
          type == other.type &&
          listEquals(tasks, other.tasks); } 
@override int get hashCode { return Object.hash(id, object, createdAt, threadId, type, Object.hashAll(tasks)); } 
@override String toString() { return 'TaskGroupItem(id: $id, object: $object, createdAt: $createdAt, threadId: $threadId, type: $type, tasks: $tasks)'; } 
 }
