// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_version.dart';@immutable final class ListWorkerVersionsResponse {const ListWorkerVersionsResponse({required this.result});

factory ListWorkerVersionsResponse.fromJson(Map<String, dynamic> json) { return ListWorkerVersionsResponse(
  result: (json['result'] as List<dynamic>).map((e) => WorkersVersion.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<WorkersVersion> result;

Map<String, dynamic> toJson() { return {
  'result': result.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result'); } 
ListWorkerVersionsResponse copyWith({List<WorkersVersion>? result}) { return ListWorkerVersionsResponse(
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ListWorkerVersionsResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result).hashCode; } 
@override String toString() { return 'ListWorkerVersionsResponse(result: $result)'; } 
 }
