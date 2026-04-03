// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_interconnect.dart';@immutable final class MagicComponentsSchemasTunnelSingleResponseResult {const MagicComponentsSchemasTunnelSingleResponseResult({this.interconnect});

factory MagicComponentsSchemasTunnelSingleResponseResult.fromJson(Map<String, dynamic> json) { return MagicComponentsSchemasTunnelSingleResponseResult(
  interconnect: json['interconnect'] != null ? MagicInterconnect.fromJson(json['interconnect'] as Map<String, dynamic>) : null,
); }

final MagicInterconnect? interconnect;

Map<String, dynamic> toJson() { return {
  if (interconnect != null) 'interconnect': interconnect?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'interconnect'}.contains(key)); } 
MagicComponentsSchemasTunnelSingleResponseResult copyWith({MagicInterconnect Function()? interconnect}) { return MagicComponentsSchemasTunnelSingleResponseResult(
  interconnect: interconnect != null ? interconnect() : this.interconnect,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicComponentsSchemasTunnelSingleResponseResult &&
          interconnect == other.interconnect; } 
@override int get hashCode { return interconnect.hashCode; } 
@override String toString() { return 'MagicComponentsSchemasTunnelSingleResponseResult(interconnect: $interconnect)'; } 
 }
