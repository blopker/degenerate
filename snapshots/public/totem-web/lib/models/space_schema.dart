// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'public_user_schema.dart';@immutable final class SpaceSchema {const SpaceSchema({required this.author, required this.title, required this.dateCreated, required this.dateModified, required this.subtitle, this.slug = const Omittable.absent(), });

factory SpaceSchema.fromJson(Map<String, dynamic> json) { return SpaceSchema(
  author: PublicUserSchema.fromJson(json['author'] as Map<String, dynamic>),
  title: json['title'] as String,
  slug: json.containsKey('slug') ? Omittable(json['slug'] as String?) : const Omittable.absent(),
  dateCreated: DateTime.parse(json['date_created'] as String),
  dateModified: DateTime.parse(json['date_modified'] as String),
  subtitle: json['subtitle'] as String,
); }

final PublicUserSchema author;

final String title;

final Omittable<String?> slug;

final DateTime dateCreated;

final DateTime dateModified;

final String subtitle;

Map<String, dynamic> toJson() { return {
  'author': author.toJson(),
  'title': title,
  if (slug.isPresent) 'slug': slug.value,
  'date_created': dateCreated.toIso8601String(),
  'date_modified': dateModified.toIso8601String(),
  'subtitle': subtitle,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('author') &&
      json.containsKey('title') && json['title'] is String &&
      json.containsKey('date_created') && json['date_created'] is String &&
      json.containsKey('date_modified') && json['date_modified'] is String &&
      json.containsKey('subtitle') && json['subtitle'] is String; } 
SpaceSchema copyWith({PublicUserSchema? author, String? title, Omittable<String?>? slug, DateTime? dateCreated, DateTime? dateModified, String? subtitle, }) { return SpaceSchema(
  author: author ?? this.author,
  title: title ?? this.title,
  slug: slug ?? this.slug,
  dateCreated: dateCreated ?? this.dateCreated,
  dateModified: dateModified ?? this.dateModified,
  subtitle: subtitle ?? this.subtitle,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SpaceSchema &&
          author == other.author &&
          title == other.title &&
          slug == other.slug &&
          dateCreated == other.dateCreated &&
          dateModified == other.dateModified &&
          subtitle == other.subtitle; } 
@override int get hashCode { return Object.hash(author, title, slug, dateCreated, dateModified, subtitle); } 
@override String toString() { return 'SpaceSchema(author: $author, title: $title, slug: $slug, dateCreated: $dateCreated, dateModified: $dateModified, subtitle: $subtitle)'; } 
 }
