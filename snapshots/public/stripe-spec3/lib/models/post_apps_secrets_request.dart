// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_apps_secrets_request_scope.dart';@immutable final class PostAppsSecretsRequest {const PostAppsSecretsRequest({required this.name, required this.payload, required this.scope, this.expand, this.expiresAt, });

factory PostAppsSecretsRequest.fromJson(Map<String, dynamic> json) { return PostAppsSecretsRequest(
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
  expiresAt: json['expires_at'] != null ? (json['expires_at'] as num).toInt() : null,
  name: json['name'] as String,
  payload: json['payload'] as String,
  scope: PostAppsSecretsRequestScope.fromJson(json['scope'] as Map<String, dynamic>),
); }

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

/// The Unix timestamp for the expiry time of the secret, after which the secret deletes.
final int? expiresAt;

/// A name for the secret that's unique within the scope.
final String name;

/// The plaintext secret value to be stored.
final String payload;

/// Specifies the scoping of the secret. Requests originating from UI extensions can only access account-scoped secrets or secrets scoped to their own user.
final PostAppsSecretsRequestScope scope;

Map<String, dynamic> toJson() { return {
  'expand': ?expand,
  'expires_at': ?expiresAt,
  'name': name,
  'payload': payload,
  'scope': scope.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String &&
      json.containsKey('payload') && json['payload'] is String &&
      json.containsKey('scope'); } 
PostAppsSecretsRequest copyWith({List<String> Function()? expand, int Function()? expiresAt, String? name, String? payload, PostAppsSecretsRequestScope? scope, }) { return PostAppsSecretsRequest(
  expand: expand != null ? expand() : this.expand,
  expiresAt: expiresAt != null ? expiresAt() : this.expiresAt,
  name: name ?? this.name,
  payload: payload ?? this.payload,
  scope: scope ?? this.scope,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAppsSecretsRequest &&
          listEquals(expand, other.expand) &&
          expiresAt == other.expiresAt &&
          name == other.name &&
          payload == other.payload &&
          scope == other.scope; } 
@override int get hashCode { return Object.hash(Object.hashAll(expand ?? const []), expiresAt, name, payload, scope); } 
@override String toString() { return 'PostAppsSecretsRequest(expand: $expand, expiresAt: $expiresAt, name: $name, payload: $payload, scope: $scope)'; } 
 }
