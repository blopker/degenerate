// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'issues_create_request_labels.dart';import 'issues_create_request_labels_variant2.dart';@immutable final class IssuesCreateRequest {const IssuesCreateRequest({required this.title, this.body, this.assignee = const Omittable.absent(), this.milestone = const Omittable.absent(), this.labels, this.assignees, this.type = const Omittable.absent(), });

factory IssuesCreateRequest.fromJson(Map<String, dynamic> json) { return IssuesCreateRequest(
  title: json['title'],
  body: json['body'] as String?,
  assignee: json.containsKey('assignee') ? Omittable(json['assignee'] as String?) : const Omittable.absent(),
  milestone: json.containsKey('milestone') ? Omittable(json['milestone']) : const Omittable.absent(),
  labels: (json['labels'] as List<dynamic>?)?.map((e) => OneOf2.parse(e, fromA: (v) => v as String, fromB: (v) => IssuesCreateRequestLabelsVariant2.fromJson(v as Map<String, dynamic>),)).toList(),
  assignees: (json['assignees'] as List<dynamic>?)?.map((e) => e as String).toList(),
  type: json.containsKey('type') ? Omittable(json['type'] as String?) : const Omittable.absent(),
); }

/// The title of the issue.
/// 
/// The title of the issue.
/// 
/// One of: String, int
final dynamic title;

/// The contents of the issue.
final String? body;

/// Login for the user that this issue should be assigned to. _NOTE: Only users with push access can set the assignee for new issues. The assignee is silently dropped otherwise. **This field is closing down.**_
final Omittable<String?> assignee;

/// One of: String, int
final Omittable<dynamic> milestone;

/// Labels to associate with this issue. _NOTE: Only users with push access can set labels for new issues. Labels are silently dropped otherwise._
final List<IssuesCreateRequestLabels>? labels;

/// Logins for Users to assign to this issue. _NOTE: Only users with push access can set assignees for new issues. Assignees are silently dropped otherwise._
final List<String>? assignees;

/// The name of the issue type to associate with this issue. _NOTE: Only users with push access can set the type for new issues. The type is silently dropped otherwise._
final Omittable<String?> type;

Map<String, dynamic> toJson() { return {
  'title': title,
  'body': ?body,
  if (assignee.isPresent) 'assignee': assignee.value,
  if (milestone.isPresent) 'milestone': milestone.value,
  if (labels != null) 'labels': labels?.map((e) => e.toJson()).toList(),
  'assignees': ?assignees,
  if (type.isPresent) 'type': type.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('title'); } 
IssuesCreateRequest copyWith({dynamic title, String? Function()? body, Omittable<String?>? assignee, Omittable<dynamic>? milestone, List<IssuesCreateRequestLabels>? Function()? labels, List<String>? Function()? assignees, Omittable<String?>? type, }) { return IssuesCreateRequest(
  title: title ?? this.title,
  body: body != null ? body() : this.body,
  assignee: assignee ?? this.assignee,
  milestone: milestone ?? this.milestone,
  labels: labels != null ? labels() : this.labels,
  assignees: assignees != null ? assignees() : this.assignees,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuesCreateRequest &&
          title == other.title &&
          body == other.body &&
          assignee == other.assignee &&
          milestone == other.milestone &&
          listEquals(labels, other.labels) &&
          listEquals(assignees, other.assignees) &&
          type == other.type; } 
@override int get hashCode { return Object.hash(title, body, assignee, milestone, Object.hashAll(labels ?? const []), Object.hashAll(assignees ?? const []), type); } 
@override String toString() { return 'IssuesCreateRequest(title: $title, body: $body, assignee: $assignee, milestone: $milestone, labels: $labels, assignees: $assignees, type: $type)'; } 
 }
