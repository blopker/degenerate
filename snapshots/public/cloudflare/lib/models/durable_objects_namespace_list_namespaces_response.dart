// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_namespace.dart';final class DurableObjectsNamespaceListNamespacesResponse {const DurableObjectsNamespaceListNamespacesResponse({this.result});

factory DurableObjectsNamespaceListNamespacesResponse.fromJson(Map<String, dynamic> json) { return DurableObjectsNamespaceListNamespacesResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => WorkersNamespace.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<WorkersNamespace>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DurableObjectsNamespaceListNamespacesResponse copyWith({List<WorkersNamespace> Function()? result}) { return DurableObjectsNamespaceListNamespacesResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DurableObjectsNamespaceListNamespacesResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'DurableObjectsNamespaceListNamespacesResponse(result: $result)'; } 
 }
