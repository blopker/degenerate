// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'stream_direct_upload_response_result.dart';@immutable final class StreamDirectUploadResponse {const StreamDirectUploadResponse({this.result});

factory StreamDirectUploadResponse.fromJson(Map<String, dynamic> json) { return StreamDirectUploadResponse(
  result: json['result'] != null ? StreamDirectUploadResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final StreamDirectUploadResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
StreamDirectUploadResponse copyWith({StreamDirectUploadResponseResult Function()? result}) { return StreamDirectUploadResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StreamDirectUploadResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'StreamDirectUploadResponse(result: $result)'; } 
 }
