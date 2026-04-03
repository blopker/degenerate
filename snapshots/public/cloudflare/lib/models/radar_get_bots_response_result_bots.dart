// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetBotsResponseResultBots {const RadarGetBotsResponseResultBots({required this.category, required this.description, required this.kind, required this.name, required this.$operator, required this.slug, required this.userAgentPatterns, });

factory RadarGetBotsResponseResultBots.fromJson(Map<String, dynamic> json) { return RadarGetBotsResponseResultBots(
  category: json['category'] as String,
  description: json['description'] as String,
  kind: json['kind'] as String,
  name: json['name'] as String,
  $operator: json['operator'] as String,
  slug: json['slug'] as String,
  userAgentPatterns: (json['userAgentPatterns'] as List<dynamic>).map((e) => e as String).toList(),
); }

/// The category of the bot.
final String category;

/// A summary for the bot (e.g., purpose).
final String description;

/// The kind of the bot.
final String kind;

/// The name of the bot.
final String name;

/// The organization that owns and operates the bot.
final String $operator;

/// A kebab-case identifier derived from the bot name.
final String slug;

final List<String> userAgentPatterns;

Map<String, dynamic> toJson() { return {
  'category': category,
  'description': description,
  'kind': kind,
  'name': name,
  'operator': $operator,
  'slug': slug,
  'userAgentPatterns': userAgentPatterns,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('category') && json['category'] is String &&
      json.containsKey('description') && json['description'] is String &&
      json.containsKey('kind') && json['kind'] is String &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('operator') && json['operator'] is String &&
      json.containsKey('slug') && json['slug'] is String &&
      json.containsKey('userAgentPatterns'); } 
RadarGetBotsResponseResultBots copyWith({String? category, String? description, String? kind, String? name, String? $operator, String? slug, List<String>? userAgentPatterns, }) { return RadarGetBotsResponseResultBots(
  category: category ?? this.category,
  description: description ?? this.description,
  kind: kind ?? this.kind,
  name: name ?? this.name,
  $operator: $operator ?? this.$operator,
  slug: slug ?? this.slug,
  userAgentPatterns: userAgentPatterns ?? this.userAgentPatterns,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetBotsResponseResultBots &&
          category == other.category &&
          description == other.description &&
          kind == other.kind &&
          name == other.name &&
          $operator == other.$operator &&
          slug == other.slug &&
          listEquals(userAgentPatterns, other.userAgentPatterns); } 
@override int get hashCode { return Object.hash(category, description, kind, name, $operator, slug, Object.hashAll(userAgentPatterns)); } 
@override String toString() { return 'RadarGetBotsResponseResultBots(category: $category, description: $description, kind: $kind, name: $name, \$operator: ${$operator}, slug: $slug, userAgentPatterns: $userAgentPatterns)'; } 
 }
