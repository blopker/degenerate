// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'datacenters2.dart';import 'query_response.dart';final class ColoResponse {const ColoResponse({this.query, this.result, });

factory ColoResponse.fromJson(Map<String, dynamic> json) { return ColoResponse(
  query: json['query'] != null ? QueryResponse.fromJson(json['query'] as Map<String, dynamic>) : null,
  result: (json['result'] as List<dynamic>?)?.map((e) => Datacenters2.fromJson(e as Map<String, dynamic>)).toList(),
); }

final QueryResponse? query;

final List<Datacenters2>? result;

Map<String, dynamic> toJson() { return {
  if (query != null) 'query': query?.toJson(),
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'query', 'result'}.contains(key)); } 
ColoResponse copyWith({QueryResponse Function()? query, List<Datacenters2> Function()? result, }) { return ColoResponse(
  query: query != null ? query() : this.query,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ColoResponse &&
          query == other.query &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hash(query, Object.hashAll(result ?? const [])); } 
@override String toString() { return 'ColoResponse(query: $query, result: $result)'; } 
 }
