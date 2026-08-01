// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'nsc_slot_info.dart';@immutable final class NscSlotList {const NscSlotList({required this.items, this.next = const Omittable.absent(), });

factory NscSlotList.fromJson(Map<String, dynamic> json) { return NscSlotList(
  items: (json['items'] as List<dynamic>).map((e) => NscSlotInfo.fromJson(e as Map<String, dynamic>)).toList(),
  next: json.containsKey('next') ? Omittable(json['next'] != null ? (json['next'] as num).toInt() : null) : const Omittable.absent(),
); }

final List<NscSlotInfo> items;

final Omittable<int?> next;

Map<String, dynamic> toJson() { return {
  'items': items.map((e) => e.toJson()).toList(),
  if (next.isPresent) 'next': next.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('items'); } 
NscSlotList copyWith({List<NscSlotInfo>? items, Omittable<int?>? next, }) { return NscSlotList(
  items: items ?? this.items,
  next: next ?? this.next,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is NscSlotList &&
          listEquals(items, other.items) &&
          next == other.next; } 
@override int get hashCode { return Object.hash(Object.hashAll(items), next); } 
@override String toString() { return 'NscSlotList(items: $items, next: $next)'; } 
 }
