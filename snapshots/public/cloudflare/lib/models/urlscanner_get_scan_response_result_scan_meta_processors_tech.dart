// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'urlscanner_get_scan_response_result_scan_meta_processors_tech_categories.dart';import 'urlscanner_get_scan_response_result_scan_meta_processors_tech_evidence.dart';final class UrlscannerGetScanResponseResultScanMetaProcessorsTech {const UrlscannerGetScanResponseResultScanMetaProcessorsTech({required this.categories, required this.confidence, this.description, required this.evidence, required this.icon, required this.name, required this.slug, required this.website, });

factory UrlscannerGetScanResponseResultScanMetaProcessorsTech.fromJson(Map<String, dynamic> json) { return UrlscannerGetScanResponseResultScanMetaProcessorsTech(
  categories: (json['categories'] as List<dynamic>).map((e) => UrlscannerGetScanResponseResultScanMetaProcessorsTechCategories.fromJson(e as Map<String, dynamic>)).toList(),
  confidence: (json['confidence'] as num).toInt(),
  description: json['description'] as String?,
  evidence: UrlscannerGetScanResponseResultScanMetaProcessorsTechEvidence.fromJson(json['evidence'] as Map<String, dynamic>),
  icon: json['icon'] as String,
  name: json['name'] as String,
  slug: json['slug'] as String,
  website: json['website'] as String,
); }

final List<UrlscannerGetScanResponseResultScanMetaProcessorsTechCategories> categories;

final int confidence;

final String? description;

final UrlscannerGetScanResponseResultScanMetaProcessorsTechEvidence evidence;

final String icon;

final String name;

final String slug;

final String website;

Map<String, dynamic> toJson() { return {
  'categories': categories.map((e) => e.toJson()).toList(),
  'confidence': confidence,
  'description': ?description,
  'evidence': evidence.toJson(),
  'icon': icon,
  'name': name,
  'slug': slug,
  'website': website,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('categories') &&
      json.containsKey('confidence') && json['confidence'] is num &&
      json.containsKey('evidence') &&
      json.containsKey('icon') && json['icon'] is String &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('slug') && json['slug'] is String &&
      json.containsKey('website') && json['website'] is String; } 
UrlscannerGetScanResponseResultScanMetaProcessorsTech copyWith({List<UrlscannerGetScanResponseResultScanMetaProcessorsTechCategories>? categories, int? confidence, String Function()? description, UrlscannerGetScanResponseResultScanMetaProcessorsTechEvidence? evidence, String? icon, String? name, String? slug, String? website, }) { return UrlscannerGetScanResponseResultScanMetaProcessorsTech(
  categories: categories ?? this.categories,
  confidence: confidence ?? this.confidence,
  description: description != null ? description() : this.description,
  evidence: evidence ?? this.evidence,
  icon: icon ?? this.icon,
  name: name ?? this.name,
  slug: slug ?? this.slug,
  website: website ?? this.website,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerGetScanResponseResultScanMetaProcessorsTech &&
          listEquals(categories, other.categories) &&
          confidence == other.confidence &&
          description == other.description &&
          evidence == other.evidence &&
          icon == other.icon &&
          name == other.name &&
          slug == other.slug &&
          website == other.website; } 
@override int get hashCode { return Object.hash(Object.hashAll(categories), confidence, description, evidence, icon, name, slug, website); } 
@override String toString() { return 'UrlscannerGetScanResponseResultScanMetaProcessorsTech(categories: $categories, confidence: $confidence, description: $description, evidence: $evidence, icon: $icon, name: $name, slug: $slug, website: $website)'; } 
 }
