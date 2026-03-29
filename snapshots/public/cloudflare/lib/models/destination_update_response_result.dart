// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'destination_update_response_result_configuration.dart';final class DestinationUpdateResponseResult {const DestinationUpdateResponseResult({required this.configuration, required this.enabled, required this.name, required this.scripts, required this.slug, });

factory DestinationUpdateResponseResult.fromJson(Map<String, dynamic> json) { return DestinationUpdateResponseResult(
  configuration: DestinationUpdateResponseResultConfiguration.fromJson(json['configuration'] as Map<String, dynamic>),
  enabled: json['enabled'] as bool,
  name: json['name'] as String,
  scripts: (json['scripts'] as List<dynamic>).map((e) => e as String).toList(),
  slug: json['slug'] as String,
); }

final DestinationUpdateResponseResultConfiguration configuration;

final bool enabled;

final String name;

final List<String> scripts;

final String slug;

Map<String, dynamic> toJson() { return {
  'configuration': configuration.toJson(),
  'enabled': enabled,
  'name': name,
  'scripts': scripts,
  'slug': slug,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('configuration') &&
      json.containsKey('enabled') && json['enabled'] is bool &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('scripts') &&
      json.containsKey('slug') && json['slug'] is String; } 
DestinationUpdateResponseResult copyWith({DestinationUpdateResponseResultConfiguration? configuration, bool? enabled, String? name, List<String>? scripts, String? slug, }) { return DestinationUpdateResponseResult(
  configuration: configuration ?? this.configuration,
  enabled: enabled ?? this.enabled,
  name: name ?? this.name,
  scripts: scripts ?? this.scripts,
  slug: slug ?? this.slug,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DestinationUpdateResponseResult &&
          configuration == other.configuration &&
          enabled == other.enabled &&
          name == other.name &&
          listEquals(scripts, other.scripts) &&
          slug == other.slug; } 
@override int get hashCode { return Object.hash(configuration, enabled, name, Object.hashAll(scripts), slug); } 
@override String toString() { return 'DestinationUpdateResponseResult(configuration: $configuration, enabled: $enabled, name: $name, scripts: $scripts, slug: $slug)'; } 
 }
