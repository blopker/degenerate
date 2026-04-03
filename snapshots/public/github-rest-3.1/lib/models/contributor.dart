// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Contributor
@immutable final class Contributor {const Contributor({required this.type, required this.contributions, this.login, this.id, this.nodeId, this.avatarUrl, this.gravatarId, this.url, this.htmlUrl, this.followersUrl, this.followingUrl, this.gistsUrl, this.starredUrl, this.subscriptionsUrl, this.organizationsUrl, this.reposUrl, this.eventsUrl, this.receivedEventsUrl, this.siteAdmin, this.email, this.name, this.userViewType, });

factory Contributor.fromJson(Map<String, dynamic> json) { return Contributor(
  login: json['login'] as String?,
  id: json['id'] != null ? (json['id'] as num).toInt() : null,
  nodeId: json['node_id'] as String?,
  avatarUrl: json['avatar_url'] != null ? Uri.parse(json['avatar_url'] as String) : null,
  gravatarId: json['gravatar_id'] as String?,
  url: json['url'] != null ? Uri.parse(json['url'] as String) : null,
  htmlUrl: json['html_url'] != null ? Uri.parse(json['html_url'] as String) : null,
  followersUrl: json['followers_url'] != null ? Uri.parse(json['followers_url'] as String) : null,
  followingUrl: json['following_url'] as String?,
  gistsUrl: json['gists_url'] as String?,
  starredUrl: json['starred_url'] as String?,
  subscriptionsUrl: json['subscriptions_url'] != null ? Uri.parse(json['subscriptions_url'] as String) : null,
  organizationsUrl: json['organizations_url'] != null ? Uri.parse(json['organizations_url'] as String) : null,
  reposUrl: json['repos_url'] != null ? Uri.parse(json['repos_url'] as String) : null,
  eventsUrl: json['events_url'] as String?,
  receivedEventsUrl: json['received_events_url'] != null ? Uri.parse(json['received_events_url'] as String) : null,
  type: json['type'] as String,
  siteAdmin: json['site_admin'] as bool?,
  contributions: (json['contributions'] as num).toInt(),
  email: json['email'] as String?,
  name: json['name'] as String?,
  userViewType: json['user_view_type'] as String?,
); }

final String? login;

final int? id;

final String? nodeId;

final Uri? avatarUrl;

final String? gravatarId;

final Uri? url;

final Uri? htmlUrl;

final Uri? followersUrl;

final String? followingUrl;

final String? gistsUrl;

final String? starredUrl;

final Uri? subscriptionsUrl;

final Uri? organizationsUrl;

final Uri? reposUrl;

final String? eventsUrl;

final Uri? receivedEventsUrl;

final String type;

final bool? siteAdmin;

final int contributions;

final String? email;

final String? name;

final String? userViewType;

Map<String, dynamic> toJson() { return {
  'login': ?login,
  'id': ?id,
  'node_id': ?nodeId,
  if (avatarUrl != null) 'avatar_url': avatarUrl?.toString(),
  'gravatar_id': ?gravatarId,
  if (url != null) 'url': url?.toString(),
  if (htmlUrl != null) 'html_url': htmlUrl?.toString(),
  if (followersUrl != null) 'followers_url': followersUrl?.toString(),
  'following_url': ?followingUrl,
  'gists_url': ?gistsUrl,
  'starred_url': ?starredUrl,
  if (subscriptionsUrl != null) 'subscriptions_url': subscriptionsUrl?.toString(),
  if (organizationsUrl != null) 'organizations_url': organizationsUrl?.toString(),
  if (reposUrl != null) 'repos_url': reposUrl?.toString(),
  'events_url': ?eventsUrl,
  if (receivedEventsUrl != null) 'received_events_url': receivedEventsUrl?.toString(),
  'type': type,
  'site_admin': ?siteAdmin,
  'contributions': contributions,
  'email': ?email,
  'name': ?name,
  'user_view_type': ?userViewType,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String &&
      json.containsKey('contributions') && json['contributions'] is num; } 
Contributor copyWith({String Function()? login, int Function()? id, String Function()? nodeId, Uri Function()? avatarUrl, String? Function()? gravatarId, Uri Function()? url, Uri Function()? htmlUrl, Uri Function()? followersUrl, String Function()? followingUrl, String Function()? gistsUrl, String Function()? starredUrl, Uri Function()? subscriptionsUrl, Uri Function()? organizationsUrl, Uri Function()? reposUrl, String Function()? eventsUrl, Uri Function()? receivedEventsUrl, String? type, bool Function()? siteAdmin, int? contributions, String Function()? email, String Function()? name, String Function()? userViewType, }) { return Contributor(
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
  type: type ?? this.type,
  siteAdmin: siteAdmin != null ? siteAdmin() : this.siteAdmin,
  contributions: contributions ?? this.contributions,
  email: email != null ? email() : this.email,
  name: name != null ? name() : this.name,
  userViewType: userViewType != null ? userViewType() : this.userViewType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Contributor &&
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
          contributions == other.contributions &&
          email == other.email &&
          name == other.name &&
          userViewType == other.userViewType; } 
@override int get hashCode { return Object.hashAll([login, id, nodeId, avatarUrl, gravatarId, url, htmlUrl, followersUrl, followingUrl, gistsUrl, starredUrl, subscriptionsUrl, organizationsUrl, reposUrl, eventsUrl, receivedEventsUrl, type, siteAdmin, contributions, email, name, userViewType]); } 
@override String toString() { return 'Contributor(login: $login, id: $id, nodeId: $nodeId, avatarUrl: $avatarUrl, gravatarId: $gravatarId, url: $url, htmlUrl: $htmlUrl, followersUrl: $followersUrl, followingUrl: $followingUrl, gistsUrl: $gistsUrl, starredUrl: $starredUrl, subscriptionsUrl: $subscriptionsUrl, organizationsUrl: $organizationsUrl, reposUrl: $reposUrl, eventsUrl: $eventsUrl, receivedEventsUrl: $receivedEventsUrl, type: $type, siteAdmin: $siteAdmin, contributions: $contributions, email: $email, name: $name, userViewType: $userViewType)'; } 
 }
