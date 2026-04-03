// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ShieldIndex {const ShieldIndex({required this.index});

factory ShieldIndex.fromJson(Map<String, dynamic> json) { return ShieldIndex(
  index: (json['index'] as num).toInt(),
); }

/// Move rule to this position
final int index;

Map<String, dynamic> toJson() { return {
  'index': index,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('index') && json['index'] is num; } 
ShieldIndex copyWith({int? index}) { return ShieldIndex(
  index: index ?? this.index,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ShieldIndex &&
          index == other.index; } 
@override int get hashCode { return index.hashCode; } 
@override String toString() { return 'ShieldIndex(index: $index)'; } 
 }
