// GENERATED CODE - DO NOT MODIFY BY HAND

import 'realtimekit_update_preset_config.dart';import 'realtimekit_update_preset_permissions.dart';import 'realtimekit_update_preset_ui.dart';final class RealtimekitUpdatePreset {const RealtimekitUpdatePreset({this.config, this.name, this.permissions, this.ui, });

factory RealtimekitUpdatePreset.fromJson(Map<String, dynamic> json) { return RealtimekitUpdatePreset(
  config: json['config'] != null ? RealtimekitUpdatePresetConfig.fromJson(json['config'] as Map<String, dynamic>) : null,
  name: json['name'] as String?,
  permissions: json['permissions'] != null ? RealtimekitUpdatePresetPermissions.fromJson(json['permissions'] as Map<String, dynamic>) : null,
  ui: json['ui'] != null ? RealtimekitUpdatePresetUi.fromJson(json['ui'] as Map<String, dynamic>) : null,
); }

final RealtimekitUpdatePresetConfig? config;

/// Name of the preset
final String? name;

final RealtimekitUpdatePresetPermissions? permissions;

final RealtimekitUpdatePresetUi? ui;

Map<String, dynamic> toJson() { return {
  if (config != null) 'config': config?.toJson(),
  'name': ?name,
  if (permissions != null) 'permissions': permissions?.toJson(),
  if (ui != null) 'ui': ui?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'config', 'name', 'permissions', 'ui'}.contains(key)); } 
RealtimekitUpdatePreset copyWith({RealtimekitUpdatePresetConfig Function()? config, String Function()? name, RealtimekitUpdatePresetPermissions Function()? permissions, RealtimekitUpdatePresetUi Function()? ui, }) { return RealtimekitUpdatePreset(
  config: config != null ? config() : this.config,
  name: name != null ? name() : this.name,
  permissions: permissions != null ? permissions() : this.permissions,
  ui: ui != null ? ui() : this.ui,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimekitUpdatePreset &&
          config == other.config &&
          name == other.name &&
          permissions == other.permissions &&
          ui == other.ui; } 
@override int get hashCode { return Object.hash(config, name, permissions, ui); } 
@override String toString() { return 'RealtimekitUpdatePreset(config: $config, name: $name, permissions: $permissions, ui: $ui)'; } 
 }
