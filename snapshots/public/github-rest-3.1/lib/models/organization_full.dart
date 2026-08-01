// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'organization_full_plan.dart';/// Organization Full
@immutable final class OrganizationFull {const OrganizationFull({required this.publicGists, required this.id, required this.nodeId, required this.url, required this.reposUrl, required this.eventsUrl, required this.hooksUrl, required this.issuesUrl, required this.membersUrl, required this.publicMembersUrl, required this.avatarUrl, required this.description, required this.hasOrganizationProjects, required this.hasRepositoryProjects, required this.publicRepos, required this.login, required this.htmlUrl, required this.following, required this.followers, required this.archivedAt, required this.updatedAt, required this.createdAt, required this.type, this.isVerified, this.twitterUsername = const Omittable.absent(), this.email, this.location, this.totalPrivateRepos, this.ownedPrivateRepos, this.privateGists = const Omittable.absent(), this.diskUsage = const Omittable.absent(), this.collaborators = const Omittable.absent(), this.billingEmail = const Omittable.absent(), this.plan, this.defaultRepositoryPermission = const Omittable.absent(), this.defaultRepositoryBranch = const Omittable.absent(), this.membersCanCreateRepositories = const Omittable.absent(), this.twoFactorRequirementEnabled = const Omittable.absent(), this.membersAllowedRepositoryCreationType, this.membersCanCreatePublicRepositories, this.membersCanCreatePrivateRepositories, this.membersCanCreateInternalRepositories, this.membersCanCreatePages, this.membersCanCreatePublicPages, this.deployKeysEnabledForRepositories, this.membersCanDeleteRepositories, this.membersCanChangeRepoVisibility, this.membersCanInviteOutsideCollaborators, this.membersCanDeleteIssues, this.displayCommenterFullNameSettingEnabled, this.readersCanCreateDiscussions, this.membersCanCreateTeams, this.membersCanViewDependencyInsights, this.membersCanForkPrivateRepositories = const Omittable.absent(), this.webCommitSignoffRequired, this.advancedSecurityEnabledForNewRepositories, this.dependabotAlertsEnabledForNewRepositories, this.dependabotSecurityUpdatesEnabledForNewRepositories, this.dependencyGraphEnabledForNewRepositories, this.secretScanningEnabledForNewRepositories, this.secretScanningPushProtectionEnabledForNewRepositories, this.secretScanningPushProtectionCustomLinkEnabled, this.secretScanningPushProtectionCustomLink = const Omittable.absent(), this.blog, this.company, this.name, this.membersCanCreatePrivatePages, });

factory OrganizationFull.fromJson(Map<String, dynamic> json) { return OrganizationFull(
  login: json['login'] as String,
  id: (json['id'] as num).toInt(),
  nodeId: json['node_id'] as String,
  url: Uri.parse(json['url'] as String),
  reposUrl: Uri.parse(json['repos_url'] as String),
  eventsUrl: Uri.parse(json['events_url'] as String),
  hooksUrl: json['hooks_url'] as String,
  issuesUrl: json['issues_url'] as String,
  membersUrl: json['members_url'] as String,
  publicMembersUrl: json['public_members_url'] as String,
  avatarUrl: json['avatar_url'] as String,
  description: json['description'] as String?,
  name: json['name'] as String?,
  company: json['company'] as String?,
  blog: json['blog'] != null ? Uri.parse(json['blog'] as String) : null,
  location: json['location'] as String?,
  email: json['email'] as String?,
  twitterUsername: json.containsKey('twitter_username') ? Omittable(json['twitter_username'] as String?) : const Omittable.absent(),
  isVerified: json['is_verified'] as bool?,
  hasOrganizationProjects: json['has_organization_projects'] as bool,
  hasRepositoryProjects: json['has_repository_projects'] as bool,
  publicRepos: (json['public_repos'] as num).toInt(),
  publicGists: (json['public_gists'] as num).toInt(),
  followers: (json['followers'] as num).toInt(),
  following: (json['following'] as num).toInt(),
  htmlUrl: Uri.parse(json['html_url'] as String),
  type: json['type'] as String,
  totalPrivateRepos: json['total_private_repos'] != null ? (json['total_private_repos'] as num).toInt() : null,
  ownedPrivateRepos: json['owned_private_repos'] != null ? (json['owned_private_repos'] as num).toInt() : null,
  privateGists: json.containsKey('private_gists') ? Omittable(json['private_gists'] != null ? (json['private_gists'] as num).toInt() : null) : const Omittable.absent(),
  diskUsage: json.containsKey('disk_usage') ? Omittable(json['disk_usage'] != null ? (json['disk_usage'] as num).toInt() : null) : const Omittable.absent(),
  collaborators: json.containsKey('collaborators') ? Omittable(json['collaborators'] != null ? (json['collaborators'] as num).toInt() : null) : const Omittable.absent(),
  billingEmail: json.containsKey('billing_email') ? Omittable(json['billing_email'] as String?) : const Omittable.absent(),
  plan: json['plan'] != null ? OrganizationFullPlan.fromJson(json['plan'] as Map<String, dynamic>) : null,
  defaultRepositoryPermission: json.containsKey('default_repository_permission') ? Omittable(json['default_repository_permission'] as String?) : const Omittable.absent(),
  defaultRepositoryBranch: json.containsKey('default_repository_branch') ? Omittable(json['default_repository_branch'] as String?) : const Omittable.absent(),
  membersCanCreateRepositories: json.containsKey('members_can_create_repositories') ? Omittable(json['members_can_create_repositories'] as bool?) : const Omittable.absent(),
  twoFactorRequirementEnabled: json.containsKey('two_factor_requirement_enabled') ? Omittable(json['two_factor_requirement_enabled'] as bool?) : const Omittable.absent(),
  membersAllowedRepositoryCreationType: json['members_allowed_repository_creation_type'] as String?,
  membersCanCreatePublicRepositories: json['members_can_create_public_repositories'] as bool?,
  membersCanCreatePrivateRepositories: json['members_can_create_private_repositories'] as bool?,
  membersCanCreateInternalRepositories: json['members_can_create_internal_repositories'] as bool?,
  membersCanCreatePages: json['members_can_create_pages'] as bool?,
  membersCanCreatePublicPages: json['members_can_create_public_pages'] as bool?,
  membersCanCreatePrivatePages: json['members_can_create_private_pages'] as bool?,
  membersCanDeleteRepositories: json['members_can_delete_repositories'] as bool?,
  membersCanChangeRepoVisibility: json['members_can_change_repo_visibility'] as bool?,
  membersCanInviteOutsideCollaborators: json['members_can_invite_outside_collaborators'] as bool?,
  membersCanDeleteIssues: json['members_can_delete_issues'] as bool?,
  displayCommenterFullNameSettingEnabled: json['display_commenter_full_name_setting_enabled'] as bool?,
  readersCanCreateDiscussions: json['readers_can_create_discussions'] as bool?,
  membersCanCreateTeams: json['members_can_create_teams'] as bool?,
  membersCanViewDependencyInsights: json['members_can_view_dependency_insights'] as bool?,
  membersCanForkPrivateRepositories: json.containsKey('members_can_fork_private_repositories') ? Omittable(json['members_can_fork_private_repositories'] as bool?) : const Omittable.absent(),
  webCommitSignoffRequired: json['web_commit_signoff_required'] as bool?,
  advancedSecurityEnabledForNewRepositories: json['advanced_security_enabled_for_new_repositories'] as bool?,
  dependabotAlertsEnabledForNewRepositories: json['dependabot_alerts_enabled_for_new_repositories'] as bool?,
  dependabotSecurityUpdatesEnabledForNewRepositories: json['dependabot_security_updates_enabled_for_new_repositories'] as bool?,
  dependencyGraphEnabledForNewRepositories: json['dependency_graph_enabled_for_new_repositories'] as bool?,
  secretScanningEnabledForNewRepositories: json['secret_scanning_enabled_for_new_repositories'] as bool?,
  secretScanningPushProtectionEnabledForNewRepositories: json['secret_scanning_push_protection_enabled_for_new_repositories'] as bool?,
  secretScanningPushProtectionCustomLinkEnabled: json['secret_scanning_push_protection_custom_link_enabled'] as bool?,
  secretScanningPushProtectionCustomLink: json.containsKey('secret_scanning_push_protection_custom_link') ? Omittable(json['secret_scanning_push_protection_custom_link'] as String?) : const Omittable.absent(),
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
  archivedAt: json['archived_at'] != null ? DateTime.parse(json['archived_at'] as String) : null,
  deployKeysEnabledForRepositories: json['deploy_keys_enabled_for_repositories'] as bool?,
); }

final String login;

final int id;

final String nodeId;

final Uri url;

final Uri reposUrl;

final Uri eventsUrl;

final String hooksUrl;

final String issuesUrl;

final String membersUrl;

final String publicMembersUrl;

final String avatarUrl;

final String? description;

final String? name;

final String? company;

final Uri? blog;

final String? location;

final String? email;

final Omittable<String?> twitterUsername;

final bool? isVerified;

final bool hasOrganizationProjects;

final bool hasRepositoryProjects;

final int publicRepos;

final int publicGists;

final int followers;

final int following;

final Uri htmlUrl;

final String type;

final int? totalPrivateRepos;

final int? ownedPrivateRepos;

final Omittable<int?> privateGists;

final Omittable<int?> diskUsage;

/// The number of collaborators on private repositories.
/// 
/// This field may be null if the number of private repositories is over 50,000.
final Omittable<int?> collaborators;

final Omittable<String?> billingEmail;

final OrganizationFullPlan? plan;

final Omittable<String?> defaultRepositoryPermission;

/// The default branch for repositories created in this organization.
final Omittable<String?> defaultRepositoryBranch;

final Omittable<bool?> membersCanCreateRepositories;

final Omittable<bool?> twoFactorRequirementEnabled;

final String? membersAllowedRepositoryCreationType;

final bool? membersCanCreatePublicRepositories;

final bool? membersCanCreatePrivateRepositories;

final bool? membersCanCreateInternalRepositories;

final bool? membersCanCreatePages;

final bool? membersCanCreatePublicPages;

final bool? membersCanCreatePrivatePages;

final bool? membersCanDeleteRepositories;

final bool? membersCanChangeRepoVisibility;

final bool? membersCanInviteOutsideCollaborators;

final bool? membersCanDeleteIssues;

final bool? displayCommenterFullNameSettingEnabled;

final bool? readersCanCreateDiscussions;

final bool? membersCanCreateTeams;

final bool? membersCanViewDependencyInsights;

final Omittable<bool?> membersCanForkPrivateRepositories;

final bool? webCommitSignoffRequired;

/// **Endpoint closing down notice.** Please use [code security configurations](https://docs.github.com/rest/code-security/configurations) instead.
/// 
/// Whether GitHub Advanced Security is enabled for new repositories and repositories transferred to this organization.
/// 
/// This field is only visible to organization owners or members of a team with the security manager role.
final bool? advancedSecurityEnabledForNewRepositories;

/// **Endpoint closing down notice.** Please use [code security configurations](https://docs.github.com/rest/code-security/configurations) instead.
/// 
/// Whether Dependabot alerts are automatically enabled for new repositories and repositories transferred to this organization.
/// 
/// This field is only visible to organization owners or members of a team with the security manager role.
final bool? dependabotAlertsEnabledForNewRepositories;

/// **Endpoint closing down notice.** Please use [code security configurations](https://docs.github.com/rest/code-security/configurations) instead.
/// 
/// Whether Dependabot security updates are automatically enabled for new repositories and repositories transferred to this organization.
/// 
/// This field is only visible to organization owners or members of a team with the security manager role.
final bool? dependabotSecurityUpdatesEnabledForNewRepositories;

/// **Endpoint closing down notice.** Please use [code security configurations](https://docs.github.com/rest/code-security/configurations) instead.
/// 
/// Whether dependency graph is automatically enabled for new repositories and repositories transferred to this organization.
/// 
/// This field is only visible to organization owners or members of a team with the security manager role.
final bool? dependencyGraphEnabledForNewRepositories;

/// **Endpoint closing down notice.** Please use [code security configurations](https://docs.github.com/rest/code-security/configurations) instead.
/// 
/// Whether secret scanning is automatically enabled for new repositories and repositories transferred to this organization.
/// 
/// This field is only visible to organization owners or members of a team with the security manager role.
final bool? secretScanningEnabledForNewRepositories;

/// **Endpoint closing down notice.** Please use [code security configurations](https://docs.github.com/rest/code-security/configurations) instead.
/// 
/// Whether secret scanning push protection is automatically enabled for new repositories and repositories transferred to this organization.
/// 
/// This field is only visible to organization owners or members of a team with the security manager role.
final bool? secretScanningPushProtectionEnabledForNewRepositories;

/// Whether a custom link is shown to contributors who are blocked from pushing a secret by push protection.
final bool? secretScanningPushProtectionCustomLinkEnabled;

/// An optional URL string to display to contributors who are blocked from pushing a secret.
final Omittable<String?> secretScanningPushProtectionCustomLink;

final DateTime createdAt;

final DateTime updatedAt;

final DateTime? archivedAt;

/// Controls whether or not deploy keys may be added and used for repositories in the organization.
final bool? deployKeysEnabledForRepositories;

Map<String, dynamic> toJson() { return {
  'login': login,
  'id': id,
  'node_id': nodeId,
  'url': url.toString(),
  'repos_url': reposUrl.toString(),
  'events_url': eventsUrl.toString(),
  'hooks_url': hooksUrl,
  'issues_url': issuesUrl,
  'members_url': membersUrl,
  'public_members_url': publicMembersUrl,
  'avatar_url': avatarUrl,
  'description': description,
  'name': ?name,
  'company': ?company,
  if (blog != null) 'blog': blog?.toString(),
  'location': ?location,
  'email': ?email,
  if (twitterUsername.isPresent) 'twitter_username': twitterUsername.value,
  'is_verified': ?isVerified,
  'has_organization_projects': hasOrganizationProjects,
  'has_repository_projects': hasRepositoryProjects,
  'public_repos': publicRepos,
  'public_gists': publicGists,
  'followers': followers,
  'following': following,
  'html_url': htmlUrl.toString(),
  'type': type,
  'total_private_repos': ?totalPrivateRepos,
  'owned_private_repos': ?ownedPrivateRepos,
  if (privateGists.isPresent) 'private_gists': privateGists.value,
  if (diskUsage.isPresent) 'disk_usage': diskUsage.value,
  if (collaborators.isPresent) 'collaborators': collaborators.value,
  if (billingEmail.isPresent) 'billing_email': billingEmail.value,
  if (plan != null) 'plan': plan?.toJson(),
  if (defaultRepositoryPermission.isPresent) 'default_repository_permission': defaultRepositoryPermission.value,
  if (defaultRepositoryBranch.isPresent) 'default_repository_branch': defaultRepositoryBranch.value,
  if (membersCanCreateRepositories.isPresent) 'members_can_create_repositories': membersCanCreateRepositories.value,
  if (twoFactorRequirementEnabled.isPresent) 'two_factor_requirement_enabled': twoFactorRequirementEnabled.value,
  'members_allowed_repository_creation_type': ?membersAllowedRepositoryCreationType,
  'members_can_create_public_repositories': ?membersCanCreatePublicRepositories,
  'members_can_create_private_repositories': ?membersCanCreatePrivateRepositories,
  'members_can_create_internal_repositories': ?membersCanCreateInternalRepositories,
  'members_can_create_pages': ?membersCanCreatePages,
  'members_can_create_public_pages': ?membersCanCreatePublicPages,
  'members_can_create_private_pages': ?membersCanCreatePrivatePages,
  'members_can_delete_repositories': ?membersCanDeleteRepositories,
  'members_can_change_repo_visibility': ?membersCanChangeRepoVisibility,
  'members_can_invite_outside_collaborators': ?membersCanInviteOutsideCollaborators,
  'members_can_delete_issues': ?membersCanDeleteIssues,
  'display_commenter_full_name_setting_enabled': ?displayCommenterFullNameSettingEnabled,
  'readers_can_create_discussions': ?readersCanCreateDiscussions,
  'members_can_create_teams': ?membersCanCreateTeams,
  'members_can_view_dependency_insights': ?membersCanViewDependencyInsights,
  if (membersCanForkPrivateRepositories.isPresent) 'members_can_fork_private_repositories': membersCanForkPrivateRepositories.value,
  'web_commit_signoff_required': ?webCommitSignoffRequired,
  'advanced_security_enabled_for_new_repositories': ?advancedSecurityEnabledForNewRepositories,
  'dependabot_alerts_enabled_for_new_repositories': ?dependabotAlertsEnabledForNewRepositories,
  'dependabot_security_updates_enabled_for_new_repositories': ?dependabotSecurityUpdatesEnabledForNewRepositories,
  'dependency_graph_enabled_for_new_repositories': ?dependencyGraphEnabledForNewRepositories,
  'secret_scanning_enabled_for_new_repositories': ?secretScanningEnabledForNewRepositories,
  'secret_scanning_push_protection_enabled_for_new_repositories': ?secretScanningPushProtectionEnabledForNewRepositories,
  'secret_scanning_push_protection_custom_link_enabled': ?secretScanningPushProtectionCustomLinkEnabled,
  if (secretScanningPushProtectionCustomLink.isPresent) 'secret_scanning_push_protection_custom_link': secretScanningPushProtectionCustomLink.value,
  'created_at': createdAt.toIso8601String(),
  'updated_at': updatedAt.toIso8601String(),
  'archived_at': archivedAt?.toIso8601String(),
  'deploy_keys_enabled_for_repositories': ?deployKeysEnabledForRepositories,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('login') && json['login'] is String &&
      json.containsKey('id') && json['id'] is num &&
      json.containsKey('node_id') && json['node_id'] is String &&
      json.containsKey('url') && json['url'] is String &&
      json.containsKey('repos_url') && json['repos_url'] is String &&
      json.containsKey('events_url') && json['events_url'] is String &&
      json.containsKey('hooks_url') && json['hooks_url'] is String &&
      json.containsKey('issues_url') && json['issues_url'] is String &&
      json.containsKey('members_url') && json['members_url'] is String &&
      json.containsKey('public_members_url') && json['public_members_url'] is String &&
      json.containsKey('avatar_url') && json['avatar_url'] is String &&
      json.containsKey('description') && (json['description'] == null || json['description'] is String) &&
      json.containsKey('has_organization_projects') && json['has_organization_projects'] is bool &&
      json.containsKey('has_repository_projects') && json['has_repository_projects'] is bool &&
      json.containsKey('public_repos') && json['public_repos'] is num &&
      json.containsKey('public_gists') && json['public_gists'] is num &&
      json.containsKey('followers') && json['followers'] is num &&
      json.containsKey('following') && json['following'] is num &&
      json.containsKey('html_url') && json['html_url'] is String &&
      json.containsKey('type') && json['type'] is String &&
      json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('updated_at') && json['updated_at'] is String &&
      json.containsKey('archived_at') && (json['archived_at'] == null || json['archived_at'] is String); } 
OrganizationFull copyWith({String? login, int? id, String? nodeId, Uri? url, Uri? reposUrl, Uri? eventsUrl, String? hooksUrl, String? issuesUrl, String? membersUrl, String? publicMembersUrl, String? avatarUrl, String? Function()? description, String? Function()? name, String? Function()? company, Uri? Function()? blog, String? Function()? location, String? Function()? email, Omittable<String?>? twitterUsername, bool? Function()? isVerified, bool? hasOrganizationProjects, bool? hasRepositoryProjects, int? publicRepos, int? publicGists, int? followers, int? following, Uri? htmlUrl, String? type, int? Function()? totalPrivateRepos, int? Function()? ownedPrivateRepos, Omittable<int?>? privateGists, Omittable<int?>? diskUsage, Omittable<int?>? collaborators, Omittable<String?>? billingEmail, OrganizationFullPlan? Function()? plan, Omittable<String?>? defaultRepositoryPermission, Omittable<String?>? defaultRepositoryBranch, Omittable<bool?>? membersCanCreateRepositories, Omittable<bool?>? twoFactorRequirementEnabled, String? Function()? membersAllowedRepositoryCreationType, bool? Function()? membersCanCreatePublicRepositories, bool? Function()? membersCanCreatePrivateRepositories, bool? Function()? membersCanCreateInternalRepositories, bool? Function()? membersCanCreatePages, bool? Function()? membersCanCreatePublicPages, bool? Function()? membersCanCreatePrivatePages, bool? Function()? membersCanDeleteRepositories, bool? Function()? membersCanChangeRepoVisibility, bool? Function()? membersCanInviteOutsideCollaborators, bool? Function()? membersCanDeleteIssues, bool? Function()? displayCommenterFullNameSettingEnabled, bool? Function()? readersCanCreateDiscussions, bool? Function()? membersCanCreateTeams, bool? Function()? membersCanViewDependencyInsights, Omittable<bool?>? membersCanForkPrivateRepositories, bool? Function()? webCommitSignoffRequired, bool? Function()? advancedSecurityEnabledForNewRepositories, bool? Function()? dependabotAlertsEnabledForNewRepositories, bool? Function()? dependabotSecurityUpdatesEnabledForNewRepositories, bool? Function()? dependencyGraphEnabledForNewRepositories, bool? Function()? secretScanningEnabledForNewRepositories, bool? Function()? secretScanningPushProtectionEnabledForNewRepositories, bool? Function()? secretScanningPushProtectionCustomLinkEnabled, Omittable<String?>? secretScanningPushProtectionCustomLink, DateTime? createdAt, DateTime? updatedAt, DateTime? Function()? archivedAt, bool? Function()? deployKeysEnabledForRepositories, }) { return OrganizationFull(
  login: login ?? this.login,
  id: id ?? this.id,
  nodeId: nodeId ?? this.nodeId,
  url: url ?? this.url,
  reposUrl: reposUrl ?? this.reposUrl,
  eventsUrl: eventsUrl ?? this.eventsUrl,
  hooksUrl: hooksUrl ?? this.hooksUrl,
  issuesUrl: issuesUrl ?? this.issuesUrl,
  membersUrl: membersUrl ?? this.membersUrl,
  publicMembersUrl: publicMembersUrl ?? this.publicMembersUrl,
  avatarUrl: avatarUrl ?? this.avatarUrl,
  description: description != null ? description() : this.description,
  name: name != null ? name() : this.name,
  company: company != null ? company() : this.company,
  blog: blog != null ? blog() : this.blog,
  location: location != null ? location() : this.location,
  email: email != null ? email() : this.email,
  twitterUsername: twitterUsername ?? this.twitterUsername,
  isVerified: isVerified != null ? isVerified() : this.isVerified,
  hasOrganizationProjects: hasOrganizationProjects ?? this.hasOrganizationProjects,
  hasRepositoryProjects: hasRepositoryProjects ?? this.hasRepositoryProjects,
  publicRepos: publicRepos ?? this.publicRepos,
  publicGists: publicGists ?? this.publicGists,
  followers: followers ?? this.followers,
  following: following ?? this.following,
  htmlUrl: htmlUrl ?? this.htmlUrl,
  type: type ?? this.type,
  totalPrivateRepos: totalPrivateRepos != null ? totalPrivateRepos() : this.totalPrivateRepos,
  ownedPrivateRepos: ownedPrivateRepos != null ? ownedPrivateRepos() : this.ownedPrivateRepos,
  privateGists: privateGists ?? this.privateGists,
  diskUsage: diskUsage ?? this.diskUsage,
  collaborators: collaborators ?? this.collaborators,
  billingEmail: billingEmail ?? this.billingEmail,
  plan: plan != null ? plan() : this.plan,
  defaultRepositoryPermission: defaultRepositoryPermission ?? this.defaultRepositoryPermission,
  defaultRepositoryBranch: defaultRepositoryBranch ?? this.defaultRepositoryBranch,
  membersCanCreateRepositories: membersCanCreateRepositories ?? this.membersCanCreateRepositories,
  twoFactorRequirementEnabled: twoFactorRequirementEnabled ?? this.twoFactorRequirementEnabled,
  membersAllowedRepositoryCreationType: membersAllowedRepositoryCreationType != null ? membersAllowedRepositoryCreationType() : this.membersAllowedRepositoryCreationType,
  membersCanCreatePublicRepositories: membersCanCreatePublicRepositories != null ? membersCanCreatePublicRepositories() : this.membersCanCreatePublicRepositories,
  membersCanCreatePrivateRepositories: membersCanCreatePrivateRepositories != null ? membersCanCreatePrivateRepositories() : this.membersCanCreatePrivateRepositories,
  membersCanCreateInternalRepositories: membersCanCreateInternalRepositories != null ? membersCanCreateInternalRepositories() : this.membersCanCreateInternalRepositories,
  membersCanCreatePages: membersCanCreatePages != null ? membersCanCreatePages() : this.membersCanCreatePages,
  membersCanCreatePublicPages: membersCanCreatePublicPages != null ? membersCanCreatePublicPages() : this.membersCanCreatePublicPages,
  membersCanCreatePrivatePages: membersCanCreatePrivatePages != null ? membersCanCreatePrivatePages() : this.membersCanCreatePrivatePages,
  membersCanDeleteRepositories: membersCanDeleteRepositories != null ? membersCanDeleteRepositories() : this.membersCanDeleteRepositories,
  membersCanChangeRepoVisibility: membersCanChangeRepoVisibility != null ? membersCanChangeRepoVisibility() : this.membersCanChangeRepoVisibility,
  membersCanInviteOutsideCollaborators: membersCanInviteOutsideCollaborators != null ? membersCanInviteOutsideCollaborators() : this.membersCanInviteOutsideCollaborators,
  membersCanDeleteIssues: membersCanDeleteIssues != null ? membersCanDeleteIssues() : this.membersCanDeleteIssues,
  displayCommenterFullNameSettingEnabled: displayCommenterFullNameSettingEnabled != null ? displayCommenterFullNameSettingEnabled() : this.displayCommenterFullNameSettingEnabled,
  readersCanCreateDiscussions: readersCanCreateDiscussions != null ? readersCanCreateDiscussions() : this.readersCanCreateDiscussions,
  membersCanCreateTeams: membersCanCreateTeams != null ? membersCanCreateTeams() : this.membersCanCreateTeams,
  membersCanViewDependencyInsights: membersCanViewDependencyInsights != null ? membersCanViewDependencyInsights() : this.membersCanViewDependencyInsights,
  membersCanForkPrivateRepositories: membersCanForkPrivateRepositories ?? this.membersCanForkPrivateRepositories,
  webCommitSignoffRequired: webCommitSignoffRequired != null ? webCommitSignoffRequired() : this.webCommitSignoffRequired,
  advancedSecurityEnabledForNewRepositories: advancedSecurityEnabledForNewRepositories != null ? advancedSecurityEnabledForNewRepositories() : this.advancedSecurityEnabledForNewRepositories,
  dependabotAlertsEnabledForNewRepositories: dependabotAlertsEnabledForNewRepositories != null ? dependabotAlertsEnabledForNewRepositories() : this.dependabotAlertsEnabledForNewRepositories,
  dependabotSecurityUpdatesEnabledForNewRepositories: dependabotSecurityUpdatesEnabledForNewRepositories != null ? dependabotSecurityUpdatesEnabledForNewRepositories() : this.dependabotSecurityUpdatesEnabledForNewRepositories,
  dependencyGraphEnabledForNewRepositories: dependencyGraphEnabledForNewRepositories != null ? dependencyGraphEnabledForNewRepositories() : this.dependencyGraphEnabledForNewRepositories,
  secretScanningEnabledForNewRepositories: secretScanningEnabledForNewRepositories != null ? secretScanningEnabledForNewRepositories() : this.secretScanningEnabledForNewRepositories,
  secretScanningPushProtectionEnabledForNewRepositories: secretScanningPushProtectionEnabledForNewRepositories != null ? secretScanningPushProtectionEnabledForNewRepositories() : this.secretScanningPushProtectionEnabledForNewRepositories,
  secretScanningPushProtectionCustomLinkEnabled: secretScanningPushProtectionCustomLinkEnabled != null ? secretScanningPushProtectionCustomLinkEnabled() : this.secretScanningPushProtectionCustomLinkEnabled,
  secretScanningPushProtectionCustomLink: secretScanningPushProtectionCustomLink ?? this.secretScanningPushProtectionCustomLink,
  createdAt: createdAt ?? this.createdAt,
  updatedAt: updatedAt ?? this.updatedAt,
  archivedAt: archivedAt != null ? archivedAt() : this.archivedAt,
  deployKeysEnabledForRepositories: deployKeysEnabledForRepositories != null ? deployKeysEnabledForRepositories() : this.deployKeysEnabledForRepositories,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is OrganizationFull &&
          login == other.login &&
          id == other.id &&
          nodeId == other.nodeId &&
          url == other.url &&
          reposUrl == other.reposUrl &&
          eventsUrl == other.eventsUrl &&
          hooksUrl == other.hooksUrl &&
          issuesUrl == other.issuesUrl &&
          membersUrl == other.membersUrl &&
          publicMembersUrl == other.publicMembersUrl &&
          avatarUrl == other.avatarUrl &&
          description == other.description &&
          name == other.name &&
          company == other.company &&
          blog == other.blog &&
          location == other.location &&
          email == other.email &&
          twitterUsername == other.twitterUsername &&
          isVerified == other.isVerified &&
          hasOrganizationProjects == other.hasOrganizationProjects &&
          hasRepositoryProjects == other.hasRepositoryProjects &&
          publicRepos == other.publicRepos &&
          publicGists == other.publicGists &&
          followers == other.followers &&
          following == other.following &&
          htmlUrl == other.htmlUrl &&
          type == other.type &&
          totalPrivateRepos == other.totalPrivateRepos &&
          ownedPrivateRepos == other.ownedPrivateRepos &&
          privateGists == other.privateGists &&
          diskUsage == other.diskUsage &&
          collaborators == other.collaborators &&
          billingEmail == other.billingEmail &&
          plan == other.plan &&
          defaultRepositoryPermission == other.defaultRepositoryPermission &&
          defaultRepositoryBranch == other.defaultRepositoryBranch &&
          membersCanCreateRepositories == other.membersCanCreateRepositories &&
          twoFactorRequirementEnabled == other.twoFactorRequirementEnabled &&
          membersAllowedRepositoryCreationType == other.membersAllowedRepositoryCreationType &&
          membersCanCreatePublicRepositories == other.membersCanCreatePublicRepositories &&
          membersCanCreatePrivateRepositories == other.membersCanCreatePrivateRepositories &&
          membersCanCreateInternalRepositories == other.membersCanCreateInternalRepositories &&
          membersCanCreatePages == other.membersCanCreatePages &&
          membersCanCreatePublicPages == other.membersCanCreatePublicPages &&
          membersCanCreatePrivatePages == other.membersCanCreatePrivatePages &&
          membersCanDeleteRepositories == other.membersCanDeleteRepositories &&
          membersCanChangeRepoVisibility == other.membersCanChangeRepoVisibility &&
          membersCanInviteOutsideCollaborators == other.membersCanInviteOutsideCollaborators &&
          membersCanDeleteIssues == other.membersCanDeleteIssues &&
          displayCommenterFullNameSettingEnabled == other.displayCommenterFullNameSettingEnabled &&
          readersCanCreateDiscussions == other.readersCanCreateDiscussions &&
          membersCanCreateTeams == other.membersCanCreateTeams &&
          membersCanViewDependencyInsights == other.membersCanViewDependencyInsights &&
          membersCanForkPrivateRepositories == other.membersCanForkPrivateRepositories &&
          webCommitSignoffRequired == other.webCommitSignoffRequired &&
          advancedSecurityEnabledForNewRepositories == other.advancedSecurityEnabledForNewRepositories &&
          dependabotAlertsEnabledForNewRepositories == other.dependabotAlertsEnabledForNewRepositories &&
          dependabotSecurityUpdatesEnabledForNewRepositories == other.dependabotSecurityUpdatesEnabledForNewRepositories &&
          dependencyGraphEnabledForNewRepositories == other.dependencyGraphEnabledForNewRepositories &&
          secretScanningEnabledForNewRepositories == other.secretScanningEnabledForNewRepositories &&
          secretScanningPushProtectionEnabledForNewRepositories == other.secretScanningPushProtectionEnabledForNewRepositories &&
          secretScanningPushProtectionCustomLinkEnabled == other.secretScanningPushProtectionCustomLinkEnabled &&
          secretScanningPushProtectionCustomLink == other.secretScanningPushProtectionCustomLink &&
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt &&
          archivedAt == other.archivedAt &&
          deployKeysEnabledForRepositories == other.deployKeysEnabledForRepositories; } 
@override int get hashCode { return Object.hashAll([login, id, nodeId, url, reposUrl, eventsUrl, hooksUrl, issuesUrl, membersUrl, publicMembersUrl, avatarUrl, description, name, company, blog, location, email, twitterUsername, isVerified, hasOrganizationProjects, hasRepositoryProjects, publicRepos, publicGists, followers, following, htmlUrl, type, totalPrivateRepos, ownedPrivateRepos, privateGists, diskUsage, collaborators, billingEmail, plan, defaultRepositoryPermission, defaultRepositoryBranch, membersCanCreateRepositories, twoFactorRequirementEnabled, membersAllowedRepositoryCreationType, membersCanCreatePublicRepositories, membersCanCreatePrivateRepositories, membersCanCreateInternalRepositories, membersCanCreatePages, membersCanCreatePublicPages, membersCanCreatePrivatePages, membersCanDeleteRepositories, membersCanChangeRepoVisibility, membersCanInviteOutsideCollaborators, membersCanDeleteIssues, displayCommenterFullNameSettingEnabled, readersCanCreateDiscussions, membersCanCreateTeams, membersCanViewDependencyInsights, membersCanForkPrivateRepositories, webCommitSignoffRequired, advancedSecurityEnabledForNewRepositories, dependabotAlertsEnabledForNewRepositories, dependabotSecurityUpdatesEnabledForNewRepositories, dependencyGraphEnabledForNewRepositories, secretScanningEnabledForNewRepositories, secretScanningPushProtectionEnabledForNewRepositories, secretScanningPushProtectionCustomLinkEnabled, secretScanningPushProtectionCustomLink, createdAt, updatedAt, archivedAt, deployKeysEnabledForRepositories]); } 
@override String toString() { return 'OrganizationFull(login: $login, id: $id, nodeId: $nodeId, url: $url, reposUrl: $reposUrl, eventsUrl: $eventsUrl, hooksUrl: $hooksUrl, issuesUrl: $issuesUrl, membersUrl: $membersUrl, publicMembersUrl: $publicMembersUrl, avatarUrl: $avatarUrl, description: $description, name: $name, company: $company, blog: $blog, location: $location, email: $email, twitterUsername: $twitterUsername, isVerified: $isVerified, hasOrganizationProjects: $hasOrganizationProjects, hasRepositoryProjects: $hasRepositoryProjects, publicRepos: $publicRepos, publicGists: $publicGists, followers: $followers, following: $following, htmlUrl: $htmlUrl, type: $type, totalPrivateRepos: $totalPrivateRepos, ownedPrivateRepos: $ownedPrivateRepos, privateGists: $privateGists, diskUsage: $diskUsage, collaborators: $collaborators, billingEmail: $billingEmail, plan: $plan, defaultRepositoryPermission: $defaultRepositoryPermission, defaultRepositoryBranch: $defaultRepositoryBranch, membersCanCreateRepositories: $membersCanCreateRepositories, twoFactorRequirementEnabled: $twoFactorRequirementEnabled, membersAllowedRepositoryCreationType: $membersAllowedRepositoryCreationType, membersCanCreatePublicRepositories: $membersCanCreatePublicRepositories, membersCanCreatePrivateRepositories: $membersCanCreatePrivateRepositories, membersCanCreateInternalRepositories: $membersCanCreateInternalRepositories, membersCanCreatePages: $membersCanCreatePages, membersCanCreatePublicPages: $membersCanCreatePublicPages, membersCanCreatePrivatePages: $membersCanCreatePrivatePages, membersCanDeleteRepositories: $membersCanDeleteRepositories, membersCanChangeRepoVisibility: $membersCanChangeRepoVisibility, membersCanInviteOutsideCollaborators: $membersCanInviteOutsideCollaborators, membersCanDeleteIssues: $membersCanDeleteIssues, displayCommenterFullNameSettingEnabled: $displayCommenterFullNameSettingEnabled, readersCanCreateDiscussions: $readersCanCreateDiscussions, membersCanCreateTeams: $membersCanCreateTeams, membersCanViewDependencyInsights: $membersCanViewDependencyInsights, membersCanForkPrivateRepositories: $membersCanForkPrivateRepositories, webCommitSignoffRequired: $webCommitSignoffRequired, advancedSecurityEnabledForNewRepositories: $advancedSecurityEnabledForNewRepositories, dependabotAlertsEnabledForNewRepositories: $dependabotAlertsEnabledForNewRepositories, dependabotSecurityUpdatesEnabledForNewRepositories: $dependabotSecurityUpdatesEnabledForNewRepositories, dependencyGraphEnabledForNewRepositories: $dependencyGraphEnabledForNewRepositories, secretScanningEnabledForNewRepositories: $secretScanningEnabledForNewRepositories, secretScanningPushProtectionEnabledForNewRepositories: $secretScanningPushProtectionEnabledForNewRepositories, secretScanningPushProtectionCustomLinkEnabled: $secretScanningPushProtectionCustomLinkEnabled, secretScanningPushProtectionCustomLink: $secretScanningPushProtectionCustomLink, createdAt: $createdAt, updatedAt: $updatedAt, archivedAt: $archivedAt, deployKeysEnabledForRepositories: $deployKeysEnabledForRepositories)'; } 
 }
