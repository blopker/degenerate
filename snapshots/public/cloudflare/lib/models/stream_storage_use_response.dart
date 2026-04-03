// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'stream_storage_use_response_result.dart';@immutable final class StreamStorageUseResponse {const StreamStorageUseResponse({this.result});

factory StreamStorageUseResponse.fromJson(Map<String, dynamic> json) { return StreamStorageUseResponse(
  result: json['result'] != null ? StreamStorageUseResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final StreamStorageUseResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
StreamStorageUseResponse copyWith({StreamStorageUseResponseResult Function()? result}) { return StreamStorageUseResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StreamStorageUseResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'StreamStorageUseResponse(result: $result)'; } 
 }
