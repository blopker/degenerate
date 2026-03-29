// GENERATED CODE - DO NOT MODIFY BY HAND

import 'workers_binding_name.dart';final class WorkersBindingKindWasmModule {const WorkersBindingKindWasmModule({required this.name, required this.$part, required this.type, });

factory WorkersBindingKindWasmModule.fromJson(Map<String, dynamic> json) { return WorkersBindingKindWasmModule(
  name: WorkersBindingName.fromJson(json['name'] as String),
  $part: json['part'] as String,
  type: json['type'] as String,
); }

final WorkersBindingName name;

/// The name of the file containing the WebAssembly module content. Only accepted for `service worker syntax` Workers.
final String $part;

/// The kind of resource that the binding provides.
final String type;

Map<String, dynamic> toJson() { return {
  'name': name.toJson(),
  'part': $part,
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') &&
      json.containsKey('part') && json['part'] is String &&
      json.containsKey('type') && json['type'] is String; } 
WorkersBindingKindWasmModule copyWith({WorkersBindingName? name, String? $part, String? type, }) { return WorkersBindingKindWasmModule(
  name: name ?? this.name,
  $part: $part ?? this.$part,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersBindingKindWasmModule &&
          name == other.name &&
          $part == other.$part &&
          type == other.type; } 
@override int get hashCode { return Object.hash(name, $part, type); } 
@override String toString() { return 'WorkersBindingKindWasmModule(name: $name, \$part: ${$part}, type: $type)'; } 
 }
