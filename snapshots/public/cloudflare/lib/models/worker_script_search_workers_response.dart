// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'worker_script_search_workers_response_result.dart';@immutable final class WorkerScriptSearchWorkersResponse {const WorkerScriptSearchWorkersResponse({required this.result});

factory WorkerScriptSearchWorkersResponse.fromJson(Map<String, dynamic> json) { return WorkerScriptSearchWorkersResponse(
  result: (json['result'] as List<dynamic>).map((e) => WorkerScriptSearchWorkersResponseResult.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<WorkerScriptSearchWorkersResponseResult> result;

Map<String, dynamic> toJson() { return {
  'result': result.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result'); } 
WorkerScriptSearchWorkersResponse copyWith({List<WorkerScriptSearchWorkersResponseResult>? result}) { return WorkerScriptSearchWorkersResponse(
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkerScriptSearchWorkersResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result).hashCode; } 
@override String toString() { return 'WorkerScriptSearchWorkersResponse(result: $result)'; } 
 }
