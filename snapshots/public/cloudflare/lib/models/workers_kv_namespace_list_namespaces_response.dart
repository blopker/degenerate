// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_kv_namespace.dart';final class WorkersKvNamespaceListNamespacesResponse {const WorkersKvNamespaceListNamespacesResponse({this.result});

factory WorkersKvNamespaceListNamespacesResponse.fromJson(Map<String, dynamic> json) { return WorkersKvNamespaceListNamespacesResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => WorkersKvNamespace.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<WorkersKvNamespace>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
WorkersKvNamespaceListNamespacesResponse copyWith({List<WorkersKvNamespace> Function()? result}) { return WorkersKvNamespaceListNamespacesResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersKvNamespaceListNamespacesResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'WorkersKvNamespaceListNamespacesResponse(result: $result)'; } 
 }
