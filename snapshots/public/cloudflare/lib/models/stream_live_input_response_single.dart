// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'stream_live_input.dart';@immutable final class StreamLiveInputResponseSingle {const StreamLiveInputResponseSingle({this.result});

factory StreamLiveInputResponseSingle.fromJson(Map<String, dynamic> json) { return StreamLiveInputResponseSingle(
  result: json['result'] != null ? StreamLiveInput.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final StreamLiveInput? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
StreamLiveInputResponseSingle copyWith({StreamLiveInput Function()? result}) { return StreamLiveInputResponseSingle(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StreamLiveInputResponseSingle &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'StreamLiveInputResponseSingle(result: $result)'; } 
 }
