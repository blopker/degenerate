// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ItemEditedChangesVariant2Body {const ItemEditedChangesVariant2Body({this.from = const Omittable.absent(), this.to = const Omittable.absent(), });

factory ItemEditedChangesVariant2Body.fromJson(Map<String, dynamic> json) { return ItemEditedChangesVariant2Body(
  from: json.containsKey('from') ? Omittable(json['from'] as String?) : const Omittable.absent(),
  to: json.containsKey('to') ? Omittable(json['to'] as String?) : const Omittable.absent(),
); }

final Omittable<String?> from;

final Omittable<String?> to;

Map<String, dynamic> toJson() { return {
  if (from.isPresent) 'from': from.value,
  if (to.isPresent) 'to': to.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'from', 'to'}.contains(key)); } 
ItemEditedChangesVariant2Body copyWith({Omittable<String?>? from, Omittable<String?>? to, }) { return ItemEditedChangesVariant2Body(
  from: from ?? this.from,
  to: to ?? this.to,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ItemEditedChangesVariant2Body &&
          from == other.from &&
          to == other.to; } 
@override int get hashCode { return Object.hash(from, to); } 
@override String toString() { return 'ItemEditedChangesVariant2Body(from: $from, to: $to)'; } 
 }
