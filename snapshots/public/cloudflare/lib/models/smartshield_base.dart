// GENERATED CODE - DO NOT MODIFY BY HAND

final class SmartshieldBase {const SmartshieldBase({required this.id, this.modifiedOn, });

factory SmartshieldBase.fromJson(Map<String, dynamic> json) { return SmartshieldBase(
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
SmartshieldBase copyWith({String? id, DateTime? Function()? modifiedOn, }) { return SmartshieldBase(
  id: id ?? this.id,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SmartshieldBase &&
          id == other.id &&
          modifiedOn == other.modifiedOn; } 
@override int get hashCode { return Object.hash(id, modifiedOn); } 
@override String toString() { return 'SmartshieldBase(id: $id, modifiedOn: $modifiedOn)'; } 
 }
