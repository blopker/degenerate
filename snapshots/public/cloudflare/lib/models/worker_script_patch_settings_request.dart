// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_script_and_version_settings_item_request.dart';@immutable final class WorkerScriptPatchSettingsRequest {const WorkerScriptPatchSettingsRequest({this.settings});

factory WorkerScriptPatchSettingsRequest.fromJson(Map<String, dynamic> json) { return WorkerScriptPatchSettingsRequest(
  settings: json['settings'] != null ? WorkersScriptAndVersionSettingsItemRequest.fromJson(json['settings'] as Map<String, dynamic>) : null,
); }

final WorkersScriptAndVersionSettingsItemRequest? settings;

Map<String, dynamic> toJson() { return {
  if (settings != null) 'settings': settings?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'settings'}.contains(key)); } 
WorkerScriptPatchSettingsRequest copyWith({WorkersScriptAndVersionSettingsItemRequest? Function()? settings}) { return WorkerScriptPatchSettingsRequest(
  settings: settings != null ? settings() : this.settings,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkerScriptPatchSettingsRequest &&
          settings == other.settings; } 
@override int get hashCode { return settings.hashCode; } 
@override String toString() { return 'WorkerScriptPatchSettingsRequest(settings: $settings)'; } 
 }
