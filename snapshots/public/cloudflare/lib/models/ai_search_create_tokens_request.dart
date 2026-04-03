// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AiSearchCreateTokensRequest {const AiSearchCreateTokensRequest({required this.cfApiId, required this.cfApiKey, required this.name, this.legacy = true, });

factory AiSearchCreateTokensRequest.fromJson(Map<String, dynamic> json) { return AiSearchCreateTokensRequest(
  cfApiId: json['cf_api_id'] as String,
  cfApiKey: json['cf_api_key'] as String,
  legacy: json.containsKey('legacy') ? json['legacy'] as bool : true,
  name: json['name'] as String,
); }

final String cfApiId;

final String cfApiKey;

final bool legacy;

final String name;

Map<String, dynamic> toJson() { return {
  'cf_api_id': cfApiId,
  'cf_api_key': cfApiKey,
  'legacy': legacy,
  'name': name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('cf_api_id') && json['cf_api_id'] is String &&
      json.containsKey('cf_api_key') && json['cf_api_key'] is String &&
      json.containsKey('name') && json['name'] is String; } 
AiSearchCreateTokensRequest copyWith({String? cfApiId, String? cfApiKey, bool Function()? legacy, String? name, }) { return AiSearchCreateTokensRequest(
  cfApiId: cfApiId ?? this.cfApiId,
  cfApiKey: cfApiKey ?? this.cfApiKey,
  legacy: legacy != null ? legacy() : this.legacy,
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchCreateTokensRequest &&
          cfApiId == other.cfApiId &&
          cfApiKey == other.cfApiKey &&
          legacy == other.legacy &&
          name == other.name; } 
@override int get hashCode { return Object.hash(cfApiId, cfApiKey, legacy, name); } 
@override String toString() { return 'AiSearchCreateTokensRequest(cfApiId: $cfApiId, cfApiKey: $cfApiKey, legacy: $legacy, name: $name)'; } 
 }
