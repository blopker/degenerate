// GENERATED CODE - DO NOT MODIFY BY HAND

import 'workers_namespace_script_and_version_settings_item.dart';final class NamespaceWorkerPatchScriptSettingsRequest {const NamespaceWorkerPatchScriptSettingsRequest({this.settings});

factory NamespaceWorkerPatchScriptSettingsRequest.fromJson(Map<String, dynamic> json) { return NamespaceWorkerPatchScriptSettingsRequest(
  settings: json['settings'] != null ? WorkersNamespaceScriptAndVersionSettingsItem.fromJson(json['settings'] as Map<String, dynamic>) : null,
); }

final WorkersNamespaceScriptAndVersionSettingsItem? settings;

Map<String, dynamic> toJson() { return {
  if (settings != null) 'settings': settings?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'settings'}.contains(key)); } 
NamespaceWorkerPatchScriptSettingsRequest copyWith({WorkersNamespaceScriptAndVersionSettingsItem Function()? settings}) { return NamespaceWorkerPatchScriptSettingsRequest(
  settings: settings != null ? settings() : this.settings,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is NamespaceWorkerPatchScriptSettingsRequest &&
          settings == other.settings; } 
@override int get hashCode { return settings.hashCode; } 
@override String toString() { return 'NamespaceWorkerPatchScriptSettingsRequest(settings: $settings)'; } 
 }
