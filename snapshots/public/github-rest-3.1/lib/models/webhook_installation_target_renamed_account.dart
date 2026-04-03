// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookInstallationTargetRenamedAccount {const WebhookInstallationTargetRenamedAccount({required this.nodeId, required this.avatarUrl, required this.htmlUrl, required this.id, this.hasRepositoryProjects, this.followers, this.followersUrl, this.following, this.followingUrl, this.gistsUrl, this.gravatarId, this.hasOrganizationProjects, this.archivedAt, this.hooksUrl, this.createdAt, this.description, this.isVerified, this.issuesUrl, this.login, this.membersUrl, this.name, this.eventsUrl, this.organizationsUrl, this.publicGists, this.userViewType, this.publicRepos, this.receivedEventsUrl, this.reposUrl, this.siteAdmin, this.slug, this.starredUrl, this.subscriptionsUrl, this.type, this.updatedAt, this.url, this.websiteUrl, this.publicMembersUrl, });

factory WebhookInstallationTargetRenamedAccount.fromJson(Map<String, dynamic> json) { return WebhookInstallationTargetRenamedAccount(
  archivedAt: json['archived_at'] as String?,
  avatarUrl: json['avatar_url'] as String,
  createdAt: json['created_at'] as String?,
  description: json['description'],
  eventsUrl: json['events_url'] as String?,
  followers: json['followers'] != null ? (json['followers'] as num).toInt() : null,
  followersUrl: json['followers_url'] as String?,
  following: json['following'] != null ? (json['following'] as num).toInt() : null,
  followingUrl: json['following_url'] as String?,
  gistsUrl: json['gists_url'] as String?,
  gravatarId: json['gravatar_id'] as String?,
  hasOrganizationProjects: json['has_organization_projects'] as bool?,
  hasRepositoryProjects: json['has_repository_projects'] as bool?,
  hooksUrl: json['hooks_url'] as String?,
  htmlUrl: json['html_url'] as String,
  id: (json['id'] as num).toInt(),
  isVerified: json['is_verified'] as bool?,
  issuesUrl: json['issues_url'] as String?,
  login: json['login'] as String?,
  membersUrl: json['members_url'] as String?,
  name: json['name'] as String?,
  nodeId: json['node_id'] as String,
  organizationsUrl: json['organizations_url'] as String?,
  publicGists: json['public_gists'] != null ? (json['public_gists'] as num).toInt() : null,
  publicMembersUrl: json['public_members_url'] as String?,
  publicRepos: json['public_repos'] != null ? (json['public_repos'] as num).toInt() : null,
  receivedEventsUrl: json['received_events_url'] as String?,
  reposUrl: json['repos_url'] as String?,
  siteAdmin: json['site_admin'] as bool?,
  slug: json['slug'] as String?,
  starredUrl: json['starred_url'] as String?,
  subscriptionsUrl: json['subscriptions_url'] as String?,
  type: json['type'] as String?,
  updatedAt: json['updated_at'] as String?,
  url: json['url'] as String?,
  websiteUrl: json['website_url'],
  userViewType: json['user_view_type'] as String?,
); }

final String? archivedAt;

final String avatarUrl;

final String? createdAt;

final dynamic description;

final String? eventsUrl;

final int? followers;

final String? followersUrl;

final int? following;

final String? followingUrl;

final String? gistsUrl;

final String? gravatarId;

final bool? hasOrganizationProjects;

final bool? hasRepositoryProjects;

final String? hooksUrl;

final String htmlUrl;

final int id;

final bool? isVerified;

final String? issuesUrl;

final String? login;

final String? membersUrl;

final String? name;

final String nodeId;

final String? organizationsUrl;

final int? publicGists;

final String? publicMembersUrl;

final int? publicRepos;

final String? receivedEventsUrl;

final String? reposUrl;

final bool? siteAdmin;

final String? slug;

final String? starredUrl;

final String? subscriptionsUrl;

final String? type;

final String? updatedAt;

final String? url;

final dynamic websiteUrl;

final String? userViewType;

