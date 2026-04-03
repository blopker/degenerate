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
@immutable final class EnterpriseTeamsCreateRequest {const EnterpriseTeamsCreateRequest({required this.name, this.description, this.syncToOrganizations = EnterpriseTeamsCreateRequestSyncToOrganizations.disabled, this.organizationSelectionType = EnterpriseTeamsCreateRequestOrganizationSelectionType.disabled, this.groupId, });

factory EnterpriseTeamsCreateRequest.fromJson(Map<String, dynamic> json) { return EnterpriseTeamsCreateRequest(
  name: json['name'] as String,
  description: json['description'] as String?,
  syncToOrganizations: json.containsKey('sync_to_organizations') ? EnterpriseTeamsCreateRequestSyncToOrganizations.fromJson(json['sync_to_organizations'] as String) : EnterpriseTeamsCreateRequestSyncToOrganizations.disabled,
  organizationSelectionType: json.containsKey('organization_selection_type') ? EnterpriseTeamsCreateRequestOrganizationSelectionType.fromJson(json['organization_selection_type'] as String) : EnterpriseTeamsCreateRequestOrganizationSelectionType.disabled,
  groupId: json['group_id'] as String?,
); }

/// The name of the team.
final String name;

/// A description of the team.
final String? description;

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
final String? groupId;

Map<String, dynamic> toJson() { return {
  'name': name,
  'description': ?description,
  'sync_to_organizations': syncToOrganizations.toJson(),
  'organization_selection_type': organizationSelectionType.toJson(),
  'group_id': ?groupId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String; } 
EnterpriseTeamsCreateRequest copyWith({String? name, String? Function()? description, EnterpriseTeamsCreateRequestSyncToOrganizations Function()? syncToOrganizations, EnterpriseTeamsCreateRequestOrganizationSelectionType Function()? organizationSelectionType, String? Function()? groupId, }) { return EnterpriseTeamsCreateRequest(
  name: name ?? this.name,
  description: description != null ? description() : this.description,
  syncToOrganizations: syncToOrganizations != null ? syncToOrganizations() : this.syncToOrganizations,
  organizationSelectionType: organizationSelectionType != null ? organizationSelectionType() : this.organizationSelectionType,
  groupId: groupId != null ? groupId() : this.groupId,
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
