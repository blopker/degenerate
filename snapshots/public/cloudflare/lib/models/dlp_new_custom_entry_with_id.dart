// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dlp_pattern.dart';final class DlpNewCustomEntryWithId {const DlpNewCustomEntryWithId({this.description, required this.enabled, required this.name, required this.pattern, required this.entryId, });

factory DlpNewCustomEntryWithId.fromJson(Map<String, dynamic> json) { return DlpNewCustomEntryWithId(
  description: json['description'] as String?,
  enabled: json['enabled'] as bool,
  name: json['name'] as String,
  pattern: DlpPattern.fromJson(json['pattern'] as Map<String, dynamic>),
  entryId: json['entry_id'] as String,
); }

final String? description;

final bool enabled;

final String name;

final DlpPattern pattern;

final String entryId;

Map<String, dynamic> toJson() { return {
  'description': ?description,
  'enabled': enabled,
  'name': name,
  'pattern': pattern.toJson(),
  'entry_id': entryId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('pattern') &&
      json.containsKey('entry_id') && json['entry_id'] is String; } 
DlpNewCustomEntryWithId copyWith({String? Function()? description, bool? enabled, String? name, DlpPattern? pattern, String? entryId, }) { return DlpNewCustomEntryWithId(
  description: description != null ? description() : this.description,
  enabled: enabled ?? this.enabled,
  name: name ?? this.name,
  pattern: pattern ?? this.pattern,
  entryId: entryId ?? this.entryId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpNewCustomEntryWithId &&
          description == other.description &&
          enabled == other.enabled &&
          name == other.name &&
          pattern == other.pattern &&
          entryId == other.entryId; } 
@override int get hashCode { return Object.hash(description, enabled, name, pattern, entryId); } 
@override String toString() { return 'DlpNewCustomEntryWithId(description: $description, enabled: $enabled, name: $name, pattern: $pattern, entryId: $entryId)'; } 
 }
