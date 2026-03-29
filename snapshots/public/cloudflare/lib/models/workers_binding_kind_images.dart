// GENERATED CODE - DO NOT MODIFY BY HAND

import 'workers_binding_name.dart';final class WorkersBindingKindImages {const WorkersBindingKindImages({required this.name, required this.type, });

factory WorkersBindingKindImages.fromJson(Map<String, dynamic> json) { return WorkersBindingKindImages(
  name: WorkersBindingName.fromJson(json['name'] as String),
  type: json['type'] as String,
); }

final WorkersBindingName name;

/// The kind of resource that the binding provides.
final String type;

Map<String, dynamic> toJson() { return {
  'name': name.toJson(),
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') &&
      json.containsKey('type') && json['type'] is String; } 
WorkersBindingKindImages copyWith({WorkersBindingName? name, String? type, }) { return WorkersBindingKindImages(
  name: name ?? this.name,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersBindingKindImages &&
          name == other.name &&
          type == other.type; } 
@override int get hashCode { return Object.hash(name, type); } 
@override String toString() { return 'WorkersBindingKindImages(name: $name, type: $type)'; } 
 }
