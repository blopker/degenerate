// GENERATED CODE - DO NOT MODIFY BY HAND

final class IssuesCreateRequestLabelsVariant2 {const IssuesCreateRequestLabelsVariant2({this.id, this.name, this.description, this.color, });

factory IssuesCreateRequestLabelsVariant2.fromJson(Map<String, dynamic> json) { return IssuesCreateRequestLabelsVariant2(
  id: json['id'] != null ? (json['id'] as num).toInt() : null,
  name: json['name'] as String?,
  description: json['description'] as String?,
  color: json['color'] as String?,
); }

final int? id;

final String? name;

final String? description;

final String? color;

Map<String, dynamic> toJson() { return {
  'id': ?id,
  'name': ?name,
  'description': ?description,
  'color': ?color,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'name', 'description', 'color'}.contains(key)); } 
IssuesCreateRequestLabelsVariant2 copyWith({int Function()? id, String Function()? name, String? Function()? description, String? Function()? color, }) { return IssuesCreateRequestLabelsVariant2(
  id: id != null ? id() : this.id,
  name: name != null ? name() : this.name,
  description: description != null ? description() : this.description,
  color: color != null ? color() : this.color,
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
