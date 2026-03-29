// GENERATED CODE - DO NOT MODIFY BY HAND

import 'simple_user.dart';/// The type of the activity that was performed.
final class ActivityActivityType {const ActivityActivityType._(this.value);

factory ActivityActivityType.fromJson(String json) { return switch (json) {
  'push' => push,
  'force_push' => forcePush,
  'branch_deletion' => branchDeletion,
  'branch_creation' => branchCreation,
  'pr_merge' => prMerge,
  'merge_queue_merge' => mergeQueueMerge,
  _ => ActivityActivityType._(json),
}; }

static const ActivityActivityType push = ActivityActivityType._('push');

static const ActivityActivityType forcePush = ActivityActivityType._('force_push');

static const ActivityActivityType branchDeletion = ActivityActivityType._('branch_deletion');

static const ActivityActivityType branchCreation = ActivityActivityType._('branch_creation');

static const ActivityActivityType prMerge = ActivityActivityType._('pr_merge');

static const ActivityActivityType mergeQueueMerge = ActivityActivityType._('merge_queue_merge');

static const List<ActivityActivityType> values = [push, forcePush, branchDeletion, branchCreation, prMerge, mergeQueueMerge];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActivityActivityType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ActivityActivityType($value)'; } 
 }
/// Activity
final class Activity {const Activity({required this.id, required this.nodeId, required this.before, required this.after, required this.ref, required this.timestamp, required this.activityType, required this.actor, });

factory Activity.fromJson(Map<String, dynamic> json) { return Activity(
  id: (json['id'] as num).toInt(),
  nodeId: json['node_id'] as String,
  before: json['before'] as String,
  after: json['after'] as String,
  ref: json['ref'] as String,
  timestamp: DateTime.parse(json['timestamp'] as String),
  activityType: ActivityActivityType.fromJson(json['activity_type'] as String),
  actor: json['actor'] != null ? SimpleUser.fromJson(json['actor'] as Map<String, dynamic>) : null,
); }

final int id;

final String nodeId;

/// The SHA of the commit before the activity.
final String before;

/// The SHA of the commit after the activity.
final String after;

/// The full Git reference, formatted as `refs/heads/<branch name>`.
final String ref;

/// The time when the activity occurred.
final DateTime timestamp;

/// The type of the activity that was performed.
final ActivityActivityType activityType;

final SimpleUser? actor;

Map<String, dynamic> toJson() { return {
  'id': id,
  'node_id': nodeId,
  'before': before,
  'after': after,
  'ref': ref,
  'timestamp': timestamp.toIso8601String(),
  'activity_type': activityType.toJson(),
  if (actor != null) 'actor': actor?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is num &&
      json.containsKey('node_id') && json['node_id'] is String &&
      json.containsKey('before') && json['before'] is String &&
      json.containsKey('after') && json['after'] is String &&
      json.containsKey('ref') && json['ref'] is String &&
      json.containsKey('timestamp') && json['timestamp'] is String &&
      json.containsKey('activity_type') &&
      json.containsKey('actor'); } 
Activity copyWith({int? id, String? nodeId, String? before, String? after, String? ref, DateTime? timestamp, ActivityActivityType? activityType, SimpleUser? Function()? actor, }) { return Activity(
  id: id ?? this.id,
  nodeId: nodeId ?? this.nodeId,
  before: before ?? this.before,
  after: after ?? this.after,
  ref: ref ?? this.ref,
  timestamp: timestamp ?? this.timestamp,
  activityType: activityType ?? this.activityType,
  actor: actor != null ? actor() : this.actor,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Activity &&
          id == other.id &&
          nodeId == other.nodeId &&
          before == other.before &&
          after == other.after &&
          ref == other.ref &&
          timestamp == other.timestamp &&
          activityType == other.activityType &&
          actor == other.actor; } 
@override int get hashCode { return Object.hash(id, nodeId, before, after, ref, timestamp, activityType, actor); } 
@override String toString() { return 'Activity(id: $id, nodeId: $nodeId, before: $before, after: $after, ref: $ref, timestamp: $timestamp, activityType: $activityType, actor: $actor)'; } 
 }
