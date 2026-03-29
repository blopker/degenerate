// GENERATED CODE - DO NOT MODIFY BY HAND

final class Pet {const Pet({required this.id, required this.name, this.tag, });

factory Pet.fromJson(Map<String, dynamic> json) { return Pet(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  tag: json['tag'] as String?,
); }

final int id;

final String name;

final String? tag;

Map<String, dynamic> toJson() { return {
  'id': id,
  'name': name,
  'tag': ?tag,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is num &&
      json.containsKey('name') && json['name'] is String; } 
Pet copyWith({int? id, String? name, String Function()? tag, }) { return Pet(
  id: id ?? this.id,
  name: name ?? this.name,
  tag: tag != null ? tag() : this.tag,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Pet &&
          id == other.id &&
          name == other.name &&
          tag == other.tag; } 
@override int get hashCode { return Object.hash(id, name, tag); } 
@override String toString() { return 'Pet(id: $id, name: $name, tag: $tag)'; } 
 }
