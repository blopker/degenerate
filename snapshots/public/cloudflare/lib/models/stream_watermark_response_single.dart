// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'stream_watermarks.dart';@immutable final class StreamWatermarkResponseSingle {const StreamWatermarkResponseSingle({this.result});

factory StreamWatermarkResponseSingle.fromJson(Map<String, dynamic> json) { return StreamWatermarkResponseSingle(
  result: json['result'] != null ? StreamWatermarks.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final StreamWatermarks? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
StreamWatermarkResponseSingle copyWith({StreamWatermarks Function()? result}) { return StreamWatermarkResponseSingle(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StreamWatermarkResponseSingle &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'StreamWatermarkResponseSingle(result: $result)'; } 
 }
