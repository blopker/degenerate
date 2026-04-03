// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AuthorFilterSchema {const AuthorFilterSchema({required this.name, required this.slug, });

factory AuthorFilterSchema.fromJson(Map<String, dynamic> json) { return AuthorFilterSchema(
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
AuthorFilterSchema copyWith({String? name, String? slug, }) { return AuthorFilterSchema(
  name: name ?? this.name,
  slug: slug ?? this.slug,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AuthorFilterSchema &&
          name == other.name &&
          slug == other.slug; } 
@override int get hashCode { return Object.hash(name, slug); } 
@override String toString() { return 'AuthorFilterSchema(name: $name, slug: $slug)'; } 
 }
