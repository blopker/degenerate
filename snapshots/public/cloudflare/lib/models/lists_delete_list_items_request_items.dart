// GENERATED CODE - DO NOT MODIFY BY HAND

final class ListsDeleteListItemsRequestItems {const ListsDeleteListItemsRequestItems({required this.id});

factory ListsDeleteListItemsRequestItems.fromJson(Map<String, dynamic> json) { return ListsDeleteListItemsRequestItems(
  id: json['id'] as String,
); }

/// Defines the unique ID of the item in the List.
final String id;

Map<String, dynamic> toJson() { return {
  'id': id,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String; } 
ListsDeleteListItemsRequestItems copyWith({String? id}) { return ListsDeleteListItemsRequestItems(
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ListsDeleteListItemsRequestItems &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'ListsDeleteListItemsRequestItems(id: $id)'; } 
 }
