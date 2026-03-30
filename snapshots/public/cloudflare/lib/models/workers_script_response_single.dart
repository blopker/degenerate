// GENERATED CODE - DO NOT MODIFY BY HAND

import 'workers_script_response.dart';final class WorkersScriptResponseSingle {const WorkersScriptResponseSingle({required this.result});

factory WorkersScriptResponseSingle.fromJson(Map<String, dynamic> json) { return WorkersScriptResponseSingle(
  result: WorkersScriptResponse.fromJson(json['result'] as Map<String, dynamic>),
); }

final WorkersScriptResponse result;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result'); } 
WorkersScriptResponseSingle copyWith({WorkersScriptResponse? result}) { return WorkersScriptResponseSingle(
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersScriptResponseSingle &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'WorkersScriptResponseSingle(result: $result)'; } 
 }
