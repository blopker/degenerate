// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_binding_item.dart';import 'workers_version_item_full_resources_script.dart';import 'workers_version_item_full_resources_script_runtime.dart';@immutable final class WorkersVersionItemFullResources {const WorkersVersionItemFullResources({this.bindings, this.script, this.scriptRuntime, });

factory WorkersVersionItemFullResources.fromJson(Map<String, dynamic> json) { return WorkersVersionItemFullResources(
  bindings: (json['bindings'] as List<dynamic>?)?.map((e) => WorkersBindingItem.fromJson(e as Map<String, dynamic>)).toList(),
  script: json['script'] != null ? WorkersVersionItemFullResourcesScript.fromJson(json['script'] as Map<String, dynamic>) : null,
  scriptRuntime: json['script_runtime'] != null ? WorkersVersionItemFullResourcesScriptRuntime.fromJson(json['script_runtime'] as Map<String, dynamic>) : null,
); }

/// List of bindings attached to a Worker. You can find more about bindings on our docs: https://developers.cloudflare.com/workers/configuration/multipart-upload-metadata/#bindings.
final List<WorkersBindingItem>? bindings;

final WorkersVersionItemFullResourcesScript? script;

/// Runtime configuration for the Worker.
final WorkersVersionItemFullResourcesScriptRuntime? scriptRuntime;

Map<String, dynamic> toJson() { return {
  if (bindings != null) 'bindings': bindings?.map((e) => e.toJson()).toList(),
  if (script != null) 'script': script?.toJson(),
  if (scriptRuntime != null) 'script_runtime': scriptRuntime?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'bindings', 'script', 'script_runtime'}.contains(key)); } 
WorkersVersionItemFullResources copyWith({List<WorkersBindingItem> Function()? bindings, WorkersVersionItemFullResourcesScript Function()? script, WorkersVersionItemFullResourcesScriptRuntime Function()? scriptRuntime, }) { return WorkersVersionItemFullResources(
  bindings: bindings != null ? bindings() : this.bindings,
  script: script != null ? script() : this.script,
  scriptRuntime: scriptRuntime != null ? scriptRuntime() : this.scriptRuntime,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersVersionItemFullResources &&
          listEquals(bindings, other.bindings) &&
          script == other.script &&
          scriptRuntime == other.scriptRuntime; } 
@override int get hashCode { return Object.hash(Object.hashAll(bindings ?? const []), script, scriptRuntime); } 
@override String toString() { return 'WorkersVersionItemFullResources(bindings: $bindings, script: $script, scriptRuntime: $scriptRuntime)'; } 
 }
