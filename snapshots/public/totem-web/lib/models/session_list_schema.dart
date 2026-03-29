// GENERATED CODE - DO NOT MODIFY BY HAND

import 'space_schema.dart';final class SessionListSchema {const SessionListSchema({required this.space, required this.url, this.start, this.slug, required this.dateCreated, required this.dateModified, this.title, });

factory SessionListSchema.fromJson(Map<String, dynamic> json) { return SessionListSchema(
  space: SpaceSchema.fromJson(json['space'] as Map<String, dynamic>),
  url: json['url'] as String,
  start: json['start'] != null ? DateTime.parse(json['start'] as String) : null,
  slug: json['slug'] as String?,
  dateCreated: DateTime.parse(json['date_created'] as String),
  dateModified: DateTime.parse(json['date_modified'] as String),
  title: json['title'] as String?,
); }

final SpaceSchema space;

final String url;

final DateTime? start;

final String? slug;

final DateTime dateCreated;

final DateTime dateModified;

final String? title;

Map<String, dynamic> toJson() { return {
  'space': space.toJson(),
  'url': url,
  if (start != null) 'start': start?.toIso8601String(),
  'slug': ?slug,
  'date_created': dateCreated.toIso8601String(),
  'date_modified': dateModified.toIso8601String(),
  'title': ?title,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('space') &&
      json.containsKey('url') && json['url'] is String &&
      json.containsKey('date_created') && json['date_created'] is String &&
      json.containsKey('date_modified') && json['date_modified'] is String; } 
SessionListSchema copyWith({SpaceSchema? space, String? url, DateTime Function()? start, String? Function()? slug, DateTime? dateCreated, DateTime? dateModified, String? Function()? title, }) { return SessionListSchema(
  space: space ?? this.space,
  url: url ?? this.url,
  start: start != null ? start() : this.start,
  slug: slug != null ? slug() : this.slug,
  dateCreated: dateCreated ?? this.dateCreated,
  dateModified: dateModified ?? this.dateModified,
  title: title != null ? title() : this.title,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SessionListSchema &&
          space == other.space &&
          url == other.url &&
          start == other.start &&
          slug == other.slug &&
          dateCreated == other.dateCreated &&
          dateModified == other.dateModified &&
          title == other.title; } 
@override int get hashCode { return Object.hash(space, url, start, slug, dateCreated, dateModified, title); } 
@override String toString() { return 'SessionListSchema(space: $space, url: $url, start: $start, slug: $slug, dateCreated: $dateCreated, dateModified: $dateModified, title: $title)'; } 
 }
