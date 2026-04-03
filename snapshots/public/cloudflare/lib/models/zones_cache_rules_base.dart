// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ZonesCacheRulesBase {const ZonesCacheRulesBase({required this.id, this.modifiedOn, });

factory ZonesCacheRulesBase.fromJson(Map<String, dynamic> json) { return ZonesCacheRulesBase(
  id: json['id'] as String,
  modifiedOn: json['modified_on'] != null ? DateTime.parse(json['modified_on'] as String) : null,
); }

/// Identifier of the zone setting.
final String id;

/// Last time this setting was modified.
final DateTime? modifiedOn;

Map<String, dynamic> toJson() { return {
  'id': id,
  if (modifiedOn != null) 'modified_on': modifiedOn?.toIso8601String(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String; } 
ZonesCacheRulesBase copyWith({String? id, DateTime? Function()? modifiedOn, }) { return ZonesCacheRulesBase(
  id: id ?? this.id,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesCacheRulesBase &&
          id == other.id &&
          modifiedOn == other.modifiedOn; } 
@override int get hashCode { return Object.hash(id, modifiedOn); } 
@override String toString() { return 'ZonesCacheRulesBase(id: $id, modifiedOn: $modifiedOn)'; } 
 }
