// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'personal_access_token_request_permissions_added.dart';import 'personal_access_token_request_permissions_result.dart';import 'personal_access_token_request_permissions_upgraded.dart';import 'personal_access_token_request_repositories.dart';import 'simple_user.dart';/// Type of repository selection requested.
@immutable final class PersonalAccessTokenRequestRepositorySelection {const PersonalAccessTokenRequestRepositorySelection._(this.value);

factory PersonalAccessTokenRequestRepositorySelection.fromJson(String json) { return switch (json) {
  'none' => none,
  'all' => all,
  'subset' => subset,
  _ => PersonalAccessTokenRequestRepositorySelection._(json),
}; }

static const PersonalAccessTokenRequestRepositorySelection none = PersonalAccessTokenRequestRepositorySelection._('none');

static const PersonalAccessTokenRequestRepositorySelection all = PersonalAccessTokenRequestRepositorySelection._('all');

static const PersonalAccessTokenRequestRepositorySelection subset = PersonalAccessTokenRequestRepositorySelection._('subset');

static const List<PersonalAccessTokenRequestRepositorySelection> values = [none, all, subset];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PersonalAccessTokenRequestRepositorySelection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PersonalAccessTokenRequestRepositorySelection($value)'; } 
 }
/// Details of a Personal Access Token Request.
@immutable final class PersonalAccessTokenRequest {const PersonalAccessTokenRequest({required this.id, required this.owner, required this.permissionsAdded, required this.permissionsUpgraded, required this.permissionsResult, required this.repositorySelection, required this.repositoryCount, required this.repositories, required this.createdAt, required this.tokenId, required this.tokenName, required this.tokenExpired, required this.tokenExpiresAt, required this.tokenLastUsedAt, });

factory PersonalAccessTokenRequest.fromJson(Map<String, dynamic> json) { return PersonalAccessTokenRequest(
  id: (json['id'] as num).toInt(),
  owner: SimpleUser.fromJson(json['owner'] as Map<String, dynamic>),
  permissionsAdded: PersonalAccessTokenRequestPermissionsAdded.fromJson(json['permissions_added'] as Map<String, dynamic>),
  permissionsUpgraded: PersonalAccessTokenRequestPermissionsUpgraded.fromJson(json['permissions_upgraded'] as Map<String, dynamic>),
  permissionsResult: PersonalAccessTokenRequestPermissionsResult.fromJson(json['permissions_result'] as Map<String, dynamic>),
  repositorySelection: PersonalAccessTokenRequestRepositorySelection.fromJson(json['repository_selection'] as String),
  repositoryCount: json['repository_count'] != null ? (json['repository_count'] as num).toInt() : null,
  repositories: (json['repositories'] as List<dynamic>?)?.map((e) => PersonalAccessTokenRequestRepositories.fromJson(e as Map<String, dynamic>)).toList(),
  createdAt: json['created_at'] as String,
  tokenId: (json['token_id'] as num).toInt(),
  tokenName: json['token_name'] as String,
  tokenExpired: json['token_expired'] as bool,
  tokenExpiresAt: json['token_expires_at'] as String?,
  tokenLastUsedAt: json['token_last_used_at'] as String?,
); }

/// Unique identifier of the request for access via fine-grained personal access token. Used as the `pat_request_id` parameter in the list and review API calls.
final int id;

final SimpleUser owner;

/// New requested permissions, categorized by type of permission.
final PersonalAccessTokenRequestPermissionsAdded permissionsAdded;

/// Requested permissions that elevate access for a previously approved request for access, categorized by type of permission.
final PersonalAccessTokenRequestPermissionsUpgraded permissionsUpgraded;

/// Permissions requested, categorized by type of permission. This field incorporates `permissions_added` and `permissions_upgraded`.
final PersonalAccessTokenRequestPermissionsResult permissionsResult;

/// Type of repository selection requested.
final PersonalAccessTokenRequestRepositorySelection repositorySelection;

/// The number of repositories the token is requesting access to. This field is only populated when `repository_selection` is `subset`.
final int? repositoryCount;

/// An array of repository objects the token is requesting access to. This field is only populated when `repository_selection` is `subset`.
final List<PersonalAccessTokenRequestRepositories>? repositories;

/// Date and time when the request for access was created.
final String createdAt;

/// Unique identifier of the user's token. This field can also be found in audit log events and the organization's settings for their PAT grants.
final int tokenId;

/// The name given to the user's token. This field can also be found in an organization's settings page for Active Tokens.
final String tokenName;

/// Whether the associated fine-grained personal access token has expired.
final bool tokenExpired;

/// Date and time when the associated fine-grained personal access token expires.
final String? tokenExpiresAt;

/// Date and time when the associated fine-grained personal access token was last used for authentication.
final String? tokenLastUsedAt;

Map<String, dynamic> toJson() { return {
  'id': id,
  'owner': owner.toJson(),
  'permissions_added': permissionsAdded.toJson(),
  'permissions_upgraded': permissionsUpgraded.toJson(),
  'permissions_result': permissionsResult.toJson(),
  'repository_selection': repositorySelection.toJson(),
  'repository_count': ?repositoryCount,
  if (repositories != null) 'repositories': repositories?.map((e) => e.toJson()).toList(),
  'created_at': createdAt,
  'token_id': tokenId,
  'token_name': tokenName,
  'token_expired': tokenExpired,
  'token_expires_at': ?tokenExpiresAt,
  'token_last_used_at': ?tokenLastUsedAt,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is num &&
      json.containsKey('owner') &&
      json.containsKey('permissions_added') &&
      json.containsKey('permissions_upgraded') &&
      json.containsKey('permissions_result') &&
      json.containsKey('repository_selection') &&
      json.containsKey('repository_count') && json['repository_count'] is num &&
      json.containsKey('repositories') &&
      json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('token_id') && json['token_id'] is num &&
      json.containsKey('token_name') && json['token_name'] is String &&
      json.containsKey('token_expired') && json['token_expired'] is bool &&
      json.containsKey('token_expires_at') && json['token_expires_at'] is String &&
      json.containsKey('token_last_used_at') && json['token_last_used_at'] is String; } 
PersonalAccessTokenRequest copyWith({int? id, SimpleUser? owner, PersonalAccessTokenRequestPermissionsAdded? permissionsAdded, PersonalAccessTokenRequestPermissionsUpgraded? permissionsUpgraded, PersonalAccessTokenRequestPermissionsResult? permissionsResult, PersonalAccessTokenRequestRepositorySelection? repositorySelection, int? Function()? repositoryCount, List<PersonalAccessTokenRequestRepositories>? Function()? repositories, String? createdAt, int? tokenId, String? tokenName, bool? tokenExpired, String? Function()? tokenExpiresAt, String? Function()? tokenLastUsedAt, }) { return PersonalAccessTokenRequest(
  id: id ?? this.id,
  owner: owner ?? this.owner,
  permissionsAdded: permissionsAdded ?? this.permissionsAdded,
  permissionsUpgraded: permissionsUpgraded ?? this.permissionsUpgraded,
  permissionsResult: permissionsResult ?? this.permissionsResult,
  repositorySelection: repositorySelection ?? this.repositorySelection,
  repositoryCount: repositoryCount != null ? repositoryCount() : this.repositoryCount,
  repositories: repositories != null ? repositories() : this.repositories,
  createdAt: createdAt ?? this.createdAt,
  tokenId: tokenId ?? this.tokenId,
  tokenName: tokenName ?? this.tokenName,
  tokenExpired: tokenExpired ?? this.tokenExpired,
  tokenExpiresAt: tokenExpiresAt != null ? tokenExpiresAt() : this.tokenExpiresAt,
  tokenLastUsedAt: tokenLastUsedAt != null ? tokenLastUsedAt() : this.tokenLastUsedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PersonalAccessTokenRequest &&
          id == other.id &&
          owner == other.owner &&
          permissionsAdded == other.permissionsAdded &&
          permissionsUpgraded == other.permissionsUpgraded &&
          permissionsResult == other.permissionsResult &&
          repositorySelection == other.repositorySelection &&
          repositoryCount == other.repositoryCount &&
          listEquals(repositories, other.repositories) &&
          createdAt == other.createdAt &&
          tokenId == other.tokenId &&
          tokenName == other.tokenName &&
          tokenExpired == other.tokenExpired &&
          tokenExpiresAt == other.tokenExpiresAt &&
          tokenLastUsedAt == other.tokenLastUsedAt; } 
@override int get hashCode { return Object.hash(id, owner, permissionsAdded, permissionsUpgraded, permissionsResult, repositorySelection, repositoryCount, Object.hashAll(repositories ?? const []), createdAt, tokenId, tokenName, tokenExpired, tokenExpiresAt, tokenLastUsedAt); } 
@override String toString() { return 'PersonalAccessTokenRequest(id: $id, owner: $owner, permissionsAdded: $permissionsAdded, permissionsUpgraded: $permissionsUpgraded, permissionsResult: $permissionsResult, repositorySelection: $repositorySelection, repositoryCount: $repositoryCount, repositories: $repositories, createdAt: $createdAt, tokenId: $tokenId, tokenName: $tokenName, tokenExpired: $tokenExpired, tokenExpiresAt: $tokenExpiresAt, tokenLastUsedAt: $tokenLastUsedAt)'; } 
 }
