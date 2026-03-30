// GENERATED CODE - DO NOT MODIFY BY HAND

import 'stream_downloads.dart';final class StreamDownloadsResponseSingle {const StreamDownloadsResponseSingle({this.result});

factory StreamDownloadsResponseSingle.fromJson(Map<String, dynamic> json) { return StreamDownloadsResponseSingle(
  result: json['result'] != null ? StreamDownloads.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final StreamDownloads? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
StreamDownloadsResponseSingle copyWith({StreamDownloads Function()? result}) { return StreamDownloadsResponseSingle(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StreamDownloadsResponseSingle &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'StreamDownloadsResponseSingle(result: $result)'; } 
 }
