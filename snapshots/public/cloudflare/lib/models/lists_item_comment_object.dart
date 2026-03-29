// GENERATED CODE - DO NOT MODIFY BY HAND

import 'lists_item_comment.dart';final class ListsItemCommentObject {const ListsItemCommentObject({this.comment});

factory ListsItemCommentObject.fromJson(Map<String, dynamic> json) { return ListsItemCommentObject(
  comment: json['comment'] != null ? ListsItemComment.fromJson(json['comment'] as String) : null,
); }

/// Defines an informative summary of the list item.
final ListsItemComment? comment;

Map<String, dynamic> toJson() { return {
  if (comment != null) 'comment': comment?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
ListsItemCommentObject copyWith({ListsItemComment Function()? comment}) { return ListsItemCommentObject(
  comment: comment != null ? comment() : this.comment,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ListsItemCommentObject &&
          comment == other.comment; } 
@override int get hashCode { return comment.hashCode; } 
@override String toString() { return 'ListsItemCommentObject(comment: $comment)'; } 
 }
