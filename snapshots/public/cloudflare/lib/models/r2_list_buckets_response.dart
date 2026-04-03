// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'r2_list_buckets_response_result.dart';@immutable final class R2ListBucketsResponse {const R2ListBucketsResponse({this.result});

factory R2ListBucketsResponse.fromJson(Map<String, dynamic> json) { return R2ListBucketsResponse(
  result: json['result'] != null ? R2ListBucketsResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final R2ListBucketsResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
R2ListBucketsResponse copyWith({R2ListBucketsResponseResult Function()? result}) { return R2ListBucketsResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is R2ListBucketsResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'R2ListBucketsResponse(result: $result)'; } 
 }
