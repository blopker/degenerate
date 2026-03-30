// GENERATED CODE - DO NOT MODIFY BY HAND

import 'stream_captions.dart';final class StreamLanguageResponseSingle {const StreamLanguageResponseSingle({this.result});

factory StreamLanguageResponseSingle.fromJson(Map<String, dynamic> json) { return StreamLanguageResponseSingle(
  result: json['result'] != null ? StreamCaptions.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final StreamCaptions? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
StreamLanguageResponseSingle copyWith({StreamCaptions Function()? result}) { return StreamLanguageResponseSingle(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StreamLanguageResponseSingle &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'StreamLanguageResponseSingle(result: $result)'; } 
 }
