// GENERATED CODE - DO NOT MODIFY BY HAND

final class BranchRestrictionPolicyUsers {const BranchRestrictionPolicyUsers({this.login, this.id, this.nodeId, this.avatarUrl, this.gravatarId, this.url, this.htmlUrl, this.followersUrl, this.followingUrl, this.gistsUrl, this.starredUrl, this.subscriptionsUrl, this.organizationsUrl, this.reposUrl, this.eventsUrl, this.receivedEventsUrl, this.type, this.siteAdmin, this.userViewType, });

factory BranchRestrictionPolicyUsers.fromJson(Map<String, dynamic> json) { return BranchRestrictionPolicyUsers(
  login: json['login'] as String?,
  id: json['id'] != null ? (json['id'] as num).toInt() : null,
  nodeId: json['node_id'] as String?,
  avatarUrl: json['avatar_url'] as String?,
  gravatarId: json['gravatar_id'] as String?,
  url: json['url'] as String?,
  htmlUrl: json['html_url'] as String?,
  followersUrl: json['followers_url'] as String?,
  followingUrl: json['following_url'] as String?,
  gistsUrl: json['gists_url'] as String?,
  starredUrl: json['starred_url'] as String?,
  subscriptionsUrl: json['subscriptions_url'] as String?,
  organizationsUrl: json['organizations_url'] as String?,
  reposUrl: json['repos_url'] as String?,
  eventsUrl: json['events_url'] as String?,
  receivedEventsUrl: json['received_events_url'] as String?,
  type: json['type'] as String?,
  siteAdmin: json['site_admin'] as bool?,
  userViewType: json['user_view_type'] as String?,
); }

final String? login;

final int? id;

final String? nodeId;

final String? avatarUrl;

final String? gravatarId;

final String? url;

final String? htmlUrl;

final String? followersUrl;

final String? followingUrl;

final String? gistsUrl;

final String? starredUrl;

final String? subscriptionsUrl;

final String? organizationsUrl;

final String? reposUrl;

final String? eventsUrl;

final String? receivedEventsUrl;

final String? type;

final bool? siteAdmin;

final String? userViewType;

Map<String, dynamic> toJson() { return {
  'login': ?login,
  'id': ?id,
  'node_id': ?nodeId,
  'avatar_url': ?avatarUrl,
  'gravatar_id': ?gravatarId,
  'url': ?url,
  'html_url': ?htmlUrl,
  'followers_url': ?followersUrl,
  'following_url': ?followingUrl,
  'gists_url': ?gistsUrl,
  'starred_url': ?starredUrl,
  'subscriptions_url': ?subscriptionsUrl,
  'organizations_url': ?organizationsUrl,
  'repos_url': ?reposUrl,
  'events_url': ?eventsUrl,
  'received_events_url': ?receivedEventsUrl,
  'type': ?type,
  'site_admin': ?siteAdmin,
  'user_view_type': ?userViewType,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
BranchRestrictionPolicyUsers copyWith({String Function()? login, int Function()? id, String Function()? nodeId, String Function()? avatarUrl, String Function()? gravatarId, String Function()? url, String Function()? htmlUrl, String Function()? followersUrl, String Function()? followingUrl, String Function()? gistsUrl, String Function()? starredUrl, String Function()? subscriptionsUrl, String Function()? organizationsUrl, String Function()? reposUrl, String Function()? eventsUrl, String Function()? receivedEventsUrl, String Function()? type, bool Function()? siteAdmin, String Function()? userViewType, }) { return BranchRestrictionPolicyUsers(
  login: login != null ? login() : this.login,
  id: id != null ? id() : this.id,
  nodeId: nodeId != null ? nodeId() : this.nodeId,
  avatarUrl: avatarUrl != null ? avatarUrl() : this.avatarUrl,
  gravatarId: gravatarId != null ? gravatarId() : this.gravatarId,
  url: url != null ? url() : this.url,
  htmlUrl: htmlUrl != null ? htmlUrl() : this.htmlUrl,
  followersUrl: followersUrl != null ? followersUrl() : this.followersUrl,
  followingUrl: followingUrl != null ? followingUrl() : this.followingUrl,
  gistsUrl: gistsUrl != null ? gistsUrl() : this.gistsUrl,
  starredUrl: starredUrl != null ? starredUrl() : this.starredUrl,
  subscriptionsUrl: subscriptionsUrl != null ? subscriptionsUrl() : this.subscriptionsUrl,
  organizationsUrl: organizationsUrl != null ? organizationsUrl() : this.organizationsUrl,
  reposUrl: reposUrl != null ? reposUrl() : this.reposUrl,
  eventsUrl: eventsUrl != null ? eventsUrl() : this.eventsUrl,
  receivedEventsUrl: receivedEventsUrl != null ? receivedEventsUrl() : this.receivedEventsUrl,
  type: type != null ? type() : this.type,
  siteAdmin: siteAdmin != null ? siteAdmin() : this.siteAdmin,
  userViewType: userViewType != null ? userViewType() : this.userViewType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BranchRestrictionPolicyUsers &&
          login == other.login &&
          id == other.id &&
          nodeId == other.nodeId &&
          avatarUrl == other.avatarUrl &&
          gravatarId == other.gravatarId &&
          url == other.url &&
          htmlUrl == other.htmlUrl &&
          followersUrl == other.followersUrl &&
          followingUrl == other.followingUrl &&
          gistsUrl == other.gistsUrl &&
          starredUrl == other.starredUrl &&
          subscriptionsUrl == other.subscriptionsUrl &&
          organizationsUrl == other.organizationsUrl &&
          reposUrl == other.reposUrl &&
          eventsUrl == other.eventsUrl &&
          receivedEventsUrl == other.receivedEventsUrl &&
          type == other.type &&
          siteAdmin == other.siteAdmin &&
          userViewType == other.userViewType; } 
@override int get hashCode { return Object.hash(login, id, nodeId, avatarUrl, gravatarId, url, htmlUrl, followersUrl, followingUrl, gistsUrl, starredUrl, subscriptionsUrl, organizationsUrl, reposUrl, eventsUrl, receivedEventsUrl, type, siteAdmin, userViewType); } 
@override String toString() { return 'BranchRestrictionPolicyUsers(login: $login, id: $id, nodeId: $nodeId, avatarUrl: $avatarUrl, gravatarId: $gravatarId, url: $url, htmlUrl: $htmlUrl, followersUrl: $followersUrl, followingUrl: $followingUrl, gistsUrl: $gistsUrl, starredUrl: $starredUrl, subscriptionsUrl: $subscriptionsUrl, organizationsUrl: $organizationsUrl, reposUrl: $reposUrl, eventsUrl: $eventsUrl, receivedEventsUrl: $receivedEventsUrl, type: $type, siteAdmin: $siteAdmin, userViewType: $userViewType)'; } 
 }
