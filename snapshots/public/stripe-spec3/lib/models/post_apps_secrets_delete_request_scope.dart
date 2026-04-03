// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAppsSecretsDeleteRequestScopeType {const PostAppsSecretsDeleteRequestScopeType._(this.value);

factory PostAppsSecretsDeleteRequestScopeType.fromJson(String json) { return switch (json) {
  'account' => account,
  'user' => user,
  _ => PostAppsSecretsDeleteRequestScopeType._(json),
}; }

static const PostAppsSecretsDeleteRequestScopeType account = PostAppsSecretsDeleteRequestScopeType._('account');

static const PostAppsSecretsDeleteRequestScopeType user = PostAppsSecretsDeleteRequestScopeType._('user');

static const List<PostAppsSecretsDeleteRequestScopeType> values = [account, user];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAppsSecretsDeleteRequestScopeType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAppsSecretsDeleteRequestScopeType($value)'; } 
 }
/// Specifies the scoping of the secret. Requests originating from UI extensions can only access account-scoped secrets or secrets scoped to their own user.
@immutable final class PostAppsSecretsDeleteRequestScope {const PostAppsSecretsDeleteRequestScope({required this.type, this.user, });

factory PostAppsSecretsDeleteRequestScope.fromJson(Map<String, dynamic> json) { return PostAppsSecretsDeleteRequestScope(
  type: PostAppsSecretsDeleteRequestScopeType.fromJson(json['type'] as String),
  user: json['user'] as String?,
); }

final PostAppsSecretsDeleteRequestScopeType type;

final String? user;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  'user': ?user,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostAppsSecretsDeleteRequestScope copyWith({PostAppsSecretsDeleteRequestScopeType? type, String Function()? user, }) { return PostAppsSecretsDeleteRequestScope(
  type: type ?? this.type,
  user: user != null ? user() : this.user,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAppsSecretsDeleteRequestScope &&
          type == other.type &&
          user == other.user; } 
@override int get hashCode { return Object.hash(type, user); } 
@override String toString() { return 'PostAppsSecretsDeleteRequestScope(type: $type, user: $user)'; } 
 }
