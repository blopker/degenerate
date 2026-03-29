// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'search_result_text_matches2.dart';import 'topic_search_result_item_aliases.dart';import 'topic_search_result_item_related.dart';/// Topic Search Result Item
final class TopicSearchResultItem {const TopicSearchResultItem({required this.name, required this.displayName, required this.shortDescription, required this.description, required this.createdBy, required this.released, required this.createdAt, required this.updatedAt, required this.featured, required this.curated, required this.score, this.repositoryCount, this.logoUrl, this.textMatches, this.related, this.aliases, });

factory TopicSearchResultItem.fromJson(Map<String, dynamic> json) { return TopicSearchResultItem(
  name: json['name'] as String,
  displayName: json['display_name'] as String?,
  shortDescription: json['short_description'] as String?,
  description: json['description'] as String?,
  createdBy: json['created_by'] as String?,
  released: json['released'] as String?,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: DateTime.parse(json['updated_at'] as String),
  featured: json['featured'] as bool,
  curated: json['curated'] as bool,
  score: (json['score'] as num).toDouble(),
  repositoryCount: json['repository_count'] != null ? (json['repository_count'] as num).toInt() : null,
  logoUrl: json['logo_url'] != null ? Uri.parse(json['logo_url'] as String) : null,
  textMatches: (json['text_matches'] as List<dynamic>?)?.map((e) => SearchResultTextMatches2.fromJson(e as Map<String, dynamic>)).toList(),
  related: (json['related'] as List<dynamic>?)?.map((e) => TopicSearchResultItemRelated.fromJson(e as Map<String, dynamic>)).toList(),
  aliases: (json['aliases'] as List<dynamic>?)?.map((e) => TopicSearchResultItemAliases.fromJson(e as Map<String, dynamic>)).toList(),
); }

final String name;

final String? displayName;

final String? shortDescription;

final String? description;

final String? createdBy;

final String? released;

final DateTime createdAt;

final DateTime updatedAt;

final bool featured;

final bool curated;

final double score;

final int? repositoryCount;

final Uri? logoUrl;

final List<SearchResultTextMatches2>? textMatches;

final List<TopicSearchResultItemRelated>? related;

final List<TopicSearchResultItemAliases>? aliases;

Map<String, dynamic> toJson() { return {
  'name': name,
  'display_name': ?displayName,
  'short_description': ?shortDescription,
  'description': ?description,
  'created_by': ?createdBy,
  'released': ?released,
  'created_at': createdAt.toIso8601String(),
  'updated_at': updatedAt.toIso8601String(),
  'featured': featured,
  'curated': curated,
  'score': score,
  'repository_count': ?repositoryCount,
  if (logoUrl != null) 'logo_url': logoUrl?.toString(),
  if (textMatches != null) 'text_matches': textMatches?.map((e) => e.toJson()).toList(),
  if (related != null) 'related': related?.map((e) => e.toJson()).toList(),
  if (aliases != null) 'aliases': aliases?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String &&
      json.containsKey('display_name') && json['display_name'] is String &&
      json.containsKey('short_description') && json['short_description'] is String &&
      json.containsKey('description') && json['description'] is String &&
      json.containsKey('created_by') && json['created_by'] is String &&
      json.containsKey('released') && json['released'] is String &&
      json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('updated_at') && json['updated_at'] is String &&
      json.containsKey('featured') && json['featured'] is bool &&
      json.containsKey('curated') && json['curated'] is bool &&
      json.containsKey('score') && json['score'] is num; } 
TopicSearchResultItem copyWith({String? name, String? Function()? displayName, String? Function()? shortDescription, String? Function()? description, String? Function()? createdBy, String? Function()? released, DateTime? createdAt, DateTime? updatedAt, bool? featured, bool? curated, double? score, int? Function()? repositoryCount, Uri? Function()? logoUrl, List<SearchResultTextMatches2> Function()? textMatches, List<TopicSearchResultItemRelated>? Function()? related, List<TopicSearchResultItemAliases>? Function()? aliases, }) { return TopicSearchResultItem(
  name: name ?? this.name,
  displayName: displayName != null ? displayName() : this.displayName,
  shortDescription: shortDescription != null ? shortDescription() : this.shortDescription,
  description: description != null ? description() : this.description,
  createdBy: createdBy != null ? createdBy() : this.createdBy,
  released: released != null ? released() : this.released,
  createdAt: createdAt ?? this.createdAt,
  updatedAt: updatedAt ?? this.updatedAt,
  featured: featured ?? this.featured,
  curated: curated ?? this.curated,
  score: score ?? this.score,
  repositoryCount: repositoryCount != null ? repositoryCount() : this.repositoryCount,
  logoUrl: logoUrl != null ? logoUrl() : this.logoUrl,
  textMatches: textMatches != null ? textMatches() : this.textMatches,
  related: related != null ? related() : this.related,
  aliases: aliases != null ? aliases() : this.aliases,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TopicSearchResultItem &&
          name == other.name &&
          displayName == other.displayName &&
          shortDescription == other.shortDescription &&
          description == other.description &&
          createdBy == other.createdBy &&
          released == other.released &&
          createdAt == other.createdAt &&
          updatedAt == other.updatedAt &&
          featured == other.featured &&
          curated == other.curated &&
          score == other.score &&
          repositoryCount == other.repositoryCount &&
          logoUrl == other.logoUrl &&
          listEquals(textMatches, other.textMatches) &&
          listEquals(related, other.related) &&
          listEquals(aliases, other.aliases); } 
@override int get hashCode { return Object.hash(name, displayName, shortDescription, description, createdBy, released, createdAt, updatedAt, featured, curated, score, repositoryCount, logoUrl, Object.hashAll(textMatches ?? const []), Object.hashAll(related ?? const []), Object.hashAll(aliases ?? const [])); } 
@override String toString() { return 'TopicSearchResultItem(name: $name, displayName: $displayName, shortDescription: $shortDescription, description: $description, createdBy: $createdBy, released: $released, createdAt: $createdAt, updatedAt: $updatedAt, featured: $featured, curated: $curated, score: $score, repositoryCount: $repositoryCount, logoUrl: $logoUrl, textMatches: $textMatches, related: $related, aliases: $aliases)'; } 
 }
