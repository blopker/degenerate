// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'nsc_cni.dart';@immutable final class NscCniList {const NscCniList({required this.items, this.next, });

factory NscCniList.fromJson(Map<String, dynamic> json) { return NscCniList(
  items: (json['items'] as List<dynamic>).map((e) => NscCni.fromJson(e as Map<String, dynamic>)).toList(),
  next: json['next'] != null ? (json['next'] as num).toInt() : null,
); }

final List<NscCni> items;

final int? next;

Map<String, dynamic> toJson() { return {
  'items': items.map((e) => e.toJson()).toList(),
  'next': ?next,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('items'); } 
NscCniList copyWith({List<NscCni>? items, int? Function()? next, }) { return NscCniList(
  items: items ?? this.items,
  next: next != null ? next() : this.next,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is NscCniList &&
          listEquals(items, other.items) &&
          next == other.next; } 
@override int get hashCode { return Object.hash(Object.hashAll(items), next); } 
@override String toString() { return 'NscCniList(items: $items, next: $next)'; } 
 }
