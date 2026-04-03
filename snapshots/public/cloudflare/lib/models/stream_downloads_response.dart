// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'stream_downloads_response_result.dart';@immutable final class StreamDownloadsResponse {const StreamDownloadsResponse({this.result});

factory StreamDownloadsResponse.fromJson(Map<String, dynamic> json) { return StreamDownloadsResponse(
  result: json['result'] != null ? StreamDownloadsResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

/// An object with download type keys. Each key is optional and only present if that download type has been created.
final StreamDownloadsResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
StreamDownloadsResponse copyWith({StreamDownloadsResponseResult Function()? result}) { return StreamDownloadsResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StreamDownloadsResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'StreamDownloadsResponse(result: $result)'; } 
 }
