// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'get_presets_preset_id_response_data_config.dart';import 'get_presets_preset_id_response_data_permissions.dart';import 'get_presets_preset_id_response_data_ui.dart';@immutable final class GetPresetsPresetIdResponseData {const GetPresetsPresetIdResponseData({required this.config, required this.name, required this.ui, required this.id, this.permissions, });

factory GetPresetsPresetIdResponseData.fromJson(Map<String, dynamic> json) { return GetPresetsPresetIdResponseData(
  config: GetPresetsPresetIdResponseDataConfig.fromJson(json['config'] as Map<String, dynamic>),
  name: json['name'] as String,
  permissions: json['permissions'] != null ? GetPresetsPresetIdResponseDataPermissions.fromJson(json['permissions'] as Map<String, dynamic>) : null,
  ui: GetPresetsPresetIdResponseDataUi.fromJson(json['ui'] as Map<String, dynamic>),
  id: json['id'] as String,
); }

final GetPresetsPresetIdResponseDataConfig config;

/// Name of the preset
final String name;

final GetPresetsPresetIdResponseDataPermissions? permissions;

final GetPresetsPresetIdResponseDataUi ui;

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
GetPresetsPresetIdResponseData copyWith({GetPresetsPresetIdResponseDataConfig? config, String? name, GetPresetsPresetIdResponseDataPermissions Function()? permissions, GetPresetsPresetIdResponseDataUi? ui, String? id, }) { return GetPresetsPresetIdResponseData(
  config: config ?? this.config,
  name: name ?? this.name,
  permissions: permissions != null ? permissions() : this.permissions,
  ui: ui ?? this.ui,
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetPresetsPresetIdResponseData &&
          config == other.config &&
          name == other.name &&
          permissions == other.permissions &&
          ui == other.ui &&
          id == other.id; } 
@override int get hashCode { return Object.hash(config, name, permissions, ui, id); } 
@override String toString() { return 'GetPresetsPresetIdResponseData(config: $config, name: $name, permissions: $permissions, ui: $ui, id: $id)'; } 
 }
