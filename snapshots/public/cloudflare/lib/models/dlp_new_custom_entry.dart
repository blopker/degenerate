// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dlp_pattern.dart';final class DlpNewCustomEntry {const DlpNewCustomEntry({this.description, required this.enabled, required this.name, required this.pattern, });

factory DlpNewCustomEntry.fromJson(Map<String, dynamic> json) { return DlpNewCustomEntry(
  description: json['description'] as String?,
  enabled: json['enabled'] as bool,
  name: json['name'] as String,
  pattern: DlpPattern.fromJson(json['pattern'] as Map<String, dynamic>),
); }

final String? description;

final bool enabled;

final String name;

final DlpPattern pattern;

Map<String, dynamic> toJson() { return {
  'description': ?description,
  'enabled': enabled,
  'name': name,
  'pattern': pattern.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('pattern'); } 
DlpNewCustomEntry copyWith({String? Function()? description, bool? enabled, String? name, DlpPattern? pattern, }) { return DlpNewCustomEntry(
  description: description != null ? description() : this.description,
  enabled: enabled ?? this.enabled,
  name: name ?? this.name,
  pattern: pattern ?? this.pattern,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpNewCustomEntry &&
          description == other.description &&
          enabled == other.enabled &&
          name == other.name &&
          pattern == other.pattern; } 
@override int get hashCode { return Object.hash(description, enabled, name, pattern); } 
@override String toString() { return 'DlpNewCustomEntry(description: $description, enabled: $enabled, name: $name, pattern: $pattern)'; } 
 }
