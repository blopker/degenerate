// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The level of privacy this team should have. The options are:
/// **For a non-nested team:**
///  * `secret` - only visible to organization owners and members of this team.
///  * `closed` - visible to all members of this organization.
/// Default: `secret`
/// **For a parent or child team:**
///  * `closed` - visible to all members of this organization.
/// Default for child team: `closed`
final class TeamsCreateRequestPrivacy {const TeamsCreateRequestPrivacy._(this.value);

factory TeamsCreateRequestPrivacy.fromJson(String json) { return switch (json) {
  'secret' => secret,
  'closed' => closed,
  _ => TeamsCreateRequestPrivacy._(json),
}; }

static const TeamsCreateRequestPrivacy secret = TeamsCreateRequestPrivacy._('secret');

static const TeamsCreateRequestPrivacy closed = TeamsCreateRequestPrivacy._('closed');

static const List<TeamsCreateRequestPrivacy> values = [secret, closed];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TeamsCreateRequestPrivacy && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TeamsCreateRequestPrivacy($value)'; } 
 }
/// The notification setting the team has chosen. The options are:
///  * `notifications_enabled` - team members receive notifications when the team is @mentioned.
///  * `notifications_disabled` - no one receives notifications.
/// Default: `notifications_enabled`
final class TeamsCreateRequestNotificationSetting {const TeamsCreateRequestNotificationSetting._(this.value);

factory TeamsCreateRequestNotificationSetting.fromJson(String json) { return switch (json) {
  'notifications_enabled' => notificationsEnabled,
  'notifications_disabled' => notificationsDisabled,
  _ => TeamsCreateRequestNotificationSetting._(json),
}; }

static const TeamsCreateRequestNotificationSetting notificationsEnabled = TeamsCreateRequestNotificationSetting._('notifications_enabled');

static const TeamsCreateRequestNotificationSetting notificationsDisabled = TeamsCreateRequestNotificationSetting._('notifications_disabled');

static const List<TeamsCreateRequestNotificationSetting> values = [notificationsEnabled, notificationsDisabled];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TeamsCreateRequestNotificationSetting && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TeamsCreateRequestNotificationSetting($value)'; } 
 }
/// **Closing down notice**. The permission that new repositories will be added to the team with when none is specified.
final class TeamsCreateRequestPermission {const TeamsCreateRequestPermission._(this.value);

factory TeamsCreateRequestPermission.fromJson(String json) { return switch (json) {
  'pull' => pull,
  'push' => push,
  _ => TeamsCreateRequestPermission._(json),
}; }

static const TeamsCreateRequestPermission pull = TeamsCreateRequestPermission._('pull');

static const TeamsCreateRequestPermission push = TeamsCreateRequestPermission._('push');

static const List<TeamsCreateRequestPermission> values = [pull, push];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TeamsCreateRequestPermission && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TeamsCreateRequestPermission($value)'; } 
 }
final class TeamsCreateRequest {const TeamsCreateRequest({required this.name, this.description, this.maintainers, this.repoNames, this.privacy, this.notificationSetting, this.permission = TeamsCreateRequestPermission.pull, this.parentTeamId, });

factory TeamsCreateRequest.fromJson(Map<String, dynamic> json) { return TeamsCreateRequest(
  name: json['name'] as String,
  description: json['description'] as String?,
  maintainers: (json['maintainers'] as List<dynamic>?)?.map((e) => e as String).toList(),
  repoNames: (json['repo_names'] as List<dynamic>?)?.map((e) => e as String).toList(),
  privacy: json['privacy'] != null ? TeamsCreateRequestPrivacy.fromJson(json['privacy'] as String) : null,
  notificationSetting: json['notification_setting'] != null ? TeamsCreateRequestNotificationSetting.fromJson(json['notification_setting'] as String) : null,
  permission: json.containsKey('permission') ? TeamsCreateRequestPermission.fromJson(json['permission'] as String) : TeamsCreateRequestPermission.pull,
  parentTeamId: json['parent_team_id'] != null ? (json['parent_team_id'] as num).toInt() : null,
); }

/// The name of the team.
final String name;

/// The description of the team.
final String? description;

/// List GitHub usernames for organization members who will become team maintainers.
final List<String>? maintainers;

/// The full name (e.g., "organization-name/repository-name") of repositories to add the team to.
final List<String>? repoNames;

/// The level of privacy this team should have. The options are:
/// **For a non-nested team:**
///  * `secret` - only visible to organization owners and members of this team.
///  * `closed` - visible to all members of this organization.
/// Default: `secret`
/// **For a parent or child team:**
///  * `closed` - visible to all members of this organization.
/// Default for child team: `closed`
final TeamsCreateRequestPrivacy? privacy;

/// The notification setting the team has chosen. The options are:
///  * `notifications_enabled` - team members receive notifications when the team is @mentioned.
///  * `notifications_disabled` - no one receives notifications.
/// Default: `notifications_enabled`
final TeamsCreateRequestNotificationSetting? notificationSetting;

/// **Closing down notice**. The permission that new repositories will be added to the team with when none is specified.
final TeamsCreateRequestPermission permission;

/// The ID of a team to set as the parent team.
final int? parentTeamId;

Map<String, dynamic> toJson() { return {
  'name': name,
  'description': ?description,
  'maintainers': ?maintainers,
  'repo_names': ?repoNames,
  if (privacy != null) 'privacy': privacy?.toJson(),
  if (notificationSetting != null) 'notification_setting': notificationSetting?.toJson(),
  'permission': permission.toJson(),
  'parent_team_id': ?parentTeamId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String; } 
TeamsCreateRequest copyWith({String? name, String Function()? description, List<String> Function()? maintainers, List<String> Function()? repoNames, TeamsCreateRequestPrivacy Function()? privacy, TeamsCreateRequestNotificationSetting Function()? notificationSetting, TeamsCreateRequestPermission Function()? permission, int Function()? parentTeamId, }) { return TeamsCreateRequest(
  name: name ?? this.name,
  description: description != null ? description() : this.description,
  maintainers: maintainers != null ? maintainers() : this.maintainers,
  repoNames: repoNames != null ? repoNames() : this.repoNames,
  privacy: privacy != null ? privacy() : this.privacy,
  notificationSetting: notificationSetting != null ? notificationSetting() : this.notificationSetting,
  permission: permission != null ? permission() : this.permission,
  parentTeamId: parentTeamId != null ? parentTeamId() : this.parentTeamId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TeamsCreateRequest &&
          name == other.name &&
          description == other.description &&
          listEquals(maintainers, other.maintainers) &&
          listEquals(repoNames, other.repoNames) &&
          privacy == other.privacy &&
          notificationSetting == other.notificationSetting &&
          permission == other.permission &&
          parentTeamId == other.parentTeamId; } 
@override int get hashCode { return Object.hash(name, description, Object.hashAll(maintainers ?? const []), Object.hashAll(repoNames ?? const []), privacy, notificationSetting, permission, parentTeamId); } 
@override String toString() { return 'TeamsCreateRequest(name: $name, description: $description, maintainers: $maintainers, repoNames: $repoNames, privacy: $privacy, notificationSetting: $notificationSetting, permission: $permission, parentTeamId: $parentTeamId)'; } 
 }
