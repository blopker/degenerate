// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'response_single56_result.dart';final class ResponseSingle56 {const ResponseSingle56({required this.result});

factory ResponseSingle56.fromJson(Map<String, dynamic> json) { return ResponseSingle56(
  result: OneOf2.parse(json['result'], fromA: (v) => (v as Map<String, dynamic>).map((k, v) => MapEntry(k, v)), fromB: (v) => v as String,),
); }

final ResponseSingle56Result result;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result'); } 
ResponseSingle56 copyWith({ResponseSingle56Result? result}) { return ResponseSingle56(
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseSingle56 &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'ResponseSingle56(result: $result)'; } 
 }
