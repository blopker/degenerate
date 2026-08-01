// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'patch_presets_preset_id_response_data_config.dart';import 'patch_presets_preset_id_response_data_permissions.dart';import 'patch_presets_preset_id_response_data_ui.dart';@immutable final class PatchPresetsPresetIdResponseData {const PatchPresetsPresetIdResponseData({required this.config, required this.name, required this.ui, required this.id, this.permissions, });

factory PatchPresetsPresetIdResponseData.fromJson(Map<String, dynamic> json) { return PatchPresetsPresetIdResponseData(
  config: PatchPresetsPresetIdResponseDataConfig.fromJson(json['config'] as Map<String, dynamic>),
  name: json['name'] as String,
  permissions: json['permissions'] != null ? PatchPresetsPresetIdResponseDataPermissions.fromJson(json['permissions'] as Map<String, dynamic>) : null,
  ui: PatchPresetsPresetIdResponseDataUi.fromJson(json['ui'] as Map<String, dynamic>),
  id: json['id'] as String,
); }

final PatchPresetsPresetIdResponseDataConfig config;

/// Name of the preset
final String name;

final PatchPresetsPresetIdResponseDataPermissions? permissions;

final PatchPresetsPresetIdResponseDataUi ui;

/// ID of the preset
final String id;

Map<String, dynamic> toJson() { return {
  'config': config.toJson(),
  'name': name,
  if (permissions != null) 'permissions': permissions?.toJson(),
  'ui': ui.toJson(),
  'id': id,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('config') &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('ui') &&
      json.containsKey('id') && json['id'] is String; } 
PatchPresetsPresetIdResponseData copyWith({PatchPresetsPresetIdResponseDataConfig? config, String? name, PatchPresetsPresetIdResponseDataPermissions? Function()? permissions, PatchPresetsPresetIdResponseDataUi? ui, String? id, }) { return PatchPresetsPresetIdResponseData(
  config: config ?? this.config,
  name: name ?? this.name,
  permissions: permissions != null ? permissions() : this.permissions,
  ui: ui ?? this.ui,
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PatchPresetsPresetIdResponseData &&
          config == other.config &&
          name == other.name &&
          permissions == other.permissions &&
          ui == other.ui &&
          id == other.id; } 
@override int get hashCode { return Object.hash(config, name, permissions, ui, id); } 
@override String toString() { return 'PatchPresetsPresetIdResponseData(config: $config, name: $name, permissions: $permissions, ui: $ui, id: $id)'; } 
 }
