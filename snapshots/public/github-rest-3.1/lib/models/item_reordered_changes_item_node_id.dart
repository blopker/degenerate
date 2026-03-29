// GENERATED CODE - DO NOT MODIFY BY HAND

final class ItemReorderedChangesItemNodeId {const ItemReorderedChangesItemNodeId({this.from, this.to, });

factory ItemReorderedChangesItemNodeId.fromJson(Map<String, dynamic> json) { return ItemReorderedChangesItemNodeId(
  from: json['from'] as String?,
  to: json['to'] as String?,
); }

final String? from;

final String? to;

Map<String, dynamic> toJson() { return {
  'from': ?from,
  'to': ?to,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
ItemReorderedChangesItemNodeId copyWith({String? Function()? from, String? Function()? to, }) { return ItemReorderedChangesItemNodeId(
  from: from != null ? from() : this.from,
  to: to != null ? to() : this.to,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ItemReorderedChangesItemNodeId &&
          from == other.from &&
          to == other.to; } 
@override int get hashCode { return Object.hash(from, to); } 
@override String toString() { return 'ItemReorderedChangesItemNodeId(from: $from, to: $to)'; } 
 }
