// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_interconnect.dart';@immutable final class MagicComponentsSchemasTunnelsCollectionResponseResult {const MagicComponentsSchemasTunnelsCollectionResponseResult({this.interconnects});

factory MagicComponentsSchemasTunnelsCollectionResponseResult.fromJson(Map<String, dynamic> json) { return MagicComponentsSchemasTunnelsCollectionResponseResult(
  interconnects: (json['interconnects'] as List<dynamic>?)?.map((e) => MagicInterconnect.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<MagicInterconnect>? interconnects;

Map<String, dynamic> toJson() { return {
  if (interconnects != null) 'interconnects': interconnects?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'interconnects'}.contains(key)); } 
MagicComponentsSchemasTunnelsCollectionResponseResult copyWith({List<MagicInterconnect> Function()? interconnects}) { return MagicComponentsSchemasTunnelsCollectionResponseResult(
  interconnects: interconnects != null ? interconnects() : this.interconnects,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicComponentsSchemasTunnelsCollectionResponseResult &&
          listEquals(interconnects, other.interconnects); } 
@override int get hashCode { return Object.hashAll(interconnects ?? const []).hashCode; } 
@override String toString() { return 'MagicComponentsSchemasTunnelsCollectionResponseResult(interconnects: $interconnects)'; } 
 }
