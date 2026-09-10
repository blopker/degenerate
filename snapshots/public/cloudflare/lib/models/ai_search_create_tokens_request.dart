// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AiSearchCreateTokensRequest {const AiSearchCreateTokensRequest({required this.cfApiId, required this.cfApiKey, required this.name, });

factory AiSearchCreateTokensRequest.fromJson(Map<String, dynamic> json) {return AiSearchCreateTokensRequest(
  cfApiId: json['cf_api_id'] as String,
  cfApiKey: json['cf_api_key'] as String,
  name: json['name'] as String,
);}

final String cfApiId;

final String cfApiKey;

final String name;

Map<String, dynamic> toJson() {return {
  'cf_api_id': cfApiId,
  'cf_api_key': cfApiKey,
  'name': name,
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('cf_api_id') && json['cf_api_id'] is String &&
      json.containsKey('cf_api_key') && json['cf_api_key'] is String &&
      json.containsKey('name') && json['name'] is String;}
AiSearchCreateTokensRequest copyWith({String? cfApiId, String? cfApiKey, String? name, }) {return AiSearchCreateTokensRequest(
  cfApiId: cfApiId ?? this.cfApiId,
  cfApiKey: cfApiKey ?? this.cfApiKey,
  name: name ?? this.name,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is AiSearchCreateTokensRequest &&
          cfApiId == other.cfApiId &&
          cfApiKey == other.cfApiKey &&
          name == other.name;}
@override int get hashCode {return Object.hash(cfApiId, cfApiKey, name);}
@override String toString() {return 'AiSearchCreateTokensRequest(cfApiId: $cfApiId, cfApiKey: $cfApiKey, name: $name)';}
}
