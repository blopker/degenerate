// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WorkersVersionItemFullResourcesScriptNamedHandlers {const WorkersVersionItemFullResourcesScriptNamedHandlers({this.handlers, this.name, });

factory WorkersVersionItemFullResourcesScriptNamedHandlers.fromJson(Map<String, dynamic> json) { return WorkersVersionItemFullResourcesScriptNamedHandlers(
  handlers: (json['handlers'] as List<dynamic>?)?.map((e) => e as String).toList(),
  name: json['name'] as String?,
); }

/// The names of handlers exported as part of the named export.
final List<String>? handlers;

/// The name of the exported class or entrypoint.
final String? name;

Map<String, dynamic> toJson() { return {
  'handlers': ?handlers,
  'name': ?name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'handlers', 'name'}.contains(key)); } 
WorkersVersionItemFullResourcesScriptNamedHandlers copyWith({List<String> Function()? handlers, String Function()? name, }) { return WorkersVersionItemFullResourcesScriptNamedHandlers(
  handlers: handlers != null ? handlers() : this.handlers,
  name: name != null ? name() : this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersVersionItemFullResourcesScriptNamedHandlers &&
          listEquals(handlers, other.handlers) &&
          name == other.name; } 
@override int get hashCode { return Object.hash(Object.hashAll(handlers ?? const []), name); } 
@override String toString() { return 'WorkersVersionItemFullResourcesScriptNamedHandlers(handlers: $handlers, name: $name)'; } 
 }
