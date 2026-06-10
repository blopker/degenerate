// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'lists_item_asn.dart';import 'lists_item_comment.dart';@immutable final class ListsListItemAsnComment {const ListsListItemAsnComment({required this.asn, this.comment, });

factory ListsListItemAsnComment.fromJson(Map<String, dynamic> json) { return ListsListItemAsnComment(
  asn: ListsItemAsn.fromJson(json['asn'] as num),
  comment: json['comment'] != null ? ListsItemComment.fromJson(json['comment'] as String) : null,
); }

/// Defines a non-negative 32 bit integer.
final ListsItemAsn asn;

/// Defines an informative summary of the list item.
final ListsItemComment? comment;

Map<String, dynamic> toJson() { return {
  'asn': asn.toJson(),
  if (comment != null) 'comment': comment?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('asn'); } 
ListsListItemAsnComment copyWith({ListsItemAsn? asn, ListsItemComment Function()? comment, }) { return ListsListItemAsnComment(
  asn: asn ?? this.asn,
  comment: comment != null ? comment() : this.comment,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ListsListItemAsnComment &&
          asn == other.asn &&
          comment == other.comment; } 
@override int get hashCode { return Object.hash(asn, comment); } 
@override String toString() { return 'ListsListItemAsnComment(asn: $asn, comment: $comment)'; } 
 }
