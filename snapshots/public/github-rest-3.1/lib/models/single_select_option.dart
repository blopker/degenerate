// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// An option for a single select field
@immutable final class SingleSelectOption {const SingleSelectOption({required this.id, required this.name, this.color, this.description, });

factory SingleSelectOption.fromJson(Map<String, dynamic> json) { return SingleSelectOption(
  id: json['id'] as String,
  name: json['name'] as String,
  color: json['color'] as String?,
  description: json['description'] as String?,
); }

/// The unique identifier of the option.
final String id;

/// The display name of the option.
final String name;

/// The color associated with the option.
final String? color;

/// A short description of the option.
final String? description;

Map<String, dynamic> toJson() { return {
  'id': id,
  'name': name,
  'color': ?color,
  'description': ?description,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String &&
      json.containsKey('name') && json['name'] is String; } 
SingleSelectOption copyWith({String? id, String? name, String? Function()? color, String? Function()? description, }) { return SingleSelectOption(
  id: id ?? this.id,
  name: name ?? this.name,
  color: color != null ? color() : this.color,
  description: description != null ? description() : this.description,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SingleSelectOption &&
          id == other.id &&
          name == other.name &&
          color == other.color &&
          description == other.description; } 
@override int get hashCode { return Object.hash(id, name, color, description); } 
@override String toString() { return 'SingleSelectOption(id: $id, name: $name, color: $color, description: $description)'; } 
 }
