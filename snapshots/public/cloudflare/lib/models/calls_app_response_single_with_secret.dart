// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'calls_app_with_secret.dart';@immutable final class CallsAppResponseSingleWithSecret {const CallsAppResponseSingleWithSecret({this.result});

factory CallsAppResponseSingleWithSecret.fromJson(Map<String, dynamic> json) { return CallsAppResponseSingleWithSecret(
  result: json['result'] != null ? CallsAppWithSecret.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final CallsAppWithSecret? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
CallsAppResponseSingleWithSecret copyWith({CallsAppWithSecret Function()? result}) { return CallsAppResponseSingleWithSecret(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CallsAppResponseSingleWithSecret &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'CallsAppResponseSingleWithSecret(result: $result)'; } 
 }
