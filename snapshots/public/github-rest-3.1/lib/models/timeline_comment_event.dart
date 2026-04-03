// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'author_association.dart';import 'integration.dart';import 'pinned_issue_comment.dart';import 'reaction_rollup.dart';import 'simple_user.dart';/// Timeline Comment Event
@immutable final class TimelineCommentEvent {const TimelineCommentEvent({required this.event, required this.actor, required this.id, required this.nodeId, required this.url, required this.htmlUrl, required this.user, required this.createdAt, required this.updatedAt, required this.issueUrl, required this.authorAssociation, this.body, this.bodyText, this.bodyHtml, this.performedViaGithubApp, this.reactions, this.pin, });

factory TimelineCommentEvent.fromJson(Map<String, dynamic> json) { return TimelineCommentEvent(
  event: json['event'] as String,
  actor: SimpleUser.fromJson(json['actor'] as Map<String, dynamic>),
  id: (json['id'] as num).toInt(),
  nodeId: json['node_id'] as String,
  url: Uri.parse(json['url'] as String),
  body: json['body'] as String?,
  bodyText: json['body_text'] as String?,
  bodyHtml: json['body_html'] as String?,
  htmlUrl: Uri.parse(json['html_url'] as String),
  user: SimpleUser.fromJson(json['user'] as Map<String, dynamic>),
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
  issueUrl: Uri.parse(json['issue_url'] as String),
  authorAssociation: AuthorAssociation.fromJson(json['author_association'] as String),
  performedViaGithubApp: json['performed_via_github_app'] != null ? Integration.fromJson(json['performed_via_github_app'] as Map<String, dynamic>) : null,
  reactions: json['reactions'] != null ? ReactionRollup.fromJson(json['reactions'] as Map<String, dynamic>) : null,
  pin: json['pin'] != null ? PinnedIssueComment.fromJson(json['pin'] as Map<String, dynamic>) : null,
); }

final String event;

final SimpleUser actor;

/// Unique identifier of the issue comment
final int id;

final String nodeId;

/// URL for the issue comment
final Uri url;

/// Contents of the issue comment
final String? body;

final String? bodyText;

final String? bodyHtml;

final Uri htmlUrl;

final SimpleUser user;

final DateTime createdAt;

final DateTime updatedAt;

final Uri issueUrl;

/// How the author is associated with the repository.
final AuthorAssociation authorAssociation;

final Integration? performedViaGithubApp;

final ReactionRollup? reactions;

final PinnedIssueComment? pin;

Map<String, dynamic> toJson() { return {
  'event': event,
  'actor': actor.toJson(),
  'id': id,
  'node_id': nodeId,
  'url': url.toString(),
  'body': ?body,
  'body_text': ?bodyText,
  'body_html': ?bodyHtml,
  'html_url': htmlUrl.toString(),
  'user': user.toJson(),
  'created_at': createdAt.toIso8601String(),
  'updated_at': updatedAt.toIso8601String(),
  'issue_url': issueUrl.toString(),
  'author_association': authorAssociation.toJson(),
  if (performedViaGithubApp != null) 'performed_via_github_app': performedViaGithubApp?.toJson(),
  if (reactions != null) 'reactions': reactions?.toJson(),
  if (pin != null) 'pin': pin?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('event') && json['event'] is String &&
      json.containsKey('actor') &&
      json.containsKey('id') && json['id'] is num &&
      json.containsKey('node_id') && json['node_id'] is String &&
      json.containsKey('url') && json['url'] is String &&
      json.containsKey('html_url') && json['html_url'] is String &&
      json.containsKey('user') &&
      json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('updated_at') && json['updated_at'] is String &&
      json.containsKey('issue_url') && json['issue_url'] is String &&
      json.containsKey('author_association'); } 
TimelineCommentEvent copyWith({String? event, SimpleUser? actor, int? id, String? nodeId, Uri? url, String Function()? body, String Function()? bodyText, String Function()? bodyHtml, Uri? htmlUrl, SimpleUser? user, DateTime? createdAt, DateTime? updatedAt, Uri? issueUrl, AuthorAssociation? authorAssociation, Integration? Function()? performedViaGithubApp, ReactionRollup Function()? reactions, PinnedIssueComment? Function()? pin, }) { return TimelineCommentEvent(
  event: event ?? this.event,
  actor: actor ?? this.actor,
  id: id ?? this.id,
  nodeId: nodeId ?? this.nodeId,
  url: url ?? this.url,
  body: body != null ? body() : this.body,
  bodyText: bodyText != null ? bodyText() : this.bodyText,
  bodyHtml: bodyHtml != null ? bodyHtml() : this.bodyHtml,
  htmlUrl: htmlUrl ?? this.htmlUrl,
  user: user ?? this.user,
  createdAt: createdAt ?? this.createdAt,
  updatedAt: updatedAt ?? this.updatedAt,
  issueUrl: issueUrl ?? this.issueUrl,
  authorAssociation: authorAssociation ?? this.authorAssociation,
  performedViaGithubApp: performedViaGithubApp != null ? performedViaGithubApp() : this.performedViaGithubApp,
  reactions: reactions != null ? reactions() : this.reactions,
  pin: pin != null ? pin() : this.pin,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TimelineCommentEvent &&
          event == other.event &&
          actor == other.actor &&
          id == other.id &&
          nodeId == other.nodeId &&
          url == other.url &&
          body == other.body &&
          bodyText == other.bodyText &&
          bodyHtml == other.bodyHtml &&
          htmlUrl == other.htmlUrl &&
          user == other.user &&
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt &&
          issueUrl == other.issueUrl &&
          authorAssociation == other.authorAssociation &&
          performedViaGithubApp == other.performedViaGithubApp &&
          reactions == other.reactions &&
          pin == other.pin; } 
@override int get hashCode { return Object.hash(event, actor, id, nodeId, url, body, bodyText, bodyHtml, htmlUrl, user, createdAt, updatedAt, issueUrl, authorAssociation, performedViaGithubApp, reactions, pin); } 
@override String toString() { return 'TimelineCommentEvent(event: $event, actor: $actor, id: $id, nodeId: $nodeId, url: $url, body: $body, bodyText: $bodyText, bodyHtml: $bodyHtml, htmlUrl: $htmlUrl, user: $user, createdAt: $createdAt, updatedAt: $updatedAt, issueUrl: $issueUrl, authorAssociation: $authorAssociation, performedViaGithubApp: $performedViaGithubApp, reactions: $reactions, pin: $pin)'; } 
 }
