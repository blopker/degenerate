// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'delete_presets_preset_id_response_data_permissions_plugins_config.dart';import 'delete_presets_preset_id_response_data_permissions_plugins_config_variant2.dart';/// Plugin permissions
@immutable final class DeletePresetsPresetIdResponseDataPermissionsPlugins {const DeletePresetsPresetIdResponseDataPermissionsPlugins({required this.canClose, required this.canEditConfig, required this.canStart, required this.config, });

factory DeletePresetsPresetIdResponseDataPermissionsPlugins.fromJson(Map<String, dynamic> json) { return DeletePresetsPresetIdResponseDataPermissionsPlugins(
  canClose: json['can_close'] as bool,
  canEditConfig: json['can_edit_config'] as bool,
  canStart: json['can_start'] as bool,
  config: OneOf2.parse(json['config'], fromA: (v) => v as String, fromB: (v) => DeletePresetsPresetIdResponseDataPermissionsPluginsConfigVariant2.fromJson(v as Map<String, dynamic>),),
); }

/// Can close plugins that are already open
final bool canClose;

/// Can edit plugin config
final bool canEditConfig;

/// Can start plugins
final bool canStart;

final DeletePresetsPresetIdResponseDataPermissionsPluginsConfig config;

Map<String, dynamic> toJson() { return {
  'can_close': canClose,
  'can_edit_config': canEditConfig,
  'can_start': canStart,
  'config': config.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('can_close') && json['can_close'] is bool &&
      json.containsKey('can_edit_config') && json['can_edit_config'] is bool &&
      json.containsKey('can_start') && json['can_start'] is bool &&
      json.containsKey('config'); } 
DeletePresetsPresetIdResponseDataPermissionsPlugins copyWith({bool? canClose, bool? canEditConfig, bool? canStart, DeletePresetsPresetIdResponseDataPermissionsPluginsConfig? config, }) { return DeletePresetsPresetIdResponseDataPermissionsPlugins(
  canClose: canClose ?? this.canClose,
  canEditConfig: canEditConfig ?? this.canEditConfig,
  canStart: canStart ?? this.canStart,
  config: config ?? this.config,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DeletePresetsPresetIdResponseDataPermissionsPlugins &&
          canClose == other.canClose &&
          canEditConfig == other.canEditConfig &&
          canStart == other.canStart &&
          config == other.config; } 
@override int get hashCode { return Object.hash(canClose, canEditConfig, canStart, config); } 
@override String toString() { return 'DeletePresetsPresetIdResponseDataPermissionsPlugins(canClose: $canClose, canEditConfig: $canEditConfig, canStart: $canStart, config: $config)'; } 
 }
