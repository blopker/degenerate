// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'lists_description.dart';@immutable final class ListsUpdateAListRequest {const ListsUpdateAListRequest({this.description});

factory ListsUpdateAListRequest.fromJson(Map<String, dynamic> json) { return ListsUpdateAListRequest(
  description: json['description'] != null ? ListsDescription.fromJson(json['description'] as String) : null,
); }

/// An informative summary of the list.
final ListsDescription? description;

Map<String, dynamic> toJson() { return {
  if (description != null) 'description': description?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'description'}.contains(key)); } 
ListsUpdateAListRequest copyWith({ListsDescription Function()? description}) { return ListsUpdateAListRequest(
  description: description != null ? description() : this.description,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ListsUpdateAListRequest &&
          description == other.description; } 
@override int get hashCode { return description.hashCode; } 
@override String toString() { return 'ListsUpdateAListRequest(description: $description)'; } 
 }
