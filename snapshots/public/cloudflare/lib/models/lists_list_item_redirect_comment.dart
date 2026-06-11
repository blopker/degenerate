// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'lists_item_comment.dart';import 'lists_item_redirect.dart';@immutable final class ListsListItemRedirectComment {const ListsListItemRedirectComment({required this.redirect, this.comment, });

factory ListsListItemRedirectComment.fromJson(Map<String, dynamic> json) { return ListsListItemRedirectComment(
  redirect: ListsItemRedirect.fromJson(json['redirect'] as Map<String, dynamic>),
  comment: json['comment'] != null ? ListsItemComment.fromJson(json['comment'] as String) : null,
); }

final ListsItemRedirect redirect;

/// Defines an informative summary of the list item.
final ListsItemComment? comment;

Map<String, dynamic> toJson() { return {
  'redirect': redirect.toJson(),
  if (comment != null) 'comment': comment?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('redirect'); } 
ListsListItemRedirectComment copyWith({ListsItemRedirect? redirect, ListsItemComment Function()? comment, }) { return ListsListItemRedirectComment(
  redirect: redirect ?? this.redirect,
  comment: comment != null ? comment() : this.comment,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ListsListItemRedirectComment &&
          redirect == other.redirect &&
          comment == other.comment; } 
@override int get hashCode { return Object.hash(redirect, comment); } 
@override String toString() { return 'ListsListItemRedirectComment(redirect: $redirect, comment: $comment)'; } 
 }
