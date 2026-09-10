// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_binding_item_response.dart';import 'workers_version_item_full_response_resources_script.dart';import 'workers_version_item_full_response_resources_script_runtime.dart';@immutable final class WorkersVersionItemFullResponseResources {const WorkersVersionItemFullResponseResources({this.bindings, this.script, this.scriptRuntime, });

factory WorkersVersionItemFullResponseResources.fromJson(Map<String, dynamic> json) { return WorkersVersionItemFullResponseResources(
  bindings: (json['bindings'] as List<dynamic>?)?.map((e) => WorkersBindingItemResponse.fromJson(e as Map<String, dynamic>)).toList(),
  script: json['script'] != null ? WorkersVersionItemFullResponseResourcesScript.fromJson(json['script'] as Map<String, dynamic>) : null,
  scriptRuntime: json['script_runtime'] != null ? WorkersVersionItemFullResponseResourcesScriptRuntime.fromJson(json['script_runtime'] as Map<String, dynamic>) : null,
); }

/// List of bindings attached to a Worker. You can find more about bindings on our docs: https://developers.cloudflare.com/workers/configuration/multipart-upload-metadata/#bindings.
final List<WorkersBindingItemResponse>? bindings;

final WorkersVersionItemFullResponseResourcesScript? script;

/// Runtime configuration for the Worker.
final WorkersVersionItemFullResponseResourcesScriptRuntime? scriptRuntime;

Map<String, dynamic> toJson() { return {
  if (bindings != null) 'bindings': bindings?.map((e) => e.toJson()).toList(),
  if (script != null) 'script': script?.toJson(),
  if (scriptRuntime != null) 'script_runtime': scriptRuntime?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'bindings', 'script', 'script_runtime'}.contains(key)); } 
WorkersVersionItemFullResponseResources copyWith({List<WorkersBindingItemResponse>? Function()? bindings, WorkersVersionItemFullResponseResourcesScript? Function()? script, WorkersVersionItemFullResponseResourcesScriptRuntime? Function()? scriptRuntime, }) { return WorkersVersionItemFullResponseResources(
  bindings: bindings != null ? bindings() : this.bindings,
  script: script != null ? script() : this.script,
  scriptRuntime: scriptRuntime != null ? scriptRuntime() : this.scriptRuntime,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersVersionItemFullResponseResources &&
          listEquals(bindings, other.bindings) &&
          script == other.script &&
          scriptRuntime == other.scriptRuntime; } 
@override int get hashCode { return Object.hash(Object.hashAll(bindings ?? const []), script, scriptRuntime); } 
@override String toString() { return 'WorkersVersionItemFullResponseResources(bindings: $bindings, script: $script, scriptRuntime: $scriptRuntime)'; } 
 }
