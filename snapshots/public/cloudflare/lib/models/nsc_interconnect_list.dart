// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'nsc_interconnect.dart';@immutable final class NscInterconnectList {const NscInterconnectList({required this.items, this.next, });

factory NscInterconnectList.fromJson(Map<String, dynamic> json) { return NscInterconnectList(
  items: (json['items'] as List<dynamic>).map((e) => NscInterconnect.fromJson(e as Map<String, dynamic>)).toList(),
  next: json['next'] != null ? (json['next'] as num).toInt() : null,
); }

final List<NscInterconnect> items;

final int? next;

Map<String, dynamic> toJson() { return {
  'items': items.map((e) => e.toJson()).toList(),
  'next': ?next,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('items'); } 
NscInterconnectList copyWith({List<NscInterconnect>? items, int? Function()? next, }) { return NscInterconnectList(
  items: items ?? this.items,
  next: next != null ? next() : this.next,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is NscInterconnectList &&
          listEquals(items, other.items) &&
          next == other.next; } 
@override int get hashCode { return Object.hash(Object.hashAll(items), next); } 
@override String toString() { return 'NscInterconnectList(items: $items, next: $next)'; } 
 }
