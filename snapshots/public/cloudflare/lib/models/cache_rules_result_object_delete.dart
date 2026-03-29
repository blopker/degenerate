// GENERATED CODE - DO NOT MODIFY BY HAND

import 'cache_rules_editable.dart';import 'cache_rules_modified_on.dart';import 'cache_rules_setting_id.dart';final class CacheRulesResultObjectDelete {const CacheRulesResultObjectDelete({required this.editable, required this.id, this.modifiedOn, });

factory CacheRulesResultObjectDelete.fromJson(Map<String, dynamic> json) { return CacheRulesResultObjectDelete(
  editable: CacheRulesEditable.fromJson(json['editable'] as bool),
  id: CacheRulesSettingId.fromJson(json['id'] as String),
  modifiedOn: json['modified_on'] != null ? CacheRulesModifiedOn.fromJson(json['modified_on'] as String) : null,
); }

/// Whether the setting is editable.
final CacheRulesEditable editable;

final CacheRulesSettingId id;

/// The time when the setting was last modified.
final CacheRulesModifiedOn? modifiedOn;

Map<String, dynamic> toJson() { return {
  'editable': editable.toJson(),
  'id': id.toJson(),
  if (modifiedOn != null) 'modified_on': modifiedOn?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('editable') &&
      json.containsKey('id'); } 
CacheRulesResultObjectDelete copyWith({CacheRulesEditable? editable, CacheRulesSettingId? id, CacheRulesModifiedOn Function()? modifiedOn, }) { return CacheRulesResultObjectDelete(
  editable: editable ?? this.editable,
  id: id ?? this.id,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CacheRulesResultObjectDelete &&
          editable == other.editable &&
          id == other.id &&
          modifiedOn == other.modifiedOn; } 
@override int get hashCode { return Object.hash(editable, id, modifiedOn); } 
@override String toString() { return 'CacheRulesResultObjectDelete(editable: $editable, id: $id, modifiedOn: $modifiedOn)'; } 
 }
