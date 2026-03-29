// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'shield_credentials.dart';import 'shield_description.dart';import 'shield_timestamp.dart';import 'shield_title.dart';import 'shield_token_sources2.dart';import 'shield_token_type.dart';import 'shield_uuid.dart';final class ShieldTokenConfiguration {const ShieldTokenConfiguration({required this.createdAt, required this.credentials, required this.description, required this.id, required this.lastUpdated, required this.title, required this.tokenSources, required this.tokenType, });

factory ShieldTokenConfiguration.fromJson(Map<String, dynamic> json) { return ShieldTokenConfiguration(
  createdAt: ShieldTimestamp.fromJson(json['created_at'] as String),
  credentials: ShieldCredentials.fromJson(json['credentials'] as Map<String, dynamic>),
  description: ShieldDescription.fromJson(json['description'] as String),
  id: ShieldUuid.fromJson(json['id'] as String),
  lastUpdated: ShieldTimestamp.fromJson(json['last_updated'] as String),
  title: ShieldTitle.fromJson(json['title'] as String),
  tokenSources: (json['token_sources'] as List<dynamic>).map((e) => OneOf2.parse(e, fromA: (v) => ShieldHeader.fromJson(v as String), fromB: (v) => ShieldCookie.fromJson(v as String),)).toList(),
  tokenType: ShieldTokenType.fromJson(json['token_type'] as String),
); }

final ShieldTimestamp createdAt;

final ShieldCredentials credentials;

final ShieldDescription description;

final ShieldUuid id;

final ShieldTimestamp lastUpdated;

final ShieldTitle title;

final List<ShieldTokenSources2> tokenSources;

final ShieldTokenType tokenType;

Map<String, dynamic> toJson() { return {
  'created_at': createdAt.toJson(),
  'credentials': credentials.toJson(),
  'description': description.toJson(),
  'id': id.toJson(),
  'last_updated': lastUpdated.toJson(),
  'title': title.toJson(),
  'token_sources': tokenSources.map((e) => e.toJson()).toList(),
  'token_type': tokenType.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('created_at') &&
      json.containsKey('credentials') &&
      json.containsKey('description') &&
      json.containsKey('id') &&
      json.containsKey('last_updated') &&
      json.containsKey('title') &&
      json.containsKey('token_sources') &&
      json.containsKey('token_type'); } 
ShieldTokenConfiguration copyWith({ShieldTimestamp? createdAt, ShieldCredentials? credentials, ShieldDescription? description, ShieldUuid? id, ShieldTimestamp? lastUpdated, ShieldTitle? title, List<ShieldTokenSources2>? tokenSources, ShieldTokenType? tokenType, }) { return ShieldTokenConfiguration(
  createdAt: createdAt ?? this.createdAt,
  credentials: credentials ?? this.credentials,
  description: description ?? this.description,
  id: id ?? this.id,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  title: title ?? this.title,
  tokenSources: tokenSources ?? this.tokenSources,
  tokenType: tokenType ?? this.tokenType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ShieldTokenConfiguration &&
          createdAt == other.createdAt &&
          credentials == other.credentials &&
          description == other.description &&
          id == other.id &&
          lastUpdated == other.lastUpdated &&
          title == other.title &&
          listEquals(tokenSources, other.tokenSources) &&
          tokenType == other.tokenType; } 
@override int get hashCode { return Object.hash(createdAt, credentials, description, id, lastUpdated, title, Object.hashAll(tokenSources), tokenType); } 
@override String toString() { return 'ShieldTokenConfiguration(createdAt: $createdAt, credentials: $credentials, description: $description, id: $id, lastUpdated: $lastUpdated, title: $title, tokenSources: $tokenSources, tokenType: $tokenType)'; } 
 }
