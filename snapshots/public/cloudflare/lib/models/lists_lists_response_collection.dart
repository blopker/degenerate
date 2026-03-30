// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'lists_list.dart';final class ListsListsResponseCollection {const ListsListsResponseCollection({this.result});

factory ListsListsResponseCollection.fromJson(Map<String, dynamic> json) { return ListsListsResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => ListsList.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<ListsList>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
ListsListsResponseCollection copyWith({List<ListsList> Function()? result}) { return ListsListsResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ListsListsResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'ListsListsResponseCollection(result: $result)'; } 
 }
