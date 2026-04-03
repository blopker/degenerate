// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'lists_lists_async_response_result.dart';@immutable final class ListsListsAsyncResponse {const ListsListsAsyncResponse({this.result});

factory ListsListsAsyncResponse.fromJson(Map<String, dynamic> json) { return ListsListsAsyncResponse(
  result: json['result'] != null ? ListsListsAsyncResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final ListsListsAsyncResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
ListsListsAsyncResponse copyWith({ListsListsAsyncResponseResult Function()? result}) { return ListsListsAsyncResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ListsListsAsyncResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'ListsListsAsyncResponse(result: $result)'; } 
 }
