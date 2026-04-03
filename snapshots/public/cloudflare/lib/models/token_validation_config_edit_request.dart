// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'shield_description.dart';import 'shield_header.dart';import 'shield_title.dart';@immutable final class TokenValidationConfigEditRequest {const TokenValidationConfigEditRequest({this.description, this.title, this.tokenSources, });

factory TokenValidationConfigEditRequest.fromJson(Map<String, dynamic> json) { return TokenValidationConfigEditRequest(
  description: json['description'] != null ? ShieldDescription.fromJson(json['description'] as String) : null,
  title: json['title'] != null ? ShieldTitle.fromJson(json['title'] as String) : null,
  tokenSources: (json['token_sources'] as List<dynamic>?)?.map((e) => ShieldHeader.fromJson(e as String)).toList(),
); }

final ShieldDescription? description;

final ShieldTitle? title;

final List<ShieldHeader>? tokenSources;

Map<String, dynamic> toJson() { return {
  if (description != null) 'description': description?.toJson(),
  if (title != null) 'title': title?.toJson(),
  if (tokenSources != null) 'token_sources': tokenSources?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'description', 'title', 'token_sources'}.contains(key)); } 
TokenValidationConfigEditRequest copyWith({ShieldDescription Function()? description, ShieldTitle Function()? title, List<ShieldHeader> Function()? tokenSources, }) { return TokenValidationConfigEditRequest(
  description: description != null ? description() : this.description,
  title: title != null ? title() : this.title,
  tokenSources: tokenSources != null ? tokenSources() : this.tokenSources,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TokenValidationConfigEditRequest &&
          description == other.description &&
          title == other.title &&
          listEquals(tokenSources, other.tokenSources); } 
@override int get hashCode { return Object.hash(description, title, Object.hashAll(tokenSources ?? const [])); } 
@override String toString() { return 'TokenValidationConfigEditRequest(description: $description, title: $title, tokenSources: $tokenSources)'; } 
 }
