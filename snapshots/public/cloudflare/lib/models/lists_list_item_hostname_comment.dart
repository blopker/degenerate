// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'lists_item_comment.dart';import 'lists_item_hostname.dart';@immutable final class ListsListItemHostnameComment {const ListsListItemHostnameComment({required this.hostname, this.comment, });

factory ListsListItemHostnameComment.fromJson(Map<String, dynamic> json) { return ListsListItemHostnameComment(
  hostname: ListsItemHostname.fromJson(json['hostname'] as Map<String, dynamic>),
  comment: json['comment'] != null ? ListsItemComment.fromJson(json['comment'] as String) : null,
); }

final ListsItemHostname hostname;

/// Defines an informative summary of the list item.
final ListsItemComment? comment;

Map<String, dynamic> toJson() { return {
  'hostname': hostname.toJson(),
  if (comment != null) 'comment': comment?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('hostname'); } 
ListsListItemHostnameComment copyWith({ListsItemHostname? hostname, ListsItemComment Function()? comment, }) { return ListsListItemHostnameComment(
  hostname: hostname ?? this.hostname,
  comment: comment != null ? comment() : this.comment,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ListsListItemHostnameComment &&
          hostname == other.hostname &&
          comment == other.comment; } 
@override int get hashCode { return Object.hash(hostname, comment); } 
@override String toString() { return 'ListsListItemHostnameComment(hostname: $hostname, comment: $comment)'; } 
 }
