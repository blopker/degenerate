// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'delete_presets_preset_id_response_data_config.dart';import 'delete_presets_preset_id_response_data_permissions.dart';import 'delete_presets_preset_id_response_data_ui.dart';@immutable final class DeletePresetsPresetIdResponseData {const DeletePresetsPresetIdResponseData({required this.config, required this.name, required this.ui, required this.id, this.permissions, });

factory DeletePresetsPresetIdResponseData.fromJson(Map<String, dynamic> json) { return DeletePresetsPresetIdResponseData(
  config: DeletePresetsPresetIdResponseDataConfig.fromJson(json['config'] as Map<String, dynamic>),
  name: json['name'] as String,
  permissions: json['permissions'] != null ? DeletePresetsPresetIdResponseDataPermissions.fromJson(json['permissions'] as Map<String, dynamic>) : null,
  ui: DeletePresetsPresetIdResponseDataUi.fromJson(json['ui'] as Map<String, dynamic>),
  id: json['id'] as String,
); }

final DeletePresetsPresetIdResponseDataConfig config;

/// Name of the preset
final String name;

final DeletePresetsPresetIdResponseDataPermissions? permissions;

final DeletePresetsPresetIdResponseDataUi ui;

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
DeletePresetsPresetIdResponseData copyWith({DeletePresetsPresetIdResponseDataConfig? config, String? name, DeletePresetsPresetIdResponseDataPermissions Function()? permissions, DeletePresetsPresetIdResponseDataUi? ui, String? id, }) { return DeletePresetsPresetIdResponseData(
  config: config ?? this.config,
  name: name ?? this.name,
  permissions: permissions != null ? permissions() : this.permissions,
  ui: ui ?? this.ui,
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DeletePresetsPresetIdResponseData &&
          config == other.config &&
          name == other.name &&
          permissions == other.permissions &&
          ui == other.ui &&
          id == other.id; } 
@override int get hashCode { return Object.hash(config, name, permissions, ui, id); } 
@override String toString() { return 'DeletePresetsPresetIdResponseData(config: $config, name: $name, permissions: $permissions, ui: $ui, id: $id)'; } 
 }
