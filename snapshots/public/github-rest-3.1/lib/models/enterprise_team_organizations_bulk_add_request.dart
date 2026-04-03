// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class EnterpriseTeamOrganizationsBulkAddRequest {const EnterpriseTeamOrganizationsBulkAddRequest({required this.organizationSlugs});

factory EnterpriseTeamOrganizationsBulkAddRequest.fromJson(Map<String, dynamic> json) { return EnterpriseTeamOrganizationsBulkAddRequest(
  organizationSlugs: (json['organization_slugs'] as List<dynamic>).map((e) => e as String).toList(),
); }

/// Organization slug to assign the team to.
final List<String> organizationSlugs;

Map<String, dynamic> toJson() { return {
  'organization_slugs': organizationSlugs,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('organization_slugs'); } 
EnterpriseTeamOrganizationsBulkAddRequest copyWith({List<String>? organizationSlugs}) { return EnterpriseTeamOrganizationsBulkAddRequest(
  organizationSlugs: organizationSlugs ?? this.organizationSlugs,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EnterpriseTeamOrganizationsBulkAddRequest &&
          listEquals(organizationSlugs, other.organizationSlugs); } 
@override int get hashCode { return Object.hashAll(organizationSlugs).hashCode; } 
@override String toString() { return 'EnterpriseTeamOrganizationsBulkAddRequest(organizationSlugs: $organizationSlugs)'; } 
 }
