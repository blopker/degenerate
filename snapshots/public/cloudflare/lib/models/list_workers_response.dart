// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_worker.dart';final class ListWorkersResponse {const ListWorkersResponse({required this.result});

factory ListWorkersResponse.fromJson(Map<String, dynamic> json) { return ListWorkersResponse(
  result: (json['result'] as List<dynamic>).map((e) => WorkersWorker.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<WorkersWorker> result;

Map<String, dynamic> toJson() { return {
  'result': result.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result'); } 
ListWorkersResponse copyWith({List<WorkersWorker>? result}) { return ListWorkersResponse(
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ListWorkersResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result).hashCode; } 
@override String toString() { return 'ListWorkersResponse(result: $result)'; } 
 }
