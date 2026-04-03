// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'calls_turn_key_object.dart';@immutable final class CallsTurnKeyResponseSingle {const CallsTurnKeyResponseSingle({this.result});

factory CallsTurnKeyResponseSingle.fromJson(Map<String, dynamic> json) { return CallsTurnKeyResponseSingle(
  result: json['result'] != null ? CallsTurnKeyObject.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final CallsTurnKeyObject? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
CallsTurnKeyResponseSingle copyWith({CallsTurnKeyObject Function()? result}) { return CallsTurnKeyResponseSingle(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CallsTurnKeyResponseSingle &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'CallsTurnKeyResponseSingle(result: $result)'; } 
 }
