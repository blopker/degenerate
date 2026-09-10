// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dlp_pattern.dart';@immutable final class DlpCustomEntryUpdateType {const DlpCustomEntryUpdateType({required this.name, required this.pattern, this.description = const Omittable.absent(), });

factory DlpCustomEntryUpdateType.fromJson(Map<String, dynamic> json) { return DlpCustomEntryUpdateType(
  description: json.containsKey('description') ? Omittable(json['description'] as String?) : const Omittable.absent(),
  name: json['name'] as String,
  pattern: DlpPattern.fromJson(json['pattern'] as Map<String, dynamic>),
); }

final Omittable<String?> description;

final String name;

final DlpPattern pattern;

Map<String, dynamic> toJson() { return {
  if (description.isPresent) 'description': description.value,
  'name': name,
  'pattern': pattern.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String &&
      json.containsKey('pattern'); } 
DlpCustomEntryUpdateType copyWith({Omittable<String?>? description, String? name, DlpPattern? pattern, }) { return DlpCustomEntryUpdateType(
  description: description ?? this.description,
  name: name ?? this.name,
  pattern: pattern ?? this.pattern,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpCustomEntryUpdateType &&
          description == other.description &&
          name == other.name &&
          pattern == other.pattern; } 
@override int get hashCode { return Object.hash(description, name, pattern); } 
@override String toString() { return 'DlpCustomEntryUpdateType(description: $description, name: $name, pattern: $pattern)'; } 
 }
