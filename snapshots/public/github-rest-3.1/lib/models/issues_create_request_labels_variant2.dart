// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class IssuesCreateRequestLabelsVariant2 {const IssuesCreateRequestLabelsVariant2({this.id, this.name, this.description = const Omittable.absent(), this.color = const Omittable.absent(), });

factory IssuesCreateRequestLabelsVariant2.fromJson(Map<String, dynamic> json) { return IssuesCreateRequestLabelsVariant2(
  id: json['id'] != null ? (json['id'] as num).toInt() : null,
  name: json['name'] as String?,
  description: json.containsKey('description') ? Omittable(json['description'] as String?) : const Omittable.absent(),
  color: json.containsKey('color') ? Omittable(json['color'] as String?) : const Omittable.absent(),
); }

final int? id;

final String? name;

final Omittable<String?> description;

final Omittable<String?> color;

Map<String, dynamic> toJson() { return {
  'id': ?id,
  'name': ?name,
  if (description.isPresent) 'description': description.value,
  if (color.isPresent) 'color': color.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'name', 'description', 'color'}.contains(key)); } 
IssuesCreateRequestLabelsVariant2 copyWith({int? Function()? id, String? Function()? name, Omittable<String?>? description, Omittable<String?>? color, }) { return IssuesCreateRequestLabelsVariant2(
  id: id != null ? id() : this.id,
  name: name != null ? name() : this.name,
  description: description ?? this.description,
  color: color ?? this.color,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuesCreateRequestLabelsVariant2 &&
          id == other.id &&
          name == other.name &&
          description == other.description &&
          color == other.color; } 
@override int get hashCode { return Object.hash(id, name, description, color); } 
@override String toString() { return 'IssuesCreateRequestLabelsVariant2(id: $id, name: $name, description: $description, color: $color)'; } 
 }
