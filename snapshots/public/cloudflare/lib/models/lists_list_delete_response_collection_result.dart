// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'lists_list_id.dart';@immutable final class ListsListDeleteResponseCollectionResult {const ListsListDeleteResponseCollectionResult({required this.id});

factory ListsListDeleteResponseCollectionResult.fromJson(Map<String, dynamic> json) { return ListsListDeleteResponseCollectionResult(
  id: ListsListId.fromJson(json['id'] as String),
); }

final ListsListId id;

Map<String, dynamic> toJson() { return {
  'id': id.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id'); } 
ListsListDeleteResponseCollectionResult copyWith({ListsListId? id}) { return ListsListDeleteResponseCollectionResult(
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ListsListDeleteResponseCollectionResult &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'ListsListDeleteResponseCollectionResult(id: $id)'; } 
 }
