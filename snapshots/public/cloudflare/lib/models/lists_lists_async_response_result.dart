// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'lists_operation_id.dart';@immutable final class ListsListsAsyncResponseResult {const ListsListsAsyncResponseResult({required this.operationId});

factory ListsListsAsyncResponseResult.fromJson(Map<String, dynamic> json) { return ListsListsAsyncResponseResult(
  operationId: ListsOperationId.fromJson(json['operation_id'] as String),
); }

final ListsOperationId operationId;

Map<String, dynamic> toJson() { return {
  'operation_id': operationId.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('operation_id'); } 
ListsListsAsyncResponseResult copyWith({ListsOperationId? operationId}) { return ListsListsAsyncResponseResult(
  operationId: operationId ?? this.operationId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ListsListsAsyncResponseResult &&
          operationId == other.operationId; } 
@override int get hashCode { return operationId.hashCode; } 
@override String toString() { return 'ListsListsAsyncResponseResult(operationId: $operationId)'; } 
 }
