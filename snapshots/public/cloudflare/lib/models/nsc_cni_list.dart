// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'nsc_cni.dart';@immutable final class NscCniList {const NscCniList({required this.items, this.next = const Omittable.absent(), });

factory NscCniList.fromJson(Map<String, dynamic> json) { return NscCniList(
  items: (json['items'] as List<dynamic>).map((e) => NscCni.fromJson(e as Map<String, dynamic>)).toList(),
  next: json.containsKey('next') ? Omittable(json['next'] != null ? (json['next'] as num).toInt() : null) : const Omittable.absent(),
); }

final List<NscCni> items;

final Omittable<int?> next;

Map<String, dynamic> toJson() { return {
  'items': items.map((e) => e.toJson()).toList(),
  if (next.isPresent) 'next': next.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('items'); } 
NscCniList copyWith({List<NscCni>? items, Omittable<int?>? next, }) { return NscCniList(
  items: items ?? this.items,
  next: next ?? this.next,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is NscCniList &&
          listEquals(items, other.items) &&
          next == other.next; } 
@override int get hashCode { return Object.hash(Object.hashAll(items), next); } 
@override String toString() { return 'NscCniList(items: $items, next: $next)'; } 
 }
