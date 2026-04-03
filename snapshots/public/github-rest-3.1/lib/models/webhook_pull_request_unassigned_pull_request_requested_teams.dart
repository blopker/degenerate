// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'webhook_pull_request_unassigned_pull_request_requested_teams_parent.dart';@immutable final class WebhookPullRequestUnassignedPullRequestRequestedTeamsPrivacy {const WebhookPullRequestUnassignedPullRequestRequestedTeamsPrivacy._(this.value);

factory WebhookPullRequestUnassignedPullRequestRequestedTeamsPrivacy.fromJson(String json) { return switch (json) {
  'open' => open,
  'closed' => closed,
  'secret' => secret,
  _ => WebhookPullRequestUnassignedPullRequestRequestedTeamsPrivacy._(json),
}; }

static const WebhookPullRequestUnassignedPullRequestRequestedTeamsPrivacy open = WebhookPullRequestUnassignedPullRequestRequestedTeamsPrivacy._('open');

static const WebhookPullRequestUnassignedPullRequestRequestedTeamsPrivacy closed = WebhookPullRequestUnassignedPullRequestRequestedTeamsPrivacy._('closed');

static const WebhookPullRequestUnassignedPullRequestRequestedTeamsPrivacy secret = WebhookPullRequestUnassignedPullRequestRequestedTeamsPrivacy._('secret');

static const List<WebhookPullRequestUnassignedPullRequestRequestedTeamsPrivacy> values = [open, closed, secret];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookPullRequestUnassignedPullRequestRequestedTeamsPrivacy && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookPullRequestUnassignedPullRequestRequestedTeamsPrivacy($value)'; } 
 }
/// Groups of organization members that gives permissions on specified repositories.
@immutable final class WebhookPullRequestUnassignedPullRequestRequestedTeams {const WebhookPullRequestUnassignedPullRequestRequestedTeams({required this.id, required this.name, this.deleted, this.description, this.htmlUrl, this.membersUrl, this.nodeId, this.parent, this.permission, this.privacy, this.repositoriesUrl, this.slug, this.url, });

factory WebhookPullRequestUnassignedPullRequestRequestedTeams.fromJson(Map<String, dynamic> json) { return WebhookPullRequestUnassignedPullRequestRequestedTeams(
  deleted: json['deleted'] as bool?,
  description: json['description'] as String?,
  htmlUrl: json['html_url'] != null ? Uri.parse(json['html_url'] as String) : null,
  id: (json['id'] as num).toInt(),
  membersUrl: json['members_url'] as String?,
  name: json['name'] as String,
  nodeId: json['node_id'] as String?,
  parent: json['parent'] != null ? WebhookPullRequestUnassignedPullRequestRequestedTeamsParent.fromJson(json['parent'] as Map<String, dynamic>) : null,
  permission: json['permission'] as String?,
  privacy: json['privacy'] != null ? WebhookPullRequestUnassignedPullRequestRequestedTeamsPrivacy.fromJson(json['privacy'] as String) : null,
  repositoriesUrl: json['repositories_url'] != null ? Uri.parse(json['repositories_url'] as String) : null,
  slug: json['slug'] as String?,
  url: json['url'] != null ? Uri.parse(json['url'] as String) : null,
); }

final bool? deleted;

/// Description of the team
final String? description;

final Uri? htmlUrl;

/// Unique identifier of the team
final int id;

final String? membersUrl;

/// Name of the team
final String name;

final String? nodeId;

final WebhookPullRequestUnassignedPullRequestRequestedTeamsParent? parent;

/// Permission that the team will have for its repositories
final String? permission;

final WebhookPullRequestUnassignedPullRequestRequestedTeamsPrivacy? privacy;

final Uri? repositoriesUrl;

final String? slug;

/// URL for the team
final Uri? url;

Map<String, dynamic> toJson() { return {
  'deleted': ?deleted,
  'description': ?description,
  if (htmlUrl != null) 'html_url': htmlUrl?.toString(),
  'id': id,
  'members_url': ?membersUrl,
  'name': name,
  'node_id': ?nodeId,
  if (parent != null) 'parent': parent?.toJson(),
  'permission': ?permission,
  if (privacy != null) 'privacy': privacy?.toJson(),
  if (repositoriesUrl != null) 'repositories_url': repositoriesUrl?.toString(),
  'slug': ?slug,
  if (url != null) 'url': url?.toString(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is num &&
      json.containsKey('name') && json['name'] is String; } 
WebhookPullRequestUnassignedPullRequestRequestedTeams copyWith({bool Function()? deleted, String? Function()? description, Uri Function()? htmlUrl, int? id, String Function()? membersUrl, String? name, String Function()? nodeId, WebhookPullRequestUnassignedPullRequestRequestedTeamsParent? Function()? parent, String Function()? permission, WebhookPullRequestUnassignedPullRequestRequestedTeamsPrivacy Function()? privacy, Uri Function()? repositoriesUrl, String Function()? slug, Uri Function()? url, }) { return WebhookPullRequestUnassignedPullRequestRequestedTeams(
  deleted: deleted != null ? deleted() : this.deleted,
  description: description != null ? description() : this.description,
  htmlUrl: htmlUrl != null ? htmlUrl() : this.htmlUrl,
  id: id ?? this.id,
  membersUrl: membersUrl != null ? membersUrl() : this.membersUrl,
  name: name ?? this.name,
  nodeId: nodeId != null ? nodeId() : this.nodeId,
  parent: parent != null ? parent() : this.parent,
  permission: permission != null ? permission() : this.permission,
  privacy: privacy != null ? privacy() : this.privacy,
  repositoriesUrl: repositoriesUrl != null ? repositoriesUrl() : this.repositoriesUrl,
  slug: slug != null ? slug() : this.slug,
  url: url != null ? url() : this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestUnassignedPullRequestRequestedTeams &&
          deleted == other.deleted &&
          description == other.description &&
          htmlUrl == other.htmlUrl &&
          id == other.id &&
          membersUrl == other.membersUrl &&
          name == other.name &&
          nodeId == other.nodeId &&
          parent == other.parent &&
          permission == other.permission &&
          privacy == other.privacy &&
          repositoriesUrl == other.repositoriesUrl &&
          slug == other.slug &&
          url == other.url; } 
@override int get hashCode { return Object.hash(deleted, description, htmlUrl, id, membersUrl, name, nodeId, parent, permission, privacy, repositoriesUrl, slug, url); } 
@override String toString() { return 'WebhookPullRequestUnassignedPullRequestRequestedTeams(deleted: $deleted, description: $description, htmlUrl: $htmlUrl, id: $id, membersUrl: $membersUrl, name: $name, nodeId: $nodeId, parent: $parent, permission: $permission, privacy: $privacy, repositoriesUrl: $repositoriesUrl, slug: $slug, url: $url)'; } 
 }
