// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhooksTeamParentPrivacy {const WebhooksTeamParentPrivacy._(this.value);

factory WebhooksTeamParentPrivacy.fromJson(String json) { return switch (json) {
  'open' => open,
  'closed' => closed,
  'secret' => secret,
  _ => WebhooksTeamParentPrivacy._(json),
}; }

static const WebhooksTeamParentPrivacy open = WebhooksTeamParentPrivacy._('open');

static const WebhooksTeamParentPrivacy closed = WebhooksTeamParentPrivacy._('closed');

static const WebhooksTeamParentPrivacy secret = WebhooksTeamParentPrivacy._('secret');

static const List<WebhooksTeamParentPrivacy> values = [open, closed, secret];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhooksTeamParentPrivacy && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhooksTeamParentPrivacy($value)'; } 
 }
/// Whether team members will receive notifications when their team is @mentioned
@immutable final class WebhooksTeamParentNotificationSetting {const WebhooksTeamParentNotificationSetting._(this.value);

factory WebhooksTeamParentNotificationSetting.fromJson(String json) { return switch (json) {
  'notifications_enabled' => notificationsEnabled,
  'notifications_disabled' => notificationsDisabled,
  _ => WebhooksTeamParentNotificationSetting._(json),
}; }

static const WebhooksTeamParentNotificationSetting notificationsEnabled = WebhooksTeamParentNotificationSetting._('notifications_enabled');

static const WebhooksTeamParentNotificationSetting notificationsDisabled = WebhooksTeamParentNotificationSetting._('notifications_disabled');

static const List<WebhooksTeamParentNotificationSetting> values = [notificationsEnabled, notificationsDisabled];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhooksTeamParentNotificationSetting && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhooksTeamParentNotificationSetting($value)'; } 
 }
/// The ownership type of the team
@immutable final class WebhooksTeamParentType {const WebhooksTeamParentType._(this.value);

factory WebhooksTeamParentType.fromJson(String json) { return switch (json) {
  'enterprise' => enterprise,
  'organization' => organization,
  _ => WebhooksTeamParentType._(json),
}; }

static const WebhooksTeamParentType enterprise = WebhooksTeamParentType._('enterprise');

static const WebhooksTeamParentType organization = WebhooksTeamParentType._('organization');

static const List<WebhooksTeamParentType> values = [enterprise, organization];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhooksTeamParentType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhooksTeamParentType($value)'; } 
 }
