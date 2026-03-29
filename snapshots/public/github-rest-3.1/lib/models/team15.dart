// GENERATED CODE - DO NOT MODIFY BY HAND

import 'team15_parent.dart';final class Team15Privacy {const Team15Privacy._(this.value);

factory Team15Privacy.fromJson(String json) { return switch (json) {
  'open' => open,
  'closed' => closed,
  'secret' => secret,
  _ => Team15Privacy._(json),
}; }

static const Team15Privacy open = Team15Privacy._('open');

static const Team15Privacy closed = Team15Privacy._('closed');

static const Team15Privacy secret = Team15Privacy._('secret');

static const List<Team15Privacy> values = [open, closed, secret];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Team15Privacy && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Team15Privacy($value)'; } 
 }
/// Groups of organization members that gives permissions on specified repositories.
final class Team15 {const Team15({this.deleted, required this.description, required this.htmlUrl, required this.id, required this.membersUrl, required this.name, required this.nodeId, this.parent, required this.permission, required this.privacy, required this.repositoriesUrl, required this.slug, required this.url, });

factory Team15.fromJson(Map<String, dynamic> json) { return Team15(
  deleted: json['deleted'] as bool?,
  description: json['description'] as String?,
  htmlUrl: Uri.parse(json['html_url'] as String),
  id: (json['id'] as num).toInt(),
  membersUrl: json['members_url'] as String,
  name: json['name'] as String,
  nodeId: json['node_id'] as String,
  parent: json['parent'] != null ? Team15Parent.fromJson(json['parent'] as Map<String, dynamic>) : null,
  permission: json['permission'] as String,
  privacy: Team15Privacy.fromJson(json['privacy'] as String),
  repositoriesUrl: Uri.parse(json['repositories_url'] as String),
  slug: json['slug'] as String,
  url: Uri.parse(json['url'] as String),
); }

final bool? deleted;

/// Description of the team
final String? description;

final Uri htmlUrl;

/// Unique identifier of the team
final int id;

final String membersUrl;

/// Name of the team
final String name;

final String nodeId;

final Team15Parent? parent;

/// Permission that the team will have for its repositories
final String permission;

final Team15Privacy privacy;

final Uri repositoriesUrl;

final String slug;

/// URL for the team
final Uri url;

Map<String, dynamic> toJson() { return {
  'deleted': ?deleted,
  'description': ?description,
  'html_url': htmlUrl.toString(),
  'id': id,
  'members_url': membersUrl,
  'name': name,
  'node_id': nodeId,
  if (parent != null) 'parent': parent?.toJson(),
  'permission': permission,
  'privacy': privacy.toJson(),
  'repositories_url': repositoriesUrl.toString(),
  'slug': slug,
  'url': url.toString(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('description') && json['description'] is String &&
      json.containsKey('html_url') && json['html_url'] is String &&
      json.containsKey('id') && json['id'] is num &&
      json.containsKey('members_url') && json['members_url'] is String &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('node_id') && json['node_id'] is String &&
      json.containsKey('permission') && json['permission'] is String &&
      json.containsKey('privacy') &&
      json.containsKey('repositories_url') && json['repositories_url'] is String &&
      json.containsKey('slug') && json['slug'] is String &&
      json.containsKey('url') && json['url'] is String; } 
Team15 copyWith({bool Function()? deleted, String? Function()? description, Uri? htmlUrl, int? id, String? membersUrl, String? name, String? nodeId, Team15Parent? Function()? parent, String? permission, Team15Privacy? privacy, Uri? repositoriesUrl, String? slug, Uri? url, }) { return Team15(
  deleted: deleted != null ? deleted() : this.deleted,
  description: description != null ? description() : this.description,
  htmlUrl: htmlUrl ?? this.htmlUrl,
  id: id ?? this.id,
  membersUrl: membersUrl ?? this.membersUrl,
  name: name ?? this.name,
  nodeId: nodeId ?? this.nodeId,
  parent: parent != null ? parent() : this.parent,
  permission: permission ?? this.permission,
  privacy: privacy ?? this.privacy,
  repositoriesUrl: repositoriesUrl ?? this.repositoriesUrl,
  slug: slug ?? this.slug,
  url: url ?? this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Team15 &&
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
@override String toString() { return 'Team15(deleted: $deleted, description: $description, htmlUrl: $htmlUrl, id: $id, membersUrl: $membersUrl, name: $name, nodeId: $nodeId, parent: $parent, permission: $permission, privacy: $privacy, repositoriesUrl: $repositoriesUrl, slug: $slug, url: $url)'; } 
 }
