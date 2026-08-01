// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// An option for a single select field
@immutable final class SingleSelectOption {const SingleSelectOption({required this.id, required this.name, this.color = const Omittable.absent(), this.description = const Omittable.absent(), });

factory SingleSelectOption.fromJson(Map<String, dynamic> json) { return SingleSelectOption(
  id: json['id'] as String,
  name: json['name'] as String,
  color: json.containsKey('color') ? Omittable(json['color'] as String?) : const Omittable.absent(),
  description: json.containsKey('description') ? Omittable(json['description'] as String?) : const Omittable.absent(),
); }

/// The unique identifier of the option.
final String id;

/// The display name of the option.
final String name;

/// The color associated with the option.
final Omittable<String?> color;

/// A short description of the option.
final Omittable<String?> description;

Map<String, dynamic> toJson() { return {
  'id': id,
  'name': name,
  if (color.isPresent) 'color': color.value,
  if (description.isPresent) 'description': description.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String &&
      json.containsKey('name') && json['name'] is String; } 
SingleSelectOption copyWith({String? id, String? name, Omittable<String?>? color, Omittable<String?>? description, }) { return SingleSelectOption(
  id: id ?? this.id,
  name: name ?? this.name,
  color: color ?? this.color,
  description: description ?? this.description,
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
