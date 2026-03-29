// GENERATED CODE - DO NOT MODIFY BY HAND

final class ReposCreateForkRequest {const ReposCreateForkRequest({this.organization, this.name, this.defaultBranchOnly, });

factory ReposCreateForkRequest.fromJson(Map<String, dynamic> json) { return ReposCreateForkRequest(
  organization: json['organization'] as String?,
  name: json['name'] as String?,
  defaultBranchOnly: json['default_branch_only'] as bool?,
); }

/// Optional parameter to specify the organization name if forking into an organization.
final String? organization;

/// When forking from an existing repository, a new name for the fork.
final String? name;

/// When forking from an existing repository, fork with only the default branch.
final bool? defaultBranchOnly;

Map<String, dynamic> toJson() { return {
  'organization': ?organization,
  'name': ?name,
  'default_branch_only': ?defaultBranchOnly,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'organization', 'name', 'default_branch_only'}.contains(key)); } 
ReposCreateForkRequest copyWith({String Function()? organization, String Function()? name, bool Function()? defaultBranchOnly, }) { return ReposCreateForkRequest(
  organization: organization != null ? organization() : this.organization,
  name: name != null ? name() : this.name,
  defaultBranchOnly: defaultBranchOnly != null ? defaultBranchOnly() : this.defaultBranchOnly,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ReposCreateForkRequest &&
          organization == other.organization &&
          name == other.name &&
          defaultBranchOnly == other.defaultBranchOnly; } 
@override int get hashCode { return Object.hash(organization, name, defaultBranchOnly); } 
@override String toString() { return 'ReposCreateForkRequest(organization: $organization, name: $name, defaultBranchOnly: $defaultBranchOnly)'; } 
 }
