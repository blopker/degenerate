// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'calls_turn_key_with_key.dart';@immutable final class CallsTurnKeySingleWithSecret {const CallsTurnKeySingleWithSecret({this.result});

factory CallsTurnKeySingleWithSecret.fromJson(Map<String, dynamic> json) { return CallsTurnKeySingleWithSecret(
  result: json['result'] != null ? CallsTurnKeyWithKey.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final CallsTurnKeyWithKey? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
CallsTurnKeySingleWithSecret copyWith({CallsTurnKeyWithKey Function()? result}) { return CallsTurnKeySingleWithSecret(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CallsTurnKeySingleWithSecret &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'CallsTurnKeySingleWithSecret(result: $result)'; } 
 }
