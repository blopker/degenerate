// GENERATED CODE - DO NOT MODIFY BY HAND

import 'response3.dart';final class VectorizeDeleteVectorsByIdResponse {const VectorizeDeleteVectorsByIdResponse({this.result});

factory VectorizeDeleteVectorsByIdResponse.fromJson(Map<String, dynamic> json) { return VectorizeDeleteVectorsByIdResponse(
  result: json['result'] != null ? Response3.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final Response3? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
VectorizeDeleteVectorsByIdResponse copyWith({Response3 Function()? result}) { return VectorizeDeleteVectorsByIdResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is VectorizeDeleteVectorsByIdResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'VectorizeDeleteVectorsByIdResponse(result: $result)'; } 
 }
