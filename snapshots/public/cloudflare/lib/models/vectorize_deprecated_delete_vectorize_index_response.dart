// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class VectorizeDeprecatedDeleteVectorizeIndexResponse {const VectorizeDeprecatedDeleteVectorizeIndexResponse({this.result});

factory VectorizeDeprecatedDeleteVectorizeIndexResponse.fromJson(Map<String, dynamic> json) { return VectorizeDeprecatedDeleteVectorizeIndexResponse(
  result: json['result'] as Map<String, dynamic>?,
); }

final Map<String,dynamic>? result;

Map<String, dynamic> toJson() { return {
  'result': ?result,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
VectorizeDeprecatedDeleteVectorizeIndexResponse copyWith({Map<String, dynamic>? Function()? result}) { return VectorizeDeprecatedDeleteVectorizeIndexResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is VectorizeDeprecatedDeleteVectorizeIndexResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'VectorizeDeprecatedDeleteVectorizeIndexResponse(result: $result)'; } 
 }
