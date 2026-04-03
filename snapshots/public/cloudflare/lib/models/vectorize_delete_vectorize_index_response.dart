// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class VectorizeDeleteVectorizeIndexResponse {const VectorizeDeleteVectorizeIndexResponse({this.result});

factory VectorizeDeleteVectorizeIndexResponse.fromJson(Map<String, dynamic> json) { return VectorizeDeleteVectorizeIndexResponse(
  result: (json['result'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v)),
); }

final Map<String,dynamic>? result;

Map<String, dynamic> toJson() { return {
  'result': ?result,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
VectorizeDeleteVectorizeIndexResponse copyWith({Map<String, dynamic>? Function()? result}) { return VectorizeDeleteVectorizeIndexResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is VectorizeDeleteVectorizeIndexResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'VectorizeDeleteVectorizeIndexResponse(result: $result)'; } 
 }