@immutable final class WebhooksTeamParent {const WebhooksTeamParent({required this.description, required this.htmlUrl, required this.id, required this.membersUrl, required this.name, required this.nodeId, required this.permission, required this.privacy, required this.notificationSetting, required this.repositoriesUrl, required this.slug, required this.url, required this.type, this.organizationId, this.enterpriseId, });

factory WebhooksTeamParent.fromJson(Map<String, dynamic> json) { return WebhooksTeamParent(
  description: json['description'] as String?,
  htmlUrl: Uri.parse(json['html_url'] as String),
  id: (json['id'] as num).toInt(),
  membersUrl: json['members_url'] as String,
  name: json['name'] as String,
  nodeId: json['node_id'] as String,
  permission: json['permission'] as String,
  privacy: WebhooksTeamParentPrivacy.fromJson(json['privacy'] as String),
  notificationSetting: WebhooksTeamParentNotificationSetting.fromJson(json['notification_setting'] as String),
  repositoriesUrl: Uri.parse(json['repositories_url'] as String),
  slug: json['slug'] as String,
  url: Uri.parse(json['url'] as String),
  type: WebhooksTeamParentType.fromJson(json['type'] as String),
  organizationId: json['organization_id'] != null ? (json['organization_id'] as num).toInt() : null,
  enterpriseId: json['enterprise_id'] != null ? (json['enterprise_id'] as num).toInt() : null,
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

final WebhooksTeamParentPrivacy privacy;

/// Whether team members will receive notifications when their team is @mentioned
final WebhooksTeamParentNotificationSetting notificationSetting;

final Uri repositoriesUrl;

final String slug;

/// URL for the team
final Uri url;

/// The ownership type of the team
final WebhooksTeamParentType type;

/// Unique identifier of the organization to which this team belongs
final int? organizationId;

/// Unique identifier of the enterprise to which this team belongs
final int? enterpriseId;

Map<String, dynamic> toJson() { return {
  'description': ?description,
  'html_url': htmlUrl.toString(),
  'id': id,
  'members_url': membersUrl,
  'name': name,
  'node_id': nodeId,
  'permission': permission,
  'privacy': privacy.toJson(),
  'notification_setting': notificationSetting.toJson(),
  'repositories_url': repositoriesUrl.toString(),
  'slug': slug,
  'url': url.toString(),
  'type': type.toJson(),
  'organization_id': ?organizationId,
  'enterprise_id': ?enterpriseId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('description') && json['description'] is String &&
      json.containsKey('html_url') && json['html_url'] is String &&
      json.containsKey('id') && json['id'] is num &&
      json.containsKey('members_url') && json['members_url'] is String &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('node_id') && json['node_id'] is String &&
      json.containsKey('permission') && json['permission'] is String &&
      json.containsKey('privacy') &&
      json.containsKey('notification_setting') &&
      json.containsKey('repositories_url') && json['repositories_url'] is String &&
      json.containsKey('slug') && json['slug'] is String &&
      json.containsKey('url') && json['url'] is String &&
      json.containsKey('type'); } 
WebhooksTeamParent copyWith({String? Function()? description, Uri? htmlUrl, int? id, String? membersUrl, String? name, String? nodeId, String? permission, WebhooksTeamParentPrivacy? privacy, WebhooksTeamParentNotificationSetting? notificationSetting, Uri? repositoriesUrl, String? slug, Uri? url, WebhooksTeamParentType? type, int Function()? organizationId, int Function()? enterpriseId, }) { return WebhooksTeamParent(
  description: description != null ? description() : this.description,
  htmlUrl: htmlUrl ?? this.htmlUrl,
  id: id ?? this.id,
  membersUrl: membersUrl ?? this.membersUrl,
  name: name ?? this.name,
  nodeId: nodeId ?? this.nodeId,
  permission: permission ?? this.permission,
  privacy: privacy ?? this.privacy,
  notificationSetting: notificationSetting ?? this.notificationSetting,
  repositoriesUrl: repositoriesUrl ?? this.repositoriesUrl,
  slug: slug ?? this.slug,
  url: url ?? this.url,
  type: type ?? this.type,
  organizationId: organizationId != null ? organizationId() : this.organizationId,
  enterpriseId: enterpriseId != null ? enterpriseId() : this.enterpriseId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhooksTeamParent &&
          description == other.description &&
          htmlUrl == other.htmlUrl &&
          id == other.id &&
          membersUrl == other.membersUrl &&
          name == other.name &&
          nodeId == other.nodeId &&
          permission == other.permission &&
          privacy == other.privacy &&
          notificationSetting == other.notificationSetting &&
          repositoriesUrl == other.repositoriesUrl &&
          slug == other.slug &&
          url == other.url &&
          type == other.type &&
          organizationId == other.organizationId &&
          enterpriseId == other.enterpriseId; } 
@override int get hashCode { return Object.hash(description, htmlUrl, id, membersUrl, name, nodeId, permission, privacy, notificationSetting, repositoriesUrl, slug, url, type, organizationId, enterpriseId); } 
@override String toString() { return 'WebhooksTeamParent(description: $description, htmlUrl: $htmlUrl, id: $id, membersUrl: $membersUrl, name: $name, nodeId: $nodeId, permission: $permission, privacy: $privacy, notificationSetting: $notificationSetting, repositoriesUrl: $repositoriesUrl, slug: $slug, url: $url, type: $type, organizationId: $organizationId, enterpriseId: $enterpriseId)'; } 
 }
