// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'stream_output.dart';@immutable final class StreamOutputResponseSingle {const StreamOutputResponseSingle({this.result});

factory StreamOutputResponseSingle.fromJson(Map<String, dynamic> json) { return StreamOutputResponseSingle(
  result: json['result'] != null ? StreamOutput.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final StreamOutput? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
StreamOutputResponseSingle copyWith({StreamOutput Function()? result}) { return StreamOutputResponseSingle(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StreamOutputResponseSingle &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'StreamOutputResponseSingle(result: $result)'; } 
 }
