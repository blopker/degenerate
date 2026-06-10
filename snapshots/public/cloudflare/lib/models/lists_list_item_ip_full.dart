// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'lists_created_on.dart';import 'lists_item_comment.dart';import 'lists_item_id.dart';import 'lists_item_ip.dart';import 'lists_modified_on.dart';@immutable final class ListsListItemIpFull {const ListsListItemIpFull({required this.ip, required this.createdOn, required this.id, required this.modifiedOn, this.comment, });

factory ListsListItemIpFull.fromJson(Map<String, dynamic> json) { return ListsListItemIpFull(
  ip: ListsItemIp.fromJson(json['ip'] as String),
  comment: json['comment'] != null ? ListsItemComment.fromJson(json['comment'] as String) : null,
  createdOn: ListsCreatedOn.fromJson(json['created_on'] as String),
  id: ListsItemId.fromJson(json['id'] as String),
  modifiedOn: ListsModifiedOn.fromJson(json['modified_on'] as String),
); }

/// An IPv4 address, an IPv4 CIDR, an IPv6 address, or an IPv6 CIDR.
final ListsItemIp ip;

/// Defines an informative summary of the list item.
final ListsItemComment? comment;

/// The RFC 3339 timestamp of when the list was created.
final ListsCreatedOn createdOn;

/// Defines the unique ID of the item in the List.
final ListsItemId id;

final ListsModifiedOn modifiedOn;

Map<String, dynamic> toJson() { return {
  'ip': ip.toJson(),
  if (comment != null) 'comment': comment?.toJson(),
  'created_on': createdOn.toJson(),
  'id': id.toJson(),
  'modified_on': modifiedOn.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('ip') &&
      json.containsKey('created_on') &&
      json.containsKey('id') &&
      json.containsKey('modified_on'); } 
ListsListItemIpFull copyWith({ListsItemIp? ip, ListsItemComment Function()? comment, ListsCreatedOn? createdOn, ListsItemId? id, ListsModifiedOn? modifiedOn, }) { return ListsListItemIpFull(
  ip: ip ?? this.ip,
  comment: comment != null ? comment() : this.comment,
  createdOn: createdOn ?? this.createdOn,
  id: id ?? this.id,
  modifiedOn: modifiedOn ?? this.modifiedOn,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ListsListItemIpFull &&
          ip == other.ip &&
          comment == other.comment &&
          createdOn == other.createdOn &&
          id == other.id &&
          modifiedOn == other.modifiedOn; } 
@override int get hashCode { return Object.hash(ip, comment, createdOn, id, modifiedOn); } 
@override String toString() { return 'ListsListItemIpFull(ip: $ip, comment: $comment, createdOn: $createdOn, id: $id, modifiedOn: $modifiedOn)'; } 
 }
