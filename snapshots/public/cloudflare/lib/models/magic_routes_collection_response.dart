// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_routes_collection_response_result.dart';@immutable final class MagicRoutesCollectionResponse {const MagicRoutesCollectionResponse({this.result});

factory MagicRoutesCollectionResponse.fromJson(Map<String, dynamic> json) { return MagicRoutesCollectionResponse(
  result: json['result'] != null ? MagicRoutesCollectionResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final MagicRoutesCollectionResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MagicRoutesCollectionResponse copyWith({MagicRoutesCollectionResponseResult Function()? result}) { return MagicRoutesCollectionResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicRoutesCollectionResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'MagicRoutesCollectionResponse(result: $result)'; } 
 }
