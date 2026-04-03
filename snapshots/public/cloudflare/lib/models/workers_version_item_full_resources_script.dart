// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_version_item_full_resources_script_named_handlers.dart';@immutable final class WorkersVersionItemFullResourcesScript {const WorkersVersionItemFullResourcesScript({this.etag, this.handlers, this.lastDeployedFrom, this.namedHandlers, });

factory WorkersVersionItemFullResourcesScript.fromJson(Map<String, dynamic> json) { return WorkersVersionItemFullResourcesScript(
  etag: json['etag'] as String?,
  handlers: (json['handlers'] as List<dynamic>?)?.map((e) => e as String).toList(),
  lastDeployedFrom: json['last_deployed_from'] as String?,
  namedHandlers: (json['named_handlers'] as List<dynamic>?)?.map((e) => WorkersVersionItemFullResourcesScriptNamedHandlers.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Hashed script content
final String? etag;

/// The names of handlers exported as part of the default export.
final List<String>? handlers;

/// The client most recently used to deploy this Worker.
final String? lastDeployedFrom;

/// Named exports, such as Durable Object class implementations and named entrypoints.
final List<WorkersVersionItemFullResourcesScriptNamedHandlers>? namedHandlers;

Map<String, dynamic> toJson() { return {
  'etag': ?etag,
  'handlers': ?handlers,
  'last_deployed_from': ?lastDeployedFrom,
  if (namedHandlers != null) 'named_handlers': namedHandlers?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'etag', 'handlers', 'last_deployed_from', 'named_handlers'}.contains(key)); } 
WorkersVersionItemFullResourcesScript copyWith({String Function()? etag, List<String> Function()? handlers, String Function()? lastDeployedFrom, List<WorkersVersionItemFullResourcesScriptNamedHandlers> Function()? namedHandlers, }) { return WorkersVersionItemFullResourcesScript(
  etag: etag != null ? etag() : this.etag,
  handlers: handlers != null ? handlers() : this.handlers,
  lastDeployedFrom: lastDeployedFrom != null ? lastDeployedFrom() : this.lastDeployedFrom,
  namedHandlers: namedHandlers != null ? namedHandlers() : this.namedHandlers,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersVersionItemFullResourcesScript &&
          etag == other.etag &&
          listEquals(handlers, other.handlers) &&
          lastDeployedFrom == other.lastDeployedFrom &&
          listEquals(namedHandlers, other.namedHandlers); } 
@override int get hashCode { return Object.hash(etag, Object.hashAll(handlers ?? const []), lastDeployedFrom, Object.hashAll(namedHandlers ?? const [])); } 
@override String toString() { return 'WorkersVersionItemFullResourcesScript(etag: $etag, handlers: $handlers, lastDeployedFrom: $lastDeployedFrom, namedHandlers: $namedHandlers)'; } 
 }
