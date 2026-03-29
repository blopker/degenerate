// GENERATED CODE - DO NOT MODIFY BY HAND

import 'webhook_pull_request_unlocked_pull_request_milestone_creator.dart';/// The state of the milestone.
final class WebhookPullRequestUnlockedPullRequestMilestoneState {const WebhookPullRequestUnlockedPullRequestMilestoneState._(this.value);

factory WebhookPullRequestUnlockedPullRequestMilestoneState.fromJson(String json) { return switch (json) {
  'open' => open,
  'closed' => closed,
  _ => WebhookPullRequestUnlockedPullRequestMilestoneState._(json),
}; }

static const WebhookPullRequestUnlockedPullRequestMilestoneState open = WebhookPullRequestUnlockedPullRequestMilestoneState._('open');

static const WebhookPullRequestUnlockedPullRequestMilestoneState closed = WebhookPullRequestUnlockedPullRequestMilestoneState._('closed');

static const List<WebhookPullRequestUnlockedPullRequestMilestoneState> values = [open, closed];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookPullRequestUnlockedPullRequestMilestoneState && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookPullRequestUnlockedPullRequestMilestoneState($value)'; } 
 }
/// A collection of related issues and pull requests.
final class WebhookPullRequestUnlockedPullRequestMilestone {const WebhookPullRequestUnlockedPullRequestMilestone({required this.closedAt, required this.closedIssues, required this.createdAt, required this.creator, required this.description, required this.dueOn, required this.htmlUrl, required this.id, required this.labelsUrl, required this.nodeId, required this.number, required this.openIssues, required this.state, required this.title, required this.updatedAt, required this.url, });

factory WebhookPullRequestUnlockedPullRequestMilestone.fromJson(Map<String, dynamic> json) { return WebhookPullRequestUnlockedPullRequestMilestone(
  closedAt: json['closed_at'] != null ? DateTime.parse(json['closed_at'] as String) : null,
  closedIssues: (json['closed_issues'] as num).toInt(),
  createdAt: DateTime.parse(json['created_at'] as String),
  creator: json['creator'] != null ? WebhookPullRequestUnlockedPullRequestMilestoneCreator.fromJson(json['creator'] as Map<String, dynamic>) : null,
  description: json['description'] as String?,
  dueOn: json['due_on'] != null ? DateTime.parse(json['due_on'] as String) : null,
  htmlUrl: Uri.parse(json['html_url'] as String),
  id: (json['id'] as num).toInt(),
  labelsUrl: Uri.parse(json['labels_url'] as String),
  nodeId: json['node_id'] as String,
  number: (json['number'] as num).toInt(),
  openIssues: (json['open_issues'] as num).toInt(),
  state: WebhookPullRequestUnlockedPullRequestMilestoneState.fromJson(json['state'] as String),
  title: json['title'] as String,
  updatedAt: DateTime.parse(json['updated_at'] as String),
  url: Uri.parse(json['url'] as String),
); }

final DateTime? closedAt;

final int closedIssues;

final DateTime createdAt;

final WebhookPullRequestUnlockedPullRequestMilestoneCreator? creator;

final String? description;

final DateTime? dueOn;

final Uri htmlUrl;

final int id;

final Uri labelsUrl;

final String nodeId;

/// The number of the milestone.
final int number;

final int openIssues;

/// The state of the milestone.
final WebhookPullRequestUnlockedPullRequestMilestoneState state;

/// The title of the milestone.
final String title;

final DateTime updatedAt;

final Uri url;

Map<String, dynamic> toJson() { return {
  if (closedAt != null) 'closed_at': closedAt?.toIso8601String(),
  'closed_issues': closedIssues,
  'created_at': createdAt.toIso8601String(),
  if (creator != null) 'creator': creator?.toJson(),
  'description': ?description,
  if (dueOn != null) 'due_on': dueOn?.toIso8601String(),
  'html_url': htmlUrl.toString(),
  'id': id,
  'labels_url': labelsUrl.toString(),
  'node_id': nodeId,
  'number': number,
  'open_issues': openIssues,
  'state': state.toJson(),
  'title': title,
  'updated_at': updatedAt.toIso8601String(),
  'url': url.toString(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('closed_at') && json['closed_at'] is String &&
      json.containsKey('closed_issues') && json['closed_issues'] is num &&
      json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('creator') &&
      json.containsKey('description') && json['description'] is String &&
      json.containsKey('due_on') && json['due_on'] is String &&
      json.containsKey('html_url') && json['html_url'] is String &&
      json.containsKey('id') && json['id'] is num &&
      json.containsKey('labels_url') && json['labels_url'] is String &&
      json.containsKey('node_id') && json['node_id'] is String &&
      json.containsKey('number') && json['number'] is num &&
      json.containsKey('open_issues') && json['open_issues'] is num &&
      json.containsKey('state') &&
      json.containsKey('title') && json['title'] is String &&
      json.containsKey('updated_at') && json['updated_at'] is String &&
      json.containsKey('url') && json['url'] is String; } 
WebhookPullRequestUnlockedPullRequestMilestone copyWith({DateTime? Function()? closedAt, int? closedIssues, DateTime? createdAt, WebhookPullRequestUnlockedPullRequestMilestoneCreator? Function()? creator, String? Function()? description, DateTime? Function()? dueOn, Uri? htmlUrl, int? id, Uri? labelsUrl, String? nodeId, int? number, int? openIssues, WebhookPullRequestUnlockedPullRequestMilestoneState? state, String? title, DateTime? updatedAt, Uri? url, }) { return WebhookPullRequestUnlockedPullRequestMilestone(
  closedAt: closedAt != null ? closedAt() : this.closedAt,
  closedIssues: closedIssues ?? this.closedIssues,
  createdAt: createdAt ?? this.createdAt,
  creator: creator != null ? creator() : this.creator,
  description: description != null ? description() : this.description,
  dueOn: dueOn != null ? dueOn() : this.dueOn,
  htmlUrl: htmlUrl ?? this.htmlUrl,
  id: id ?? this.id,
  labelsUrl: labelsUrl ?? this.labelsUrl,
  nodeId: nodeId ?? this.nodeId,
  number: number ?? this.number,
  openIssues: openIssues ?? this.openIssues,
  state: state ?? this.state,
  title: title ?? this.title,
  updatedAt: updatedAt ?? this.updatedAt,
  url: url ?? this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestUnlockedPullRequestMilestone &&
          closedAt == other.closedAt &&
          closedIssues == other.closedIssues &&
          createdAt == other.createdAt &&
          creator == other.creator &&
          description == other.description &&
          dueOn == other.dueOn &&
          htmlUrl == other.htmlUrl &&
          id == other.id &&
          labelsUrl == other.labelsUrl &&
          nodeId == other.nodeId &&
          number == other.number &&
          openIssues == other.openIssues &&
          state == other.state &&
          title == other.title &&
          updatedAt == other.updatedAt &&
          url == other.url; } 
@override int get hashCode { return Object.hash(closedAt, closedIssues, createdAt, creator, description, dueOn, htmlUrl, id, labelsUrl, nodeId, number, openIssues, state, title, updatedAt, url); } 
@override String toString() { return 'WebhookPullRequestUnlockedPullRequestMilestone(closedAt: $closedAt, closedIssues: $closedIssues, createdAt: $createdAt, creator: $creator, description: $description, dueOn: $dueOn, htmlUrl: $htmlUrl, id: $id, labelsUrl: $labelsUrl, nodeId: $nodeId, number: $number, openIssues: $openIssues, state: $state, title: $title, updatedAt: $updatedAt, url: $url)'; } 
 }
