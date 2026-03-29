// GENERATED CODE - DO NOT MODIFY BY HAND

import 'workers_script_and_version_settings_item.dart';final class WorkerScriptPatchSettingsRequest {const WorkerScriptPatchSettingsRequest({this.settings});

factory WorkerScriptPatchSettingsRequest.fromJson(Map<String, dynamic> json) { return WorkerScriptPatchSettingsRequest(
  settings: json['settings'] != null ? WorkersScriptAndVersionSettingsItem.fromJson(json['settings'] as Map<String, dynamic>) : null,
); }

final WorkersScriptAndVersionSettingsItem? settings;

Map<String, dynamic> toJson() { return {
  if (settings != null) 'settings': settings?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
WorkerScriptPatchSettingsRequest copyWith({WorkersScriptAndVersionSettingsItem Function()? settings}) { return WorkerScriptPatchSettingsRequest(
  settings: settings != null ? settings() : this.settings,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkerScriptPatchSettingsRequest &&
          settings == other.settings; } 
@override int get hashCode { return settings.hashCode; } 
@override String toString() { return 'WorkerScriptPatchSettingsRequest(settings: $settings)'; } 
 }
