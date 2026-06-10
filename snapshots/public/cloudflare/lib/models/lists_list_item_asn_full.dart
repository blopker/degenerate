// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'lists_created_on.dart';import 'lists_item_asn.dart';import 'lists_item_comment.dart';import 'lists_item_id.dart';import 'lists_modified_on.dart';@immutable final class ListsListItemAsnFull {const ListsListItemAsnFull({required this.asn, required this.createdOn, required this.id, required this.modifiedOn, this.comment, });

factory ListsListItemAsnFull.fromJson(Map<String, dynamic> json) { return ListsListItemAsnFull(
  asn: ListsItemAsn.fromJson(json['asn'] as num),
  comment: json['comment'] != null ? ListsItemComment.fromJson(json['comment'] as String) : null,
  createdOn: ListsCreatedOn.fromJson(json['created_on'] as String),
  id: ListsItemId.fromJson(json['id'] as String),
  modifiedOn: ListsModifiedOn.fromJson(json['modified_on'] as String),
); }

/// Defines a non-negative 32 bit integer.
final ListsItemAsn asn;

/// Defines an informative summary of the list item.
final ListsItemComment? comment;

/// The RFC 3339 timestamp of when the list was created.
final ListsCreatedOn createdOn;

/// Defines the unique ID of the item in the List.
final ListsItemId id;

final ListsModifiedOn modifiedOn;

Map<String, dynamic> toJson() { return {
  'asn': asn.toJson(),
  if (comment != null) 'comment': comment?.toJson(),
  'created_on': createdOn.toJson(),
  'id': id.toJson(),
  'modified_on': modifiedOn.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('asn') &&
      json.containsKey('created_on') &&
      json.containsKey('id') &&
      json.containsKey('modified_on'); } 
ListsListItemAsnFull copyWith({ListsItemAsn? asn, ListsItemComment Function()? comment, ListsCreatedOn? createdOn, ListsItemId? id, ListsModifiedOn? modifiedOn, }) { return ListsListItemAsnFull(
  asn: asn ?? this.asn,
  comment: comment != null ? comment() : this.comment,
  createdOn: createdOn ?? this.createdOn,
  id: id ?? this.id,
  modifiedOn: modifiedOn ?? this.modifiedOn,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ListsListItemAsnFull &&
          asn == other.asn &&
          comment == other.comment &&
          createdOn == other.createdOn &&
          id == other.id &&
          modifiedOn == other.modifiedOn; } 
@override int get hashCode { return Object.hash(asn, comment, createdOn, id, modifiedOn); } 
@override String toString() { return 'ListsListItemAsnFull(asn: $asn, comment: $comment, createdOn: $createdOn, id: $id, modifiedOn: $modifiedOn)'; } 
 }
