// GENERATED CODE - DO NOT MODIFY BY HAND

import 'vectorize_index_info_response.dart';final class VectorizeIndexInfoResponse2 {const VectorizeIndexInfoResponse2({this.result});

factory VectorizeIndexInfoResponse2.fromJson(Map<String, dynamic> json) { return VectorizeIndexInfoResponse2(
  result: json['result'] != null ? VectorizeIndexInfoResponse.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final VectorizeIndexInfoResponse? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
VectorizeIndexInfoResponse2 copyWith({VectorizeIndexInfoResponse Function()? result}) { return VectorizeIndexInfoResponse2(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is VectorizeIndexInfoResponse2 &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'VectorizeIndexInfoResponse2(result: $result)'; } 
 }
