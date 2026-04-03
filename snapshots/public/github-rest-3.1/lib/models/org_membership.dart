// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'org_membership_permissions.dart';import 'organization_simple.dart';import 'simple_user.dart';/// The state of the member in the organization. The `pending` state indicates the user has not yet accepted an invitation.
@immutable final class OrgMembershipState {const OrgMembershipState._(this.value);

factory OrgMembershipState.fromJson(String json) { return switch (json) {
  'active' => active,
  'pending' => pending,
  _ => OrgMembershipState._(json),
}; }

static const OrgMembershipState active = OrgMembershipState._('active');

static const OrgMembershipState pending = OrgMembershipState._('pending');

static const List<OrgMembershipState> values = [active, pending];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgMembershipState && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'OrgMembershipState($value)'; } 
 }
/// The user's membership type in the organization.
@immutable final class OrgMembershipRole {const OrgMembershipRole._(this.value);

factory OrgMembershipRole.fromJson(String json) { return switch (json) {
  'admin' => admin,
  'member' => member,
  'billing_manager' => billingManager,
  _ => OrgMembershipRole._(json),
}; }

static const OrgMembershipRole admin = OrgMembershipRole._('admin');

static const OrgMembershipRole member = OrgMembershipRole._('member');

static const OrgMembershipRole billingManager = OrgMembershipRole._('billing_manager');

static const List<OrgMembershipRole> values = [admin, member, billingManager];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgMembershipRole && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'OrgMembershipRole($value)'; } 
 }
/// Org Membership
@immutable final class OrgMembership {const OrgMembership({required this.url, required this.state, required this.role, required this.organizationUrl, required this.organization, required this.user, this.directMembership, this.enterpriseTeamsProvidingIndirectMembership, this.permissions, });

factory OrgMembership.fromJson(Map<String, dynamic> json) { return OrgMembership(
  url: Uri.parse(json['url'] as String),
  state: OrgMembershipState.fromJson(json['state'] as String),
  role: OrgMembershipRole.fromJson(json['role'] as String),
  directMembership: json['direct_membership'] as bool?,
  enterpriseTeamsProvidingIndirectMembership: (json['enterprise_teams_providing_indirect_membership'] as List<dynamic>?)?.map((e) => e as String).toList(),
  organizationUrl: Uri.parse(json['organization_url'] as String),
  organization: OrganizationSimple.fromJson(json['organization'] as Map<String, dynamic>),
  user: json['user'] != null ? SimpleUser.fromJson(json['user'] as Map<String, dynamic>) : null,
  permissions: json['permissions'] != null ? OrgMembershipPermissions.fromJson(json['permissions'] as Map<String, dynamic>) : null,
); }

final Uri url;

/// The state of the member in the organization. The `pending` state indicates the user has not yet accepted an invitation.
final OrgMembershipState state;

/// The user's membership type in the organization.
final OrgMembershipRole role;

/// Whether the user has direct membership in the organization.
final bool? directMembership;

/// The slugs of the enterprise teams providing the user with indirect membership in the organization.
/// A limit of 100 enterprise team slugs is returned.
final List<String>? enterpriseTeamsProvidingIndirectMembership;

final Uri organizationUrl;

final OrganizationSimple organization;

final SimpleUser? user;

final OrgMembershipPermissions? permissions;

Map<String, dynamic> toJson() { return {
  'url': url.toString(),
  'state': state.toJson(),
  'role': role.toJson(),
  'direct_membership': ?directMembership,
  'enterprise_teams_providing_indirect_membership': ?enterpriseTeamsProvidingIndirectMembership,
  'organization_url': organizationUrl.toString(),
  'organization': organization.toJson(),
  if (user != null) 'user': user?.toJson(),
  if (permissions != null) 'permissions': permissions?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('url') && json['url'] is String &&
      json.containsKey('state') &&
      json.containsKey('role') &&
      json.containsKey('organization_url') && json['organization_url'] is String &&
      json.containsKey('organization') &&
      json.containsKey('user'); } 
OrgMembership copyWith({Uri? url, OrgMembershipState? state, OrgMembershipRole? role, bool Function()? directMembership, List<String> Function()? enterpriseTeamsProvidingIndirectMembership, Uri? organizationUrl, OrganizationSimple? organization, SimpleUser? Function()? user, OrgMembershipPermissions Function()? permissions, }) { return OrgMembership(
  url: url ?? this.url,
  state: state ?? this.state,
  role: role ?? this.role,
  directMembership: directMembership != null ? directMembership() : this.directMembership,
  enterpriseTeamsProvidingIndirectMembership: enterpriseTeamsProvidingIndirectMembership != null ? enterpriseTeamsProvidingIndirectMembership() : this.enterpriseTeamsProvidingIndirectMembership,
  organizationUrl: organizationUrl ?? this.organizationUrl,
  organization: organization ?? this.organization,
  user: user != null ? user() : this.user,
  permissions: permissions != null ? permissions() : this.permissions,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is OrgMembership &&
          url == other.url &&
          state == other.state &&
          role == other.role &&
          directMembership == other.directMembership &&
          listEquals(enterpriseTeamsProvidingIndirectMembership, other.enterpriseTeamsProvidingIndirectMembership) &&
          organizationUrl == other.organizationUrl &&
          organization == other.organization &&
          user == other.user &&
          permissions == other.permissions; } 
@override int get hashCode { return Object.hash(url, state, role, directMembership, Object.hashAll(enterpriseTeamsProvidingIndirectMembership ?? const []), organizationUrl, organization, user, permissions); } 
@override String toString() { return 'OrgMembership(url: $url, state: $state, role: $role, directMembership: $directMembership, enterpriseTeamsProvidingIndirectMembership: $enterpriseTeamsProvidingIndirectMembership, organizationUrl: $organizationUrl, organization: $organization, user: $user, permissions: $permissions)'; } 
 }
