// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'branch_restriction_policy_apps_owner.dart';import 'branch_restriction_policy_apps_permissions.dart';final class BranchRestrictionPolicyApps {const BranchRestrictionPolicyApps({this.id, this.slug, this.nodeId, this.owner, this.name, this.clientId, this.description, this.externalUrl, this.htmlUrl, this.createdAt, this.updatedAt, this.permissions, this.events, });

factory BranchRestrictionPolicyApps.fromJson(Map<String, dynamic> json) { return BranchRestrictionPolicyApps(
  id: json['id'] != null ? (json['id'] as num).toInt() : null,
  slug: json['slug'] as String?,
  nodeId: json['node_id'] as String?,
  owner: json['owner'] != null ? BranchRestrictionPolicyAppsOwner.fromJson(json['owner'] as Map<String, dynamic>) : null,
  name: json['name'] as String?,
  clientId: json['client_id'] as String?,
  description: json['description'] as String?,
  externalUrl: json['external_url'] as String?,
  htmlUrl: json['html_url'] as String?,
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
  permissions: json['permissions'] != null ? BranchRestrictionPolicyAppsPermissions.fromJson(json['permissions'] as Map<String, dynamic>) : null,
  events: (json['events'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

final int? id;

final String? slug;

final String? nodeId;

final BranchRestrictionPolicyAppsOwner? owner;

final String? name;

final String? clientId;

final String? description;

final String? externalUrl;

final String? htmlUrl;

final String? createdAt;

final String? updatedAt;

final BranchRestrictionPolicyAppsPermissions? permissions;

final List<String>? events;

Map<String, dynamic> toJson() { return {
  'id': ?id,
  'slug': ?slug,
  'node_id': ?nodeId,
  if (owner != null) 'owner': owner?.toJson(),
  'name': ?name,
  'client_id': ?clientId,
  'description': ?description,
  'external_url': ?externalUrl,
  'html_url': ?htmlUrl,
  'created_at': ?createdAt,
  'updated_at': ?updatedAt,
  if (permissions != null) 'permissions': permissions?.toJson(),
  'events': ?events,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
BranchRestrictionPolicyApps copyWith({int Function()? id, String Function()? slug, String Function()? nodeId, BranchRestrictionPolicyAppsOwner Function()? owner, String Function()? name, String Function()? clientId, String Function()? description, String Function()? externalUrl, String Function()? htmlUrl, String Function()? createdAt, String Function()? updatedAt, BranchRestrictionPolicyAppsPermissions Function()? permissions, List<String> Function()? events, }) { return BranchRestrictionPolicyApps(
  id: id != null ? id() : this.id,
  slug: slug != null ? slug() : this.slug,
  nodeId: nodeId != null ? nodeId() : this.nodeId,
  owner: owner != null ? owner() : this.owner,
  name: name != null ? name() : this.name,
  clientId: clientId != null ? clientId() : this.clientId,
  description: description != null ? description() : this.description,
  externalUrl: externalUrl != null ? externalUrl() : this.externalUrl,
  htmlUrl: htmlUrl != null ? htmlUrl() : this.htmlUrl,
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  updatedAt: updatedAt != null ? updatedAt() : this.updatedAt,
  permissions: permissions != null ? permissions() : this.permissions,
  events: events != null ? events() : this.events,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BranchRestrictionPolicyApps &&
          id == other.id &&
          slug == other.slug &&
          nodeId == other.nodeId &&
          owner == other.owner &&
          name == other.name &&
          clientId == other.clientId &&
          description == other.description &&
          externalUrl == other.externalUrl &&
          htmlUrl == other.htmlUrl &&
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt &&
          permissions == other.permissions &&
          listEquals(events, other.events); } 
@override int get hashCode { return Object.hash(id, slug, nodeId, owner, name, clientId, description, externalUrl, htmlUrl, createdAt, updatedAt, permissions, Object.hashAll(events ?? const [])); } 
@override String toString() { return 'BranchRestrictionPolicyApps(id: $id, slug: $slug, nodeId: $nodeId, owner: $owner, name: $name, clientId: $clientId, description: $description, externalUrl: $externalUrl, htmlUrl: $htmlUrl, createdAt: $createdAt, updatedAt: $updatedAt, permissions: $permissions, events: $events)'; } 
 }
