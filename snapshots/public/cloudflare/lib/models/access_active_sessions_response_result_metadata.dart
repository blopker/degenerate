// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_active_sessions_response_result_metadata_apps_value.dart';@immutable final class AccessActiveSessionsResponseResultMetadata {const AccessActiveSessionsResponseResultMetadata({this.apps, this.expires, this.iat, this.nonce, this.ttl, });

factory AccessActiveSessionsResponseResultMetadata.fromJson(Map<String, dynamic> json) { return AccessActiveSessionsResponseResultMetadata(
  apps: (json['apps'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, AccessActiveSessionsResponseResultMetadataAppsValue.fromJson(v as Map<String, dynamic>))),
  expires: json['expires'] != null ? (json['expires'] as num).toInt() : null,
  iat: json['iat'] != null ? (json['iat'] as num).toInt() : null,
  nonce: json['nonce'] as String?,
  ttl: json['ttl'] != null ? (json['ttl'] as num).toInt() : null,
); }

final Map<String,AccessActiveSessionsResponseResultMetadataAppsValue>? apps;

final int? expires;

final int? iat;

final String? nonce;

final int? ttl;

Map<String, dynamic> toJson() { return {
  if (apps != null) 'apps': apps?.map((k, v) => MapEntry(k, v.toJson())),
  'expires': ?expires,
  'iat': ?iat,
  'nonce': ?nonce,
  'ttl': ?ttl,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'apps', 'expires', 'iat', 'nonce', 'ttl'}.contains(key)); } 
AccessActiveSessionsResponseResultMetadata copyWith({Map<String, AccessActiveSessionsResponseResultMetadataAppsValue> Function()? apps, int Function()? expires, int Function()? iat, String Function()? nonce, int Function()? ttl, }) { return AccessActiveSessionsResponseResultMetadata(
  apps: apps != null ? apps() : this.apps,
  expires: expires != null ? expires() : this.expires,
  iat: iat != null ? iat() : this.iat,
  nonce: nonce != null ? nonce() : this.nonce,
  ttl: ttl != null ? ttl() : this.ttl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessActiveSessionsResponseResultMetadata &&
          apps == other.apps &&
          expires == other.expires &&
          iat == other.iat &&
          nonce == other.nonce &&
          ttl == other.ttl; } 
@override int get hashCode { return Object.hash(apps, expires, iat, nonce, ttl); } 
@override String toString() { return 'AccessActiveSessionsResponseResultMetadata(apps: $apps, expires: $expires, iat: $iat, nonce: $nonce, ttl: $ttl)'; } 
 }
