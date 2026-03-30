// GENERATED CODE - DO NOT MODIFY BY HAND

import 'calls_app.dart';final class CallsAppResponseSingle {const CallsAppResponseSingle({this.result});

factory CallsAppResponseSingle.fromJson(Map<String, dynamic> json) { return CallsAppResponseSingle(
  result: json['result'] != null ? CallsApp.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final CallsApp? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
CallsAppResponseSingle copyWith({CallsApp Function()? result}) { return CallsAppResponseSingle(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CallsAppResponseSingle &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'CallsAppResponseSingle(result: $result)'; } 
 }
