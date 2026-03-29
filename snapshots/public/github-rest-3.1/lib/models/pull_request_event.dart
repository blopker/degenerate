// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'label.dart';import 'pull_request_minimal.dart';import 'simple_user.dart';final class PullRequestEvent {const PullRequestEvent({required this.action, required this.number, required this.pullRequest, this.assignee, this.assignees, this.label, this.labels, });

factory PullRequestEvent.fromJson(Map<String, dynamic> json) { return PullRequestEvent(
  action: json['action'] as String,
  number: (json['number'] as num).toInt(),
  pullRequest: PullRequestMinimal.fromJson(json['pull_request'] as Map<String, dynamic>),
  assignee: json['assignee'] != null ? SimpleUser.fromJson(json['assignee'] as Map<String, dynamic>) : null,
  assignees: (json['assignees'] as List<dynamic>?)?.map((e) => SimpleUser.fromJson(e as Map<String, dynamic>)).toList(),
  label: json['label'] != null ? Label.fromJson(json['label'] as Map<String, dynamic>) : null,
  labels: (json['labels'] as List<dynamic>?)?.map((e) => Label.fromJson(e as Map<String, dynamic>)).toList(),
); }

final String action;

final int number;

final PullRequestMinimal pullRequest;

final SimpleUser? assignee;

final List<SimpleUser>? assignees;

final Label? label;

final List<Label>? labels;

Map<String, dynamic> toJson() { return {
  'action': action,
  'number': number,
  'pull_request': pullRequest.toJson(),
  if (assignee != null) 'assignee': assignee?.toJson(),
  if (assignees != null) 'assignees': assignees?.map((e) => e.toJson()).toList(),
  if (label != null) 'label': label?.toJson(),
  if (labels != null) 'labels': labels?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('action') && json['action'] is String &&
      json.containsKey('number') && json['number'] is num &&
      json.containsKey('pull_request'); } 
PullRequestEvent copyWith({String? action, int? number, PullRequestMinimal? pullRequest, SimpleUser Function()? assignee, List<SimpleUser> Function()? assignees, Label Function()? label, List<Label> Function()? labels, }) { return PullRequestEvent(
  action: action ?? this.action,
  number: number ?? this.number,
  pullRequest: pullRequest ?? this.pullRequest,
  assignee: assignee != null ? assignee() : this.assignee,
  assignees: assignees != null ? assignees() : this.assignees,
  label: label != null ? label() : this.label,
  labels: labels != null ? labels() : this.labels,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PullRequestEvent &&
          action == other.action &&
          number == other.number &&
          pullRequest == other.pullRequest &&
          assignee == other.assignee &&
          listEquals(assignees, other.assignees) &&
          label == other.label &&
          listEquals(labels, other.labels); } 
@override int get hashCode { return Object.hash(action, number, pullRequest, assignee, Object.hashAll(assignees ?? const []), label, Object.hashAll(labels ?? const [])); } 
@override String toString() { return 'PullRequestEvent(action: $action, number: $number, pullRequest: $pullRequest, assignee: $assignee, assignees: $assignees, label: $label, labels: $labels)'; } 
 }
