// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'apps_create_from_manifest_response_owner.dart';import 'apps_create_from_manifest_response_permissions.dart';import 'enterprise.dart';import 'simple_user.dart';final class AppsCreateFromManifestResponse {const AppsCreateFromManifestResponse({required this.id, this.slug, required this.nodeId, required this.clientId, required this.owner, required this.name, required this.description, required this.externalUrl, required this.htmlUrl, required this.createdAt, required this.updatedAt, required this.permissions, required this.events, this.installationsCount, required this.clientSecret, required this.webhookSecret, required this.pem, });

factory AppsCreateFromManifestResponse.fromJson(Map<String, dynamic> json) { return AppsCreateFromManifestResponse(
  id: (json['id'] as num).toInt(),
  slug: json['slug'] as String?,
  nodeId: json['node_id'] as String,
  clientId: json['client_id'] as String,
  owner: OneOf2.parse(json['owner'], fromA: (v) => SimpleUser.fromJson(v as Map<String, dynamic>), fromB: (v) => Enterprise.fromJson(v as Map<String, dynamic>),),
  name: json['name'] as String,
  description: json['description'] as String?,
  externalUrl: Uri.parse(json['external_url'] as String),
  htmlUrl: Uri.parse(json['html_url'] as String),
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
  permissions: AppsCreateFromManifestResponsePermissions.fromJson(json['permissions'] as Map<String, dynamic>),
  events: (json['events'] as List<dynamic>).map((e) => e as String).toList(),
  installationsCount: json['installations_count'] != null ? (json['installations_count'] as num).toInt() : null,
  clientSecret: json['client_secret'] as String,
  webhookSecret: json['webhook_secret'] as String?,
  pem: json['pem'] as String,
); }

/// Unique identifier of the GitHub app
final int id;

/// The slug name of the GitHub app
final String? slug;

final String nodeId;

final String clientId;

final AppsCreateFromManifestResponseOwner owner;

/// The name of the GitHub app
final String name;

final String? description;

final Uri externalUrl;

final Uri htmlUrl;

final DateTime createdAt;

final DateTime updatedAt;

/// The set of permissions for the GitHub app
final AppsCreateFromManifestResponsePermissions permissions;

/// The list of events for the GitHub app. Note that the `installation_target`, `security_advisory`, and `meta` events are not included because they are global events and not specific to an installation.
final List<String> events;

/// The number of installations associated with the GitHub app. Only returned when the integration is requesting details about itself.
final int? installationsCount;

final String clientSecret;

final String? webhookSecret;

final String pem;

Map<String, dynamic> toJson() { return {
  'id': id,
  'slug': ?slug,
  'node_id': nodeId,
  'client_id': clientId,
  'owner': owner.toJson(),
  'name': name,
  'description': ?description,
  'external_url': externalUrl.toString(),
  'html_url': htmlUrl.toString(),
  'created_at': createdAt.toIso8601String(),
  'updated_at': updatedAt.toIso8601String(),
  'permissions': permissions.toJson(),
  'events': events,
  'installations_count': ?installationsCount,
  'client_secret': clientSecret,
  'webhook_secret': ?webhookSecret,
  'pem': pem,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is num &&
      json.containsKey('node_id') && json['node_id'] is String &&
      json.containsKey('client_id') && json['client_id'] is String &&
      json.containsKey('owner') &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('description') && json['description'] is String &&
      json.containsKey('external_url') && json['external_url'] is String &&
      json.containsKey('html_url') && json['html_url'] is String &&
      json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('updated_at') && json['updated_at'] is String &&
      json.containsKey('permissions') &&
      json.containsKey('events') &&
      json.containsKey('client_secret') && json['client_secret'] is String &&
      json.containsKey('webhook_secret') && json['webhook_secret'] is String &&
      json.containsKey('pem') && json['pem'] is String; } 
AppsCreateFromManifestResponse copyWith({int? id, String Function()? slug, String? nodeId, String? clientId, AppsCreateFromManifestResponseOwner? owner, String? name, String? Function()? description, Uri? externalUrl, Uri? htmlUrl, DateTime? createdAt, DateTime? updatedAt, AppsCreateFromManifestResponsePermissions? permissions, List<String>? events, int Function()? installationsCount, String? clientSecret, String? Function()? webhookSecret, String? pem, }) { return AppsCreateFromManifestResponse(
  id: id ?? this.id,
  slug: slug != null ? slug() : this.slug,
  nodeId: nodeId ?? this.nodeId,
  clientId: clientId ?? this.clientId,
  owner: owner ?? this.owner,
  name: name ?? this.name,
  description: description != null ? description() : this.description,
  externalUrl: externalUrl ?? this.externalUrl,
  htmlUrl: htmlUrl ?? this.htmlUrl,
  createdAt: createdAt ?? this.createdAt,
  updatedAt: updatedAt ?? this.updatedAt,
  permissions: permissions ?? this.permissions,
  events: events ?? this.events,
  installationsCount: installationsCount != null ? installationsCount() : this.installationsCount,
  clientSecret: clientSecret ?? this.clientSecret,
  webhookSecret: webhookSecret != null ? webhookSecret() : this.webhookSecret,
  pem: pem ?? this.pem,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AppsCreateFromManifestResponse &&
          id == other.id &&
          slug == other.slug &&
          nodeId == other.nodeId &&
          clientId == other.clientId &&
          owner == other.owner &&
          name == other.name &&
          description == other.description &&
          externalUrl == other.externalUrl &&
          htmlUrl == other.htmlUrl &&
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt &&
          permissions == other.permissions &&
          listEquals(events, other.events) &&
          installationsCount == other.installationsCount &&
          clientSecret == other.clientSecret &&
          webhookSecret == other.webhookSecret &&
          pem == other.pem; } 
@override int get hashCode { return Object.hash(id, slug, nodeId, clientId, owner, name, description, externalUrl, htmlUrl, createdAt, updatedAt, permissions, Object.hashAll(events), installationsCount, clientSecret, webhookSecret, pem); } 
@override String toString() { return 'AppsCreateFromManifestResponse(id: $id, slug: $slug, nodeId: $nodeId, clientId: $clientId, owner: $owner, name: $name, description: $description, externalUrl: $externalUrl, htmlUrl: $htmlUrl, createdAt: $createdAt, updatedAt: $updatedAt, permissions: $permissions, events: $events, installationsCount: $installationsCount, clientSecret: $clientSecret, webhookSecret: $webhookSecret, pem: $pem)'; } 
 }