Map<String, dynamic> toJson() { return {
  'archived_at': ?archivedAt,
  'avatar_url': avatarUrl,
  'created_at': ?createdAt,
  'description': ?description,
  'events_url': ?eventsUrl,
  'followers': ?followers,
  'followers_url': ?followersUrl,
  'following': ?following,
  'following_url': ?followingUrl,
  'gists_url': ?gistsUrl,
  'gravatar_id': ?gravatarId,
  'has_organization_projects': ?hasOrganizationProjects,
  'has_repository_projects': ?hasRepositoryProjects,
  'hooks_url': ?hooksUrl,
  'html_url': htmlUrl,
  'id': id,
  'is_verified': ?isVerified,
  'issues_url': ?issuesUrl,
  'login': ?login,
  'members_url': ?membersUrl,
  'name': ?name,
  'node_id': nodeId,
  'organizations_url': ?organizationsUrl,
  'public_gists': ?publicGists,
  'public_members_url': ?publicMembersUrl,
  'public_repos': ?publicRepos,
  'received_events_url': ?receivedEventsUrl,
  'repos_url': ?reposUrl,
  'site_admin': ?siteAdmin,
  'slug': ?slug,
  'starred_url': ?starredUrl,
  'subscriptions_url': ?subscriptionsUrl,
  'type': ?type,
  'updated_at': ?updatedAt,
  'url': ?url,
  'website_url': ?websiteUrl,
  'user_view_type': ?userViewType,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('avatar_url') && json['avatar_url'] is String &&
      json.containsKey('html_url') && json['html_url'] is String &&
      json.containsKey('id') && json['id'] is num &&
      json.containsKey('node_id') && json['node_id'] is String; } 
WebhookInstallationTargetRenamedAccount copyWith({String? Function()? archivedAt, String? avatarUrl, String Function()? createdAt, dynamic Function()? description, String Function()? eventsUrl, int Function()? followers, String Function()? followersUrl, int Function()? following, String Function()? followingUrl, String Function()? gistsUrl, String Function()? gravatarId, bool Function()? hasOrganizationProjects, bool Function()? hasRepositoryProjects, String Function()? hooksUrl, String? htmlUrl, int? id, bool Function()? isVerified, String Function()? issuesUrl, String Function()? login, String Function()? membersUrl, String Function()? name, String? nodeId, String Function()? organizationsUrl, int Function()? publicGists, String Function()? publicMembersUrl, int Function()? publicRepos, String Function()? receivedEventsUrl, String Function()? reposUrl, bool Function()? siteAdmin, String Function()? slug, String Function()? starredUrl, String Function()? subscriptionsUrl, String Function()? type, String Function()? updatedAt, String Function()? url, dynamic Function()? websiteUrl, String Function()? userViewType, }) { return WebhookInstallationTargetRenamedAccount(
  archivedAt: archivedAt != null ? archivedAt() : this.archivedAt,
  avatarUrl: avatarUrl ?? this.avatarUrl,
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  description: description != null ? description() : this.description,
  eventsUrl: eventsUrl != null ? eventsUrl() : this.eventsUrl,
  followers: followers != null ? followers() : this.followers,
  followersUrl: followersUrl != null ? followersUrl() : this.followersUrl,
  following: following != null ? following() : this.following,
  followingUrl: followingUrl != null ? followingUrl() : this.followingUrl,
  gistsUrl: gistsUrl != null ? gistsUrl() : this.gistsUrl,
  gravatarId: gravatarId != null ? gravatarId() : this.gravatarId,
  hasOrganizationProjects: hasOrganizationProjects != null ? hasOrganizationProjects() : this.hasOrganizationProjects,
  hasRepositoryProjects: hasRepositoryProjects != null ? hasRepositoryProjects() : this.hasRepositoryProjects,
  hooksUrl: hooksUrl != null ? hooksUrl() : this.hooksUrl,
  htmlUrl: htmlUrl ?? this.htmlUrl,
  id: id ?? this.id,
  isVerified: isVerified != null ? isVerified() : this.isVerified,
  issuesUrl: issuesUrl != null ? issuesUrl() : this.issuesUrl,
  login: login != null ? login() : this.login,
  membersUrl: membersUrl != null ? membersUrl() : this.membersUrl,
  name: name != null ? name() : this.name,
  nodeId: nodeId ?? this.nodeId,
  organizationsUrl: organizationsUrl != null ? organizationsUrl() : this.organizationsUrl,
  publicGists: publicGists != null ? publicGists() : this.publicGists,
  publicMembersUrl: publicMembersUrl != null ? publicMembersUrl() : this.publicMembersUrl,
  publicRepos: publicRepos != null ? publicRepos() : this.publicRepos,
  receivedEventsUrl: receivedEventsUrl != null ? receivedEventsUrl() : this.receivedEventsUrl,
  reposUrl: reposUrl != null ? reposUrl() : this.reposUrl,
  siteAdmin: siteAdmin != null ? siteAdmin() : this.siteAdmin,
  slug: slug != null ? slug() : this.slug,
  starredUrl: starredUrl != null ? starredUrl() : this.starredUrl,
  subscriptionsUrl: subscriptionsUrl != null ? subscriptionsUrl() : this.subscriptionsUrl,
  type: type != null ? type() : this.type,
  updatedAt: updatedAt != null ? updatedAt() : this.updatedAt,
  url: url != null ? url() : this.url,
  websiteUrl: websiteUrl != null ? websiteUrl() : this.websiteUrl,
  userViewType: userViewType != null ? userViewType() : this.userViewType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookInstallationTargetRenamedAccount &&
          archivedAt == other.archivedAt &&
          avatarUrl == other.avatarUrl &&
          createdAt == other.createdAt &&
          description == other.description &&
          eventsUrl == other.eventsUrl &&
          followers == other.followers &&
          followersUrl == other.followersUrl &&
          following == other.following &&
          followingUrl == other.followingUrl &&
          gistsUrl == other.gistsUrl &&
          gravatarId == other.gravatarId &&
          hasOrganizationProjects == other.hasOrganizationProjects &&
          hasRepositoryProjects == other.hasRepositoryProjects &&
          hooksUrl == other.hooksUrl &&
          htmlUrl == other.htmlUrl &&
          id == other.id &&
          isVerified == other.isVerified &&
          issuesUrl == other.issuesUrl &&
          login == other.login &&
          membersUrl == other.membersUrl &&
          name == other.name &&
          nodeId == other.nodeId &&
          organizationsUrl == other.organizationsUrl &&
          publicGists == other.publicGists &&
          publicMembersUrl == other.publicMembersUrl &&
          publicRepos == other.publicRepos &&
          receivedEventsUrl == other.receivedEventsUrl &&
          reposUrl == other.reposUrl &&
          siteAdmin == other.siteAdmin &&
          slug == other.slug &&
          starredUrl == other.starredUrl &&
          subscriptionsUrl == other.subscriptionsUrl &&
          type == other.type &&
          updatedAt == other.updatedAt &&
          url == other.url &&
          websiteUrl == other.websiteUrl &&
          userViewType == other.userViewType; } 
@override int get hashCode { return Object.hashAll([archivedAt, avatarUrl, createdAt, description, eventsUrl, followers, followersUrl, following, followingUrl, gistsUrl, gravatarId, hasOrganizationProjects, hasRepositoryProjects, hooksUrl, htmlUrl, id, isVerified, issuesUrl, login, membersUrl, name, nodeId, organizationsUrl, publicGists, publicMembersUrl, publicRepos, receivedEventsUrl, reposUrl, siteAdmin, slug, starredUrl, subscriptionsUrl, type, updatedAt, url, websiteUrl, userViewType]); } 
@override String toString() { return 'WebhookInstallationTargetRenamedAccount(archivedAt: $archivedAt, avatarUrl: $avatarUrl, createdAt: $createdAt, description: $description, eventsUrl: $eventsUrl, followers: $followers, followersUrl: $followersUrl, following: $following, followingUrl: $followingUrl, gistsUrl: $gistsUrl, gravatarId: $gravatarId, hasOrganizationProjects: $hasOrganizationProjects, hasRepositoryProjects: $hasRepositoryProjects, hooksUrl: $hooksUrl, htmlUrl: $htmlUrl, id: $id, isVerified: $isVerified, issuesUrl: $issuesUrl, login: $login, membersUrl: $membersUrl, name: $name, nodeId: $nodeId, organizationsUrl: $organizationsUrl, publicGists: $publicGists, publicMembersUrl: $publicMembersUrl, publicRepos: $publicRepos, receivedEventsUrl: $receivedEventsUrl, reposUrl: $reposUrl, siteAdmin: $siteAdmin, slug: $slug, starredUrl: $starredUrl, subscriptionsUrl: $subscriptionsUrl, type: $type, updatedAt: $updatedAt, url: $url, websiteUrl: $websiteUrl, userViewType: $userViewType)'; } 
 }
