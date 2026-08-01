// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'search_result_text_matches2.dart';/// User Search Result Item
@immutable final class UserSearchResultItem {const UserSearchResultItem({required this.type, required this.id, required this.nodeId, required this.avatarUrl, required this.gravatarId, required this.url, required this.htmlUrl, required this.followersUrl, required this.subscriptionsUrl, required this.organizationsUrl, required this.reposUrl, required this.receivedEventsUrl, required this.login, required this.score, required this.followingUrl, required this.gistsUrl, required this.starredUrl, required this.eventsUrl, required this.siteAdmin, this.publicGists, this.followers, this.following, this.userViewType, this.updatedAt, this.name = const Omittable.absent(), this.bio = const Omittable.absent(), this.email = const Omittable.absent(), this.location = const Omittable.absent(), this.publicRepos, this.hireable = const Omittable.absent(), this.textMatches, this.blog = const Omittable.absent(), this.company = const Omittable.absent(), this.suspendedAt = const Omittable.absent(), this.createdAt, });

factory UserSearchResultItem.fromJson(Map<String, dynamic> json) { return UserSearchResultItem(
  login: json['login'] as String,
  id: (json['id'] as num).toInt(),
  nodeId: json['node_id'] as String,
  avatarUrl: Uri.parse(json['avatar_url'] as String),
  gravatarId: json['gravatar_id'] as String?,
  url: Uri.parse(json['url'] as String),
  htmlUrl: Uri.parse(json['html_url'] as String),
  followersUrl: Uri.parse(json['followers_url'] as String),
  subscriptionsUrl: Uri.parse(json['subscriptions_url'] as String),
  organizationsUrl: Uri.parse(json['organizations_url'] as String),
  reposUrl: Uri.parse(json['repos_url'] as String),
  receivedEventsUrl: Uri.parse(json['received_events_url'] as String),
  type: json['type'] as String,
  score: (json['score'] as num).toDouble(),
  followingUrl: json['following_url'] as String,
  gistsUrl: json['gists_url'] as String,
  starredUrl: json['starred_url'] as String,
  eventsUrl: json['events_url'] as String,
  publicRepos: json['public_repos'] != null ? (json['public_repos'] as num).toInt() : null,
  publicGists: json['public_gists'] != null ? (json['public_gists'] as num).toInt() : null,
  followers: json['followers'] != null ? (json['followers'] as num).toInt() : null,
  following: json['following'] != null ? (json['following'] as num).toInt() : null,
  createdAt: json['created_at'] != null ? DateTime.parse(json['created_at'] as String) : null,
  updatedAt: json['updated_at'] != null ? DateTime.parse(json['updated_at'] as String) : null,
  name: json.containsKey('name') ? Omittable(json['name'] as String?) : const Omittable.absent(),
  bio: json.containsKey('bio') ? Omittable(json['bio'] as String?) : const Omittable.absent(),
  email: json.containsKey('email') ? Omittable(json['email'] as String?) : const Omittable.absent(),
  location: json.containsKey('location') ? Omittable(json['location'] as String?) : const Omittable.absent(),
  siteAdmin: json['site_admin'] as bool,
  hireable: json.containsKey('hireable') ? Omittable(json['hireable'] as bool?) : const Omittable.absent(),
  textMatches: (json['text_matches'] as List<dynamic>?)?.map((e) => SearchResultTextMatches2.fromJson(e as Map<String, dynamic>)).toList(),
  blog: json.containsKey('blog') ? Omittable(json['blog'] as String?) : const Omittable.absent(),
  company: json.containsKey('company') ? Omittable(json['company'] as String?) : const Omittable.absent(),
  suspendedAt: json.containsKey('suspended_at') ? Omittable(json['suspended_at'] != null ? DateTime.parse(json['suspended_at'] as String) : null) : const Omittable.absent(),
  userViewType: json['user_view_type'] as String?,
); }

final String login;

final int id;

final String nodeId;

final Uri avatarUrl;

final String? gravatarId;

final Uri url;

final Uri htmlUrl;

final Uri followersUrl;

final Uri subscriptionsUrl;

final Uri organizationsUrl;

final Uri reposUrl;

final Uri receivedEventsUrl;

final String type;

final double score;

final String followingUrl;

final String gistsUrl;

final String starredUrl;

final String eventsUrl;

final int? publicRepos;

final int? publicGists;

final int? followers;

final int? following;

final DateTime? createdAt;

final DateTime? updatedAt;

final Omittable<String?> name;

final Omittable<String?> bio;

final Omittable<String?> email;

final Omittable<String?> location;

final bool siteAdmin;

final Omittable<bool?> hireable;

final List<SearchResultTextMatches2>? textMatches;

final Omittable<String?> blog;

final Omittable<String?> company;

final Omittable<DateTime?> suspendedAt;

final String? userViewType;

Map<String, dynamic> toJson() { return {
  'login': login,
  'id': id,
  'node_id': nodeId,
  'avatar_url': avatarUrl.toString(),
  'gravatar_id': gravatarId,
  'url': url.toString(),
  'html_url': htmlUrl.toString(),
  'followers_url': followersUrl.toString(),
  'subscriptions_url': subscriptionsUrl.toString(),
  'organizations_url': organizationsUrl.toString(),
  'repos_url': reposUrl.toString(),
  'received_events_url': receivedEventsUrl.toString(),
  'type': type,
  'score': score,
  'following_url': followingUrl,
  'gists_url': gistsUrl,
  'starred_url': starredUrl,
  'events_url': eventsUrl,
  'public_repos': ?publicRepos,
  'public_gists': ?publicGists,
  'followers': ?followers,
  'following': ?following,
  if (createdAt != null) 'created_at': createdAt?.toIso8601String(),
  if (updatedAt != null) 'updated_at': updatedAt?.toIso8601String(),
  if (name.isPresent) 'name': name.value,
  if (bio.isPresent) 'bio': bio.value,
  if (email.isPresent) 'email': email.value,
  if (location.isPresent) 'location': location.value,
  'site_admin': siteAdmin,
  if (hireable.isPresent) 'hireable': hireable.value,
  if (textMatches != null) 'text_matches': textMatches?.map((e) => e.toJson()).toList(),
  if (blog.isPresent) 'blog': blog.value,
  if (company.isPresent) 'company': company.value,
  if (suspendedAt.isPresent) 'suspended_at': suspendedAt.value?.toIso8601String(),
  'user_view_type': ?userViewType,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('login') && json['login'] is String &&
      json.containsKey('id') && json['id'] is num &&
      json.containsKey('node_id') && json['node_id'] is String &&
      json.containsKey('avatar_url') && json['avatar_url'] is String &&
      json.containsKey('gravatar_id') && (json['gravatar_id'] == null || json['gravatar_id'] is String) &&
      json.containsKey('url') && json['url'] is String &&
      json.containsKey('html_url') && json['html_url'] is String &&
      json.containsKey('followers_url') && json['followers_url'] is String &&
      json.containsKey('subscriptions_url') && json['subscriptions_url'] is String &&
      json.containsKey('organizations_url') && json['organizations_url'] is String &&
      json.containsKey('repos_url') && json['repos_url'] is String &&
      json.containsKey('received_events_url') && json['received_events_url'] is String &&
      json.containsKey('type') && json['type'] is String &&
      json.containsKey('score') && json['score'] is num &&
      json.containsKey('following_url') && json['following_url'] is String &&
      json.containsKey('gists_url') && json['gists_url'] is String &&
      json.containsKey('starred_url') && json['starred_url'] is String &&
      json.containsKey('events_url') && json['events_url'] is String &&
      json.containsKey('site_admin') && json['site_admin'] is bool; } 
UserSearchResultItem copyWith({String? login, int? id, String? nodeId, Uri? avatarUrl, String? Function()? gravatarId, Uri? url, Uri? htmlUrl, Uri? followersUrl, Uri? subscriptionsUrl, Uri? organizationsUrl, Uri? reposUrl, Uri? receivedEventsUrl, String? type, double? score, String? followingUrl, String? gistsUrl, String? starredUrl, String? eventsUrl, int? Function()? publicRepos, int? Function()? publicGists, int? Function()? followers, int? Function()? following, DateTime? Function()? createdAt, DateTime? Function()? updatedAt, Omittable<String?>? name, Omittable<String?>? bio, Omittable<String?>? email, Omittable<String?>? location, bool? siteAdmin, Omittable<bool?>? hireable, List<SearchResultTextMatches2>? Function()? textMatches, Omittable<String?>? blog, Omittable<String?>? company, Omittable<DateTime?>? suspendedAt, String? Function()? userViewType, }) { return UserSearchResultItem(
  login: login ?? this.login,
  id: id ?? this.id,
  nodeId: nodeId ?? this.nodeId,
  avatarUrl: avatarUrl ?? this.avatarUrl,
  gravatarId: gravatarId != null ? gravatarId() : this.gravatarId,
  url: url ?? this.url,
  htmlUrl: htmlUrl ?? this.htmlUrl,
  followersUrl: followersUrl ?? this.followersUrl,
  subscriptionsUrl: subscriptionsUrl ?? this.subscriptionsUrl,
  organizationsUrl: organizationsUrl ?? this.organizationsUrl,
  reposUrl: reposUrl ?? this.reposUrl,
  receivedEventsUrl: receivedEventsUrl ?? this.receivedEventsUrl,
  type: type ?? this.type,
  score: score ?? this.score,
  followingUrl: followingUrl ?? this.followingUrl,
  gistsUrl: gistsUrl ?? this.gistsUrl,
  starredUrl: starredUrl ?? this.starredUrl,
  eventsUrl: eventsUrl ?? this.eventsUrl,
  publicRepos: publicRepos != null ? publicRepos() : this.publicRepos,
  publicGists: publicGists != null ? publicGists() : this.publicGists,
  followers: followers != null ? followers() : this.followers,
  following: following != null ? following() : this.following,
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  updatedAt: updatedAt != null ? updatedAt() : this.updatedAt,
  name: name ?? this.name,
  bio: bio ?? this.bio,
  email: email ?? this.email,
  location: location ?? this.location,
  siteAdmin: siteAdmin ?? this.siteAdmin,
  hireable: hireable ?? this.hireable,
  textMatches: textMatches != null ? textMatches() : this.textMatches,
  blog: blog ?? this.blog,
  company: company ?? this.company,
  suspendedAt: suspendedAt ?? this.suspendedAt,
  userViewType: userViewType != null ? userViewType() : this.userViewType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UserSearchResultItem &&
          login == other.login &&
          id == other.id &&
          nodeId == other.nodeId &&
          avatarUrl == other.avatarUrl &&
          gravatarId == other.gravatarId &&
          url == other.url &&
          htmlUrl == other.htmlUrl &&
          followersUrl == other.followersUrl &&
          subscriptionsUrl == other.subscriptionsUrl &&
          organizationsUrl == other.organizationsUrl &&
          reposUrl == other.reposUrl &&
          receivedEventsUrl == other.receivedEventsUrl &&
          type == other.type &&
          score == other.score &&
          followingUrl == other.followingUrl &&
          gistsUrl == other.gistsUrl &&
          starredUrl == other.starredUrl &&
          eventsUrl == other.eventsUrl &&
          publicRepos == other.publicRepos &&
          publicGists == other.publicGists &&
          followers == other.followers &&
          following == other.following &&
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt &&
          name == other.name &&
          bio == other.bio &&
          email == other.email &&
          location == other.location &&
          siteAdmin == other.siteAdmin &&
          hireable == other.hireable &&
          listEquals(textMatches, other.textMatches) &&
          blog == other.blog &&
          company == other.company &&
          suspendedAt == other.suspendedAt &&
          userViewType == other.userViewType; } 
@override int get hashCode { return Object.hashAll([login, id, nodeId, avatarUrl, gravatarId, url, htmlUrl, followersUrl, subscriptionsUrl, organizationsUrl, reposUrl, receivedEventsUrl, type, score, followingUrl, gistsUrl, starredUrl, eventsUrl, publicRepos, publicGists, followers, following, createdAt, updatedAt, name, bio, email, location, siteAdmin, hireable, Object.hashAll(textMatches ?? const []), blog, company, suspendedAt, userViewType]); } 
@override String toString() { return 'UserSearchResultItem(login: $login, id: $id, nodeId: $nodeId, avatarUrl: $avatarUrl, gravatarId: $gravatarId, url: $url, htmlUrl: $htmlUrl, followersUrl: $followersUrl, subscriptionsUrl: $subscriptionsUrl, organizationsUrl: $organizationsUrl, reposUrl: $reposUrl, receivedEventsUrl: $receivedEventsUrl, type: $type, score: $score, followingUrl: $followingUrl, gistsUrl: $gistsUrl, starredUrl: $starredUrl, eventsUrl: $eventsUrl, publicRepos: $publicRepos, publicGists: $publicGists, followers: $followers, following: $following, createdAt: $createdAt, updatedAt: $updatedAt, name: $name, bio: $bio, email: $email, location: $location, siteAdmin: $siteAdmin, hireable: $hireable, textMatches: $textMatches, blog: $blog, company: $company, suspendedAt: $suspendedAt, userViewType: $userViewType)'; } 
 }
