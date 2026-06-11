// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'lists_item_comment.dart';import 'lists_item_ip.dart';@immutable final class ListsListItemIpComment {const ListsListItemIpComment({required this.ip, this.comment, });

factory ListsListItemIpComment.fromJson(Map<String, dynamic> json) { return ListsListItemIpComment(
  ip: ListsItemIp.fromJson(json['ip'] as String),
  comment: json['comment'] != null ? ListsItemComment.fromJson(json['comment'] as String) : null,
); }

/// An IPv4 address, an IPv4 CIDR, an IPv6 address, or an IPv6 CIDR.
final ListsItemIp ip;

/// Defines an informative summary of the list item.
final ListsItemComment? comment;

Map<String, dynamic> toJson() { return {
  'ip': ip.toJson(),
  if (comment != null) 'comment': comment?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('ip'); } 
ListsListItemIpComment copyWith({ListsItemIp? ip, ListsItemComment Function()? comment, }) { return ListsListItemIpComment(
  ip: ip ?? this.ip,
  comment: comment != null ? comment() : this.comment,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ListsListItemIpComment &&
          ip == other.ip &&
          comment == other.comment; } 
@override int get hashCode { return Object.hash(ip, comment); } 
@override String toString() { return 'ListsListItemIpComment(ip: $ip, comment: $comment)'; } 
 }
