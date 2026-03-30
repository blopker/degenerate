// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_interconnect.dart';final class MagicComponentsSchemasModifiedTunnelsCollectionResponseResult {const MagicComponentsSchemasModifiedTunnelsCollectionResponseResult({this.modified, this.modifiedInterconnects, });

factory MagicComponentsSchemasModifiedTunnelsCollectionResponseResult.fromJson(Map<String, dynamic> json) { return MagicComponentsSchemasModifiedTunnelsCollectionResponseResult(
  modified: json['modified'] as bool?,
  modifiedInterconnects: (json['modified_interconnects'] as List<dynamic>?)?.map((e) => MagicInterconnect.fromJson(e as Map<String, dynamic>)).toList(),
); }

final bool? modified;

final List<MagicInterconnect>? modifiedInterconnects;

Map<String, dynamic> toJson() { return {
  'modified': ?modified,
  if (modifiedInterconnects != null) 'modified_interconnects': modifiedInterconnects?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'modified', 'modified_interconnects'}.contains(key)); } 
MagicComponentsSchemasModifiedTunnelsCollectionResponseResult copyWith({bool Function()? modified, List<MagicInterconnect> Function()? modifiedInterconnects, }) { return MagicComponentsSchemasModifiedTunnelsCollectionResponseResult(
  modified: modified != null ? modified() : this.modified,
  modifiedInterconnects: modifiedInterconnects != null ? modifiedInterconnects() : this.modifiedInterconnects,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicComponentsSchemasModifiedTunnelsCollectionResponseResult &&
          modified == other.modified &&
          listEquals(modifiedInterconnects, other.modifiedInterconnects); } 
@override int get hashCode { return Object.hash(modified, Object.hashAll(modifiedInterconnects ?? const [])); } 
@override String toString() { return 'MagicComponentsSchemasModifiedTunnelsCollectionResponseResult(modified: $modified, modifiedInterconnects: $modifiedInterconnects)'; } 
 }
