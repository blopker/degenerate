// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Retired: this field is no longer supported.
/// Whether the enterprise team should be reflected in each organization.
/// This value cannot be set.
/// 
@immutable final class EnterpriseTeamsCreateRequestSyncToOrganizations {const EnterpriseTeamsCreateRequestSyncToOrganizations._(this.value);

factory EnterpriseTeamsCreateRequestSyncToOrganizations.fromJson(String json) { return switch (json) {
  'all' => all,
  'disabled' => disabled,
  _ => EnterpriseTeamsCreateRequestSyncToOrganizations._(json),
}; }

static const EnterpriseTeamsCreateRequestSyncToOrganizations all = EnterpriseTeamsCreateRequestSyncToOrganizations._('all');

static const EnterpriseTeamsCreateRequestSyncToOrganizations disabled = EnterpriseTeamsCreateRequestSyncToOrganizations._('disabled');

static const List<EnterpriseTeamsCreateRequestSyncToOrganizations> values = [all, disabled];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EnterpriseTeamsCreateRequestSyncToOrganizations && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'EnterpriseTeamsCreateRequestSyncToOrganizations($value)'; } 
 }
/// Specifies which organizations in the enterprise should have access to this team. Can be one of `disabled`, `selected`, or `all`.
/// `disabled`: The team is not assigned to any organizations. This is the default when you create a new team.
/// `selected`: The team is assigned to specific organizations. You can then use the [add organization assignments API](https://docs.github.com/rest/enterprise-teams/enterprise-team-organizations#add-organization-assignments) endpoint.
/// `all`: The team is assigned to all current and future organizations in the enterprise.
/// 
@immutable final class EnterpriseTeamsCreateRequestOrganizationSelectionType {const EnterpriseTeamsCreateRequestOrganizationSelectionType._(this.value);

factory EnterpriseTeamsCreateRequestOrganizationSelectionType.fromJson(String json) { return switch (json) {
  'disabled' => disabled,
  'selected' => selected,
  'all' => all,
  _ => EnterpriseTeamsCreateRequestOrganizationSelectionType._(json),
}; }

static const EnterpriseTeamsCreateRequestOrganizationSelectionType disabled = EnterpriseTeamsCreateRequestOrganizationSelectionType._('disabled');

static const EnterpriseTeamsCreateRequestOrganizationSelectionType selected = EnterpriseTeamsCreateRequestOrganizationSelectionType._('selected');

static const EnterpriseTeamsCreateRequestOrganizationSelectionType all = EnterpriseTeamsCreateRequestOrganizationSelectionType._('all');

static const List<EnterpriseTeamsCreateRequestOrganizationSelectionType> values = [disabled, selected, all];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EnterpriseTeamsCreateRequestOrganizationSelectionType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'EnterpriseTeamsCreateRequestOrganizationSelectionType($value)'; } 
 }
@immutable final class EnterpriseTeamsCreateRequest {const EnterpriseTeamsCreateRequest({required this.name, this.description = const Omittable.absent(), this.syncToOrganizations = EnterpriseTeamsCreateRequestSyncToOrganizations.disabled, this.organizationSelectionType = EnterpriseTeamsCreateRequestOrganizationSelectionType.disabled, this.groupId = const Omittable.absent(), });

factory EnterpriseTeamsCreateRequest.fromJson(Map<String, dynamic> json) { return EnterpriseTeamsCreateRequest(
  name: json['name'] as String,
  description: json.containsKey('description') ? Omittable(json['description'] as String?) : const Omittable.absent(),
  syncToOrganizations: json.containsKey('sync_to_organizations') ? EnterpriseTeamsCreateRequestSyncToOrganizations.fromJson(json['sync_to_organizations'] as String) : EnterpriseTeamsCreateRequestSyncToOrganizations.disabled,
  organizationSelectionType: json.containsKey('organization_selection_type') ? EnterpriseTeamsCreateRequestOrganizationSelectionType.fromJson(json['organization_selection_type'] as String) : EnterpriseTeamsCreateRequestOrganizationSelectionType.disabled,
  groupId: json.containsKey('group_id') ? Omittable(json['group_id'] as String?) : const Omittable.absent(),
); }

/// The name of the team.
final String name;

/// A description of the team.
final Omittable<String?> description;

/// Retired: this field is no longer supported.
/// Whether the enterprise team should be reflected in each organization.
/// This value cannot be set.
/// 
final EnterpriseTeamsCreateRequestSyncToOrganizations syncToOrganizations;

/// Specifies which organizations in the enterprise should have access to this team. Can be one of `disabled`, `selected`, or `all`.
/// `disabled`: The team is not assigned to any organizations. This is the default when you create a new team.
/// `selected`: The team is assigned to specific organizations. You can then use the [add organization assignments API](https://docs.github.com/rest/enterprise-teams/enterprise-team-organizations#add-organization-assignments) endpoint.
/// `all`: The team is assigned to all current and future organizations in the enterprise.
/// 
final EnterpriseTeamsCreateRequestOrganizationSelectionType organizationSelectionType;

/// The ID of the IdP group to assign team membership with. You can get this value from the [REST API endpoints for SCIM](https://docs.github.com/rest/scim#list-provisioned-scim-groups-for-an-enterprise).
final Omittable<String?> groupId;

Map<String, dynamic> toJson() { return {
  'name': name,
  if (description.isPresent) 'description': description.value,
  'sync_to_organizations': syncToOrganizations.toJson(),
  'organization_selection_type': organizationSelectionType.toJson(),
  if (groupId.isPresent) 'group_id': groupId.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String; } 
EnterpriseTeamsCreateRequest copyWith({String? name, Omittable<String?>? description, EnterpriseTeamsCreateRequestSyncToOrganizations Function()? syncToOrganizations, EnterpriseTeamsCreateRequestOrganizationSelectionType Function()? organizationSelectionType, Omittable<String?>? groupId, }) { return EnterpriseTeamsCreateRequest(
  name: name ?? this.name,
  description: description ?? this.description,
  syncToOrganizations: syncToOrganizations != null ? syncToOrganizations() : this.syncToOrganizations,
  organizationSelectionType: organizationSelectionType != null ? organizationSelectionType() : this.organizationSelectionType,
  groupId: groupId ?? this.groupId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EnterpriseTeamsCreateRequest &&
          name == other.name &&
          description == other.description &&
          syncToOrganizations == other.syncToOrganizations &&
          organizationSelectionType == other.organizationSelectionType &&
          groupId == other.groupId; } 
@override int get hashCode { return Object.hash(name, description, syncToOrganizations, organizationSelectionType, groupId); } 
@override String toString() { return 'EnterpriseTeamsCreateRequest(name: $name, description: $description, syncToOrganizations: $syncToOrganizations, organizationSelectionType: $organizationSelectionType, groupId: $groupId)'; } 
 }
