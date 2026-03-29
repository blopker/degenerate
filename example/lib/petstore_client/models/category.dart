// GENERATED CODE - DO NOT MODIFY BY HAND

final class Category {const Category({this.id, this.name, });

factory Category.fromJson(Map<String, dynamic> json) { return Category(
  id: json['id'] != null ? (json['id'] as num).toInt() : null,
  name: json['name'] as String?,
); }

final int? id;

final String? name;

Map<String, dynamic> toJson() { return {
  'id': ?id,
  'name': ?name,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
Category copyWith({int Function()? id, String Function()? name, }) { return Category(
  id: id != null ? id() : this.id,
  name: name != null ? name() : this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Category &&
          id == other.id &&
          name == other.name; } 
@override int get hashCode { return Object.hash(id, name); } 
@override String toString() { return 'Category(id: $id, name: $name)'; } 
 }
