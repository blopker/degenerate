// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'lists_created_on.dart';import 'lists_item_comment.dart';import 'lists_item_hostname.dart';import 'lists_item_id.dart';import 'lists_modified_on.dart';@immutable final class ListsListItemHostnameFull {const ListsListItemHostnameFull({required this.hostname, required this.createdOn, required this.id, required this.modifiedOn, this.comment, });

factory ListsListItemHostnameFull.fromJson(Map<String, dynamic> json) { return ListsListItemHostnameFull(
  hostname: ListsItemHostname.fromJson(json['hostname'] as Map<String, dynamic>),
  comment: json['comment'] != null ? ListsItemComment.fromJson(json['comment'] as String) : null,
  createdOn: ListsCreatedOn.fromJson(json['created_on'] as String),
  id: ListsItemId.fromJson(json['id'] as String),
  modifiedOn: ListsModifiedOn.fromJson(json['modified_on'] as String),
); }

final ListsItemHostname hostname;

/// Defines an informative summary of the list item.
final ListsItemComment? comment;

/// The RFC 3339 timestamp of when the list was created.
final ListsCreatedOn createdOn;

/// Defines the unique ID of the item in the List.
final ListsItemId id;

final ListsModifiedOn modifiedOn;

Map<String, dynamic> toJson() { return {
  'hostname': hostname.toJson(),
  if (comment != null) 'comment': comment?.toJson(),
  'created_on': createdOn.toJson(),
  'id': id.toJson(),
  'modified_on': modifiedOn.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('hostname') &&
      json.containsKey('created_on') &&
      json.containsKey('id') &&
      json.containsKey('modified_on'); } 
ListsListItemHostnameFull copyWith({ListsItemHostname? hostname, ListsItemComment Function()? comment, ListsCreatedOn? createdOn, ListsItemId? id, ListsModifiedOn? modifiedOn, }) { return ListsListItemHostnameFull(
  hostname: hostname ?? this.hostname,
  comment: comment != null ? comment() : this.comment,
  createdOn: createdOn ?? this.createdOn,
  id: id ?? this.id,
  modifiedOn: modifiedOn ?? this.modifiedOn,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ListsListItemHostnameFull &&
          hostname == other.hostname &&
          comment == other.comment &&
          createdOn == other.createdOn &&
          id == other.id &&
          modifiedOn == other.modifiedOn; } 
@override int get hashCode { return Object.hash(hostname, comment, createdOn, id, modifiedOn); } 
@override String toString() { return 'ListsListItemHostnameFull(hostname: $hostname, comment: $comment, createdOn: $createdOn, id: $id, modifiedOn: $modifiedOn)'; } 
 }
