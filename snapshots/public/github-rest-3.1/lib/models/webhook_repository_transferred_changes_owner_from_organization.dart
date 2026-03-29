// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookRepositoryTransferredChangesOwnerFromOrganization {const WebhookRepositoryTransferredChangesOwnerFromOrganization({required this.avatarUrl, required this.description, required this.eventsUrl, required this.hooksUrl, this.htmlUrl, required this.id, required this.issuesUrl, required this.login, required this.membersUrl, required this.nodeId, required this.publicMembersUrl, required this.reposUrl, required this.url, });

factory WebhookRepositoryTransferredChangesOwnerFromOrganization.fromJson(Map<String, dynamic> json) { return WebhookRepositoryTransferredChangesOwnerFromOrganization(
  avatarUrl: Uri.parse(json['avatar_url'] as String),
  description: json['description'] as String?,
  eventsUrl: Uri.parse(json['events_url'] as String),
  hooksUrl: Uri.parse(json['hooks_url'] as String),
  htmlUrl: json['html_url'] != null ? Uri.parse(json['html_url'] as String) : null,
  id: (json['id'] as num).toInt(),
  issuesUrl: Uri.parse(json['issues_url'] as String),
  login: json['login'] as String,
  membersUrl: json['members_url'] as String,
  nodeId: json['node_id'] as String,
  publicMembersUrl: json['public_members_url'] as String,
  reposUrl: Uri.parse(json['repos_url'] as String),
  url: Uri.parse(json['url'] as String),
); }

final Uri avatarUrl;

final String? description;

final Uri eventsUrl;

final Uri hooksUrl;

final Uri? htmlUrl;

final int id;

final Uri issuesUrl;

final String login;

final String membersUrl;

final String nodeId;

final String publicMembersUrl;

final Uri reposUrl;

final Uri url;

Map<String, dynamic> toJson() { return {
  'avatar_url': avatarUrl.toString(),
  'description': ?description,
  'events_url': eventsUrl.toString(),
  'hooks_url': hooksUrl.toString(),
  if (htmlUrl != null) 'html_url': htmlUrl?.toString(),
  'id': id,
  'issues_url': issuesUrl.toString(),
  'login': login,
  'members_url': membersUrl,
  'node_id': nodeId,
  'public_members_url': publicMembersUrl,
  'repos_url': reposUrl.toString(),
  'url': url.toString(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('avatar_url') && json['avatar_url'] is String &&
      json.containsKey('description') && json['description'] is String &&
      json.containsKey('events_url') && json['events_url'] is String &&
      json.containsKey('hooks_url') && json['hooks_url'] is String &&
      json.containsKey('id') && json['id'] is num &&
      json.containsKey('issues_url') && json['issues_url'] is String &&
      json.containsKey('login') && json['login'] is String &&
      json.containsKey('members_url') && json['members_url'] is String &&
      json.containsKey('node_id') && json['node_id'] is String &&
      json.containsKey('public_members_url') && json['public_members_url'] is String &&
      json.containsKey('repos_url') && json['repos_url'] is String &&
      json.containsKey('url') && json['url'] is String; } 
WebhookRepositoryTransferredChangesOwnerFromOrganization copyWith({Uri? avatarUrl, String? Function()? description, Uri? eventsUrl, Uri? hooksUrl, Uri Function()? htmlUrl, int? id, Uri? issuesUrl, String? login, String? membersUrl, String? nodeId, String? publicMembersUrl, Uri? reposUrl, Uri? url, }) { return WebhookRepositoryTransferredChangesOwnerFromOrganization(
  avatarUrl: avatarUrl ?? this.avatarUrl,
  description: description != null ? description() : this.description,
  eventsUrl: eventsUrl ?? this.eventsUrl,
  hooksUrl: hooksUrl ?? this.hooksUrl,
  htmlUrl: htmlUrl != null ? htmlUrl() : this.htmlUrl,
  id: id ?? this.id,
  issuesUrl: issuesUrl ?? this.issuesUrl,
  login: login ?? this.login,
  membersUrl: membersUrl ?? this.membersUrl,
  nodeId: nodeId ?? this.nodeId,
  publicMembersUrl: publicMembersUrl ?? this.publicMembersUrl,
  reposUrl: reposUrl ?? this.reposUrl,
  url: url ?? this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookRepositoryTransferredChangesOwnerFromOrganization &&
          avatarUrl == other.avatarUrl &&
          description == other.description &&
          eventsUrl == other.eventsUrl &&
          hooksUrl == other.hooksUrl &&
          htmlUrl == other.htmlUrl &&
          id == other.id &&
          issuesUrl == other.issuesUrl &&
          login == other.login &&
          membersUrl == other.membersUrl &&
          nodeId == other.nodeId &&
          publicMembersUrl == other.publicMembersUrl &&
          reposUrl == other.reposUrl &&
          url == other.url; } 
@override int get hashCode { return Object.hash(avatarUrl, description, eventsUrl, hooksUrl, htmlUrl, id, issuesUrl, login, membersUrl, nodeId, publicMembersUrl, reposUrl, url); } 
@override String toString() { return 'WebhookRepositoryTransferredChangesOwnerFromOrganization(avatarUrl: $avatarUrl, description: $description, eventsUrl: $eventsUrl, hooksUrl: $hooksUrl, htmlUrl: $htmlUrl, id: $id, issuesUrl: $issuesUrl, login: $login, membersUrl: $membersUrl, nodeId: $nodeId, publicMembersUrl: $publicMembersUrl, reposUrl: $reposUrl, url: $url)'; } 
 }
