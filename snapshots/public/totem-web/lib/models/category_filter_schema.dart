// GENERATED CODE - DO NOT MODIFY BY HAND

final class CategoryFilterSchema {const CategoryFilterSchema({required this.name, required this.slug, });

factory CategoryFilterSchema.fromJson(Map<String, dynamic> json) { return CategoryFilterSchema(
  name: json['name'] as String,
  slug: json['slug'] as String,
); }

final String name;

final String slug;

Map<String, dynamic> toJson() { return {
  'name': name,
  'slug': slug,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String &&
      json.containsKey('slug') && json['slug'] is String; } 
CategoryFilterSchema copyWith({String? name, String? slug, }) { return CategoryFilterSchema(
  name: name ?? this.name,
  slug: slug ?? this.slug,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CategoryFilterSchema &&
          name == other.name &&
          slug == other.slug; } 
@override int get hashCode { return Object.hash(name, slug); } 
@override String toString() { return 'CategoryFilterSchema(name: $name, slug: $slug)'; } 
 }
