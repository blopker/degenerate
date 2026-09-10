// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_binding_name.dart';@immutable final class WorkersBindingKindSecretTextResponse {const WorkersBindingKindSecretTextResponse({required this.name, required this.type, });

factory WorkersBindingKindSecretTextResponse.fromJson(Map<String, dynamic> json) { return WorkersBindingKindSecretTextResponse(
  name: WorkersBindingName.fromJson(json['name'] as String),
  type: json['type'] as String,
); }

/// A JavaScript variable name for the binding.
final WorkersBindingName name;

/// The kind of resource that the binding provides.
final String type;

Map<String, dynamic> toJson() { return {
  'name': name.toJson(),
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') &&
      json.containsKey('type') && json['type'] is String; } 
WorkersBindingKindSecretTextResponse copyWith({WorkersBindingName? name, String? type, }) { return WorkersBindingKindSecretTextResponse(
  name: name ?? this.name,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersBindingKindSecretTextResponse &&
          name == other.name &&
          type == other.type; } 
@override int get hashCode { return Object.hash(name, type); } 
@override String toString() { return 'WorkersBindingKindSecretTextResponse(name: $name, type: $type)'; } 
 }
