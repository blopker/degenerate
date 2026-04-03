// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class Team18ParentPrivacy {const Team18ParentPrivacy._(this.value);

factory Team18ParentPrivacy.fromJson(String json) { return switch (json) {
  'open' => open,
  'closed' => closed,
  'secret' => secret,
  _ => Team18ParentPrivacy._(json),
}; }

static const Team18ParentPrivacy open = Team18ParentPrivacy._('open');

static const Team18ParentPrivacy closed = Team18ParentPrivacy._('closed');

static const Team18ParentPrivacy secret = Team18ParentPrivacy._('secret');

static const List<Team18ParentPrivacy> values = [open, closed, secret];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Team18ParentPrivacy && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Team18ParentPrivacy($value)'; } 
 }
@immutable final class Team18Parent {const Team18Parent({required this.description, required this.htmlUrl, required this.id, required this.membersUrl, required this.name, required this.nodeId, required this.permission, required this.privacy, required this.repositoriesUrl, required this.slug, required this.url, });

factory Team18Parent.fromJson(Map<String, dynamic> json) { return Team18Parent(
  description: json['description'] as String?,
  htmlUrl: Uri.parse(json['html_url'] as String),
  id: (json['id'] as num).toInt(),
  membersUrl: json['members_url'] as String,
  name: json['name'] as String,
  nodeId: json['node_id'] as String,
  permission: json['permission'] as String,
  privacy: Team18ParentPrivacy.fromJson(json['privacy'] as String),
  repositoriesUrl: Uri.parse(json['repositories_url'] as String),
  slug: json['slug'] as String,
  url: Uri.parse(json['url'] as String),
); }

/// Description of the team
final String? description;

final Uri htmlUrl;

/// Unique identifier of the team
final int id;

final String membersUrl;

/// Name of the team
final String name;

final String nodeId;

/// Permission that the team will have for its repositories
final String permission;

final Team18ParentPrivacy privacy;

final Uri repositoriesUrl;

final String slug;

/// URL for the team
final Uri url;

Map<String, dynamic> toJson() { return {
  'description': ?description,
  'html_url': htmlUrl.toString(),
  'id': id,
  'members_url': membersUrl,
  'name': name,
  'node_id': nodeId,
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
Team18Parent copyWith({String? Function()? description, Uri? htmlUrl, int? id, String? membersUrl, String? name, String? nodeId, String? permission, Team18ParentPrivacy? privacy, Uri? repositoriesUrl, String? slug, Uri? url, }) { return Team18Parent(
  description: description != null ? description() : this.description,
  htmlUrl: htmlUrl ?? this.htmlUrl,
  id: id ?? this.id,
  membersUrl: membersUrl ?? this.membersUrl,
  name: name ?? this.name,
  nodeId: nodeId ?? this.nodeId,
  permission: permission ?? this.permission,
  privacy: privacy ?? this.privacy,
  repositoriesUrl: repositoriesUrl ?? this.repositoriesUrl,
  slug: slug ?? this.slug,
  url: url ?? this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Team18Parent &&
          description == other.description &&
          htmlUrl == other.htmlUrl &&
          id == other.id &&
          membersUrl == other.membersUrl &&
          name == other.name &&
          nodeId == other.nodeId &&
          permission == other.permission &&
          privacy == other.privacy &&
          repositoriesUrl == other.repositoriesUrl &&
          slug == other.slug &&
          url == other.url; } 
@override int get hashCode { return Object.hash(description, htmlUrl, id, membersUrl, name, nodeId, permission, privacy, repositoriesUrl, slug, url); } 
@override String toString() { return 'Team18Parent(description: $description, htmlUrl: $htmlUrl, id: $id, membersUrl: $membersUrl, name: $name, nodeId: $nodeId, permission: $permission, privacy: $privacy, repositoriesUrl: $repositoriesUrl, slug: $slug, url: $url)'; } 
 }
