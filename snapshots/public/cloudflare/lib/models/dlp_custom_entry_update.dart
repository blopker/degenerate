// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dlp_pattern.dart';final class DlpCustomEntryUpdate {const DlpCustomEntryUpdate({this.description, required this.name, required this.pattern, required this.enabled, });

factory DlpCustomEntryUpdate.fromJson(Map<String, dynamic> json) { return DlpCustomEntryUpdate(
  description: json['description'] as String?,
  name: json['name'] as String,
  pattern: DlpPattern.fromJson(json['pattern'] as Map<String, dynamic>),
  enabled: json['enabled'] as bool,
); }

final String? description;

final String name;

final DlpPattern pattern;

final bool enabled;

Map<String, dynamic> toJson() { return {
  'description': ?description,
  'name': name,
  'pattern': pattern.toJson(),
  'enabled': enabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String &&
      json.containsKey('pattern') &&
      json.containsKey('enabled') && json['enabled'] is bool; } 
DlpCustomEntryUpdate copyWith({String? Function()? description, String? name, DlpPattern? pattern, bool? enabled, }) { return DlpCustomEntryUpdate(
  description: description != null ? description() : this.description,
  name: name ?? this.name,
  pattern: pattern ?? this.pattern,
  enabled: enabled ?? this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpCustomEntryUpdate &&
          description == other.description &&
          name == other.name &&
          pattern == other.pattern &&
          enabled == other.enabled; } 
@override int get hashCode { return Object.hash(description, name, pattern, enabled); } 
@override String toString() { return 'DlpCustomEntryUpdate(description: $description, name: $name, pattern: $pattern, enabled: $enabled)'; } 
 }
