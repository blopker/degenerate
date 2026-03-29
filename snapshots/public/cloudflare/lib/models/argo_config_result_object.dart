// GENERATED CODE - DO NOT MODIFY BY HAND

import 'argo_config_setting_value.dart';/// Specifies if the setting is editable.
extension type const ArgoConfigEditable(bool value) {
factory ArgoConfigEditable.fromJson(bool json) => ArgoConfigEditable(json);

bool toJson() => value;

}
/// Specifies the time when the setting was last modified.
extension type ArgoConfigModifiedOn(DateTime value) {
factory ArgoConfigModifiedOn.fromJson(String json) => ArgoConfigModifiedOn(DateTime.parse(json));

String toJson() => value.toIso8601String();

}
/// Specifies the identifier of the Argo Smart Routing setting.
extension type const ArgoConfigSettingId(String value) {
factory ArgoConfigSettingId.fromJson(String json) => ArgoConfigSettingId(json);

String toJson() => value;

}
final class ArgoConfigResultObject {const ArgoConfigResultObject({required this.editable, required this.id, this.modifiedOn, required this.value, });

factory ArgoConfigResultObject.fromJson(Map<String, dynamic> json) { return ArgoConfigResultObject(
  editable: ArgoConfigEditable.fromJson(json['editable'] as bool),
  id: ArgoConfigSettingId.fromJson(json['id'] as String),
  modifiedOn: json['modified_on'] != null ? ArgoConfigModifiedOn.fromJson(json['modified_on'] as String) : null,
  value: ArgoConfigSettingValue.fromJson(json['value'] as String),
); }

/// Specifies if the setting is editable.
final ArgoConfigEditable editable;

final ArgoConfigSettingId id;

/// Specifies the time when the setting was last modified.
final ArgoConfigModifiedOn? modifiedOn;

final ArgoConfigSettingValue value;

Map<String, dynamic> toJson() { return {
  'editable': editable.toJson(),
  'id': id.toJson(),
  if (modifiedOn != null) 'modified_on': modifiedOn?.toJson(),
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('editable') &&
      json.containsKey('id') &&
      json.containsKey('value'); } 
ArgoConfigResultObject copyWith({ArgoConfigEditable? editable, ArgoConfigSettingId? id, ArgoConfigModifiedOn Function()? modifiedOn, ArgoConfigSettingValue? value, }) { return ArgoConfigResultObject(
  editable: editable ?? this.editable,
  id: id ?? this.id,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ArgoConfigResultObject &&
          editable == other.editable &&
          id == other.id &&
          modifiedOn == other.modifiedOn &&
          value == other.value; } 
@override int get hashCode { return Object.hash(editable, id, modifiedOn, value); } 
@override String toString() { return 'ArgoConfigResultObject(editable: $editable, id: $id, modifiedOn: $modifiedOn, value: $value)'; } 
 }
