// GENERATED CODE - DO NOT MODIFY BY HAND

import 'integration.dart';import 'simple_user.dart';/// Timeline Unassigned Issue Event
final class TimelineUnassignedIssueEvent {const TimelineUnassignedIssueEvent({required this.id, required this.nodeId, required this.url, required this.actor, required this.event, required this.commitId, required this.commitUrl, required this.createdAt, required this.performedViaGithubApp, required this.assignee, });

factory TimelineUnassignedIssueEvent.fromJson(Map<String, dynamic> json) { return TimelineUnassignedIssueEvent(
  id: (json['id'] as num).toInt(),
  nodeId: json['node_id'] as String,
  url: json['url'] as String,
  actor: SimpleUser.fromJson(json['actor'] as Map<String, dynamic>),
  event: json['event'] as String,
  commitId: json['commit_id'] as String?,
  commitUrl: json['commit_url'] as String?,
  createdAt: json['created_at'] as String,
  performedViaGithubApp: json['performed_via_github_app'] != null ? Integration.fromJson(json['performed_via_github_app'] as Map<String, dynamic>) : null,
  assignee: SimpleUser.fromJson(json['assignee'] as Map<String, dynamic>),
); }

final int id;

final String nodeId;

final String url;

final SimpleUser actor;

final String event;

final String? commitId;

final String? commitUrl;

final String createdAt;

final Integration? performedViaGithubApp;

final SimpleUser assignee;

Map<String, dynamic> toJson() { return {
  'id': id,
  'node_id': nodeId,
  'url': url,
  'actor': actor.toJson(),
  'event': event,
  'commit_id': ?commitId,
  'commit_url': ?commitUrl,
  'created_at': createdAt,
  if (performedViaGithubApp != null) 'performed_via_github_app': performedViaGithubApp?.toJson(),
  'assignee': assignee.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is num &&
      json.containsKey('node_id') && json['node_id'] is String &&
      json.containsKey('url') && json['url'] is String &&
      json.containsKey('actor') &&
      json.containsKey('event') && json['event'] is String &&
      json.containsKey('commit_id') && json['commit_id'] is String &&
      json.containsKey('commit_url') && json['commit_url'] is String &&
      json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('performed_via_github_app') &&
      json.containsKey('assignee'); } 
TimelineUnassignedIssueEvent copyWith({int? id, String? nodeId, String? url, SimpleUser? actor, String? event, String? Function()? commitId, String? Function()? commitUrl, String? createdAt, Integration? Function()? performedViaGithubApp, SimpleUser? assignee, }) { return TimelineUnassignedIssueEvent(
  id: id ?? this.id,
  nodeId: nodeId ?? this.nodeId,
  url: url ?? this.url,
  actor: actor ?? this.actor,
  event: event ?? this.event,
  commitId: commitId != null ? commitId() : this.commitId,
  commitUrl: commitUrl != null ? commitUrl() : this.commitUrl,
  createdAt: createdAt ?? this.createdAt,
  performedViaGithubApp: performedViaGithubApp != null ? performedViaGithubApp() : this.performedViaGithubApp,
  assignee: assignee ?? this.assignee,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TimelineUnassignedIssueEvent &&
          id == other.id &&
          nodeId == other.nodeId &&
          url == other.url &&
          actor == other.actor &&
          event == other.event &&
          commitId == other.commitId &&
          commitUrl == other.commitUrl &&
          createdAt == other.createdAt &&
          performedViaGithubApp == other.performedViaGithubApp &&
          assignee == other.assignee; } 
@override int get hashCode { return Object.hash(id, nodeId, url, actor, event, commitId, commitUrl, createdAt, performedViaGithubApp, assignee); } 
@override String toString() { return 'TimelineUnassignedIssueEvent(id: $id, nodeId: $nodeId, url: $url, actor: $actor, event: $event, commitId: $commitId, commitUrl: $commitUrl, createdAt: $createdAt, performedViaGithubApp: $performedViaGithubApp, assignee: $assignee)'; } 
 }
