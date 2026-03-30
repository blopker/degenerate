// GENERATED CODE - DO NOT MODIFY BY HAND

import 'stream_videos.dart';final class StreamVideoResponseSingle {const StreamVideoResponseSingle({this.result});

factory StreamVideoResponseSingle.fromJson(Map<String, dynamic> json) { return StreamVideoResponseSingle(
  result: json['result'] != null ? StreamVideos.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final StreamVideos? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
StreamVideoResponseSingle copyWith({StreamVideos Function()? result}) { return StreamVideoResponseSingle(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StreamVideoResponseSingle &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'StreamVideoResponseSingle(result: $result)'; } 
 }
