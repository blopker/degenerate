// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'shield_credentials.dart';import 'shield_description.dart';import 'shield_header.dart';import 'shield_title.dart';import 'shield_token_type.dart';final class TokenValidationConfigCreateRequest {const TokenValidationConfigCreateRequest({required this.credentials, required this.description, required this.title, required this.tokenSources, required this.tokenType, });

factory TokenValidationConfigCreateRequest.fromJson(Map<String, dynamic> json) { return TokenValidationConfigCreateRequest(
  credentials: ShieldCredentials.fromJson(json['credentials'] as Map<String, dynamic>),
  description: ShieldDescription.fromJson(json['description'] as String),
  title: ShieldTitle.fromJson(json['title'] as String),
  tokenSources: (json['token_sources'] as List<dynamic>).map((e) => ShieldHeader.fromJson(e as String)).toList(),
  tokenType: ShieldTokenType.fromJson(json['token_type'] as String),
); }

final ShieldCredentials credentials;

final ShieldDescription description;

final ShieldTitle title;

final List<ShieldHeader> tokenSources;

final ShieldTokenType tokenType;

Map<String, dynamic> toJson() { return {
  'credentials': credentials.toJson(),
  'description': description.toJson(),
  'title': title.toJson(),
  'token_sources': tokenSources.map((e) => e.toJson()).toList(),
  'token_type': tokenType.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('credentials') &&
      json.containsKey('description') &&
      json.containsKey('title') &&
      json.containsKey('token_sources') &&
      json.containsKey('token_type'); } 
TokenValidationConfigCreateRequest copyWith({ShieldCredentials? credentials, ShieldDescription? description, ShieldTitle? title, List<ShieldHeader>? tokenSources, ShieldTokenType? tokenType, }) { return TokenValidationConfigCreateRequest(
  credentials: credentials ?? this.credentials,
  description: description ?? this.description,
  title: title ?? this.title,
  tokenSources: tokenSources ?? this.tokenSources,
  tokenType: tokenType ?? this.tokenType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TokenValidationConfigCreateRequest &&
          credentials == other.credentials &&
          description == other.description &&
          title == other.title &&
          listEquals(tokenSources, other.tokenSources) &&
          tokenType == other.tokenType; } 
@override int get hashCode { return Object.hash(credentials, description, title, Object.hashAll(tokenSources), tokenType); } 
@override String toString() { return 'TokenValidationConfigCreateRequest(credentials: $credentials, description: $description, title: $title, tokenSources: $tokenSources, tokenType: $tokenType)'; } 
 }
