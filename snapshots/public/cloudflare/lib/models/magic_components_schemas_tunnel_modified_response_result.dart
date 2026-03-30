// GENERATED CODE - DO NOT MODIFY BY HAND

import 'magic_interconnect.dart';final class MagicComponentsSchemasTunnelModifiedResponseResult {const MagicComponentsSchemasTunnelModifiedResponseResult({this.modified, this.modifiedInterconnect, });

factory MagicComponentsSchemasTunnelModifiedResponseResult.fromJson(Map<String, dynamic> json) { return MagicComponentsSchemasTunnelModifiedResponseResult(
  modified: json['modified'] as bool?,
  modifiedInterconnect: json['modified_interconnect'] != null ? MagicInterconnect.fromJson(json['modified_interconnect'] as Map<String, dynamic>) : null,
); }

final bool? modified;

final MagicInterconnect? modifiedInterconnect;

Map<String, dynamic> toJson() { return {
  'modified': ?modified,
  if (modifiedInterconnect != null) 'modified_interconnect': modifiedInterconnect?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'modified', 'modified_interconnect'}.contains(key)); } 
MagicComponentsSchemasTunnelModifiedResponseResult copyWith({bool Function()? modified, MagicInterconnect Function()? modifiedInterconnect, }) { return MagicComponentsSchemasTunnelModifiedResponseResult(
  modified: modified != null ? modified() : this.modified,
  modifiedInterconnect: modifiedInterconnect != null ? modifiedInterconnect() : this.modifiedInterconnect,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicComponentsSchemasTunnelModifiedResponseResult &&
          modified == other.modified &&
          modifiedInterconnect == other.modifiedInterconnect; } 
@override int get hashCode { return Object.hash(modified, modifiedInterconnect); } 
@override String toString() { return 'MagicComponentsSchemasTunnelModifiedResponseResult(modified: $modified, modifiedInterconnect: $modifiedInterconnect)'; } 
 }
