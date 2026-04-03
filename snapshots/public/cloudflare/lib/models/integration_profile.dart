// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'custom_entry.dart';import 'dlp_entry.dart';import 'document_fingerprint_entry.dart';import 'exact_data_entry.dart';import 'integration_entry.dart';import 'predefined_entry.dart';import 'word_list_entry.dart';@immutable final class IntegrationProfileType {const IntegrationProfileType._(this.value);

factory IntegrationProfileType.fromJson(String json) { return switch (json) {
  'integration' => integration,
  _ => IntegrationProfileType._(json),
}; }

static const IntegrationProfileType integration = IntegrationProfileType._('integration');

static const List<IntegrationProfileType> values = [integration];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IntegrationProfileType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IntegrationProfileType($value)'; } 
 }
@immutable final class IntegrationProfile {const IntegrationProfile({required this.createdAt, required this.entries, required this.id, required this.name, required this.sharedEntries, required this.updatedAt, required this.type, this.description, });

factory IntegrationProfile.fromJson(Map<String, dynamic> json) { return IntegrationProfile(
  createdAt: DateTime.parse(json['created_at'] as String),
  description: json['description'] as String?,
  entries: (json['entries'] as List<dynamic>).map((e) => OneOf6.parse(e, fromA: (v) => CustomEntry.fromJson(v as Map<String, dynamic>), fromB: (v) => PredefinedEntry.fromJson(v as Map<String, dynamic>), fromC: (v) => IntegrationEntry.fromJson(v as Map<String, dynamic>), fromD: (v) => ExactDataEntry.fromJson(v as Map<String, dynamic>), fromE: (v) => DocumentFingerprintEntry.fromJson(v as Map<String, dynamic>), fromF: (v) => WordListEntry.fromJson(v as Map<String, dynamic>),)).toList(),
  id: json['id'] as String,
  name: json['name'] as String,
  sharedEntries: (json['shared_entries'] as List<dynamic>).map((e) => OneOf6.parse(e, fromA: (v) => CustomEntry.fromJson(v as Map<String, dynamic>), fromB: (v) => PredefinedEntry.fromJson(v as Map<String, dynamic>), fromC: (v) => IntegrationEntry.fromJson(v as Map<String, dynamic>), fromD: (v) => ExactDataEntry.fromJson(v as Map<String, dynamic>), fromE: (v) => DocumentFingerprintEntry.fromJson(v as Map<String, dynamic>), fromF: (v) => WordListEntry.fromJson(v as Map<String, dynamic>),)).toList(),
  updatedAt: DateTime.parse(json['updated_at'] as String),
  type: IntegrationProfileType.fromJson(json['type'] as String),
); }

final DateTime createdAt;

/// The description of the profile.
final String? description;

final List<DlpEntry> entries;

final String id;

final String name;

final List<DlpEntry> sharedEntries;

final DateTime updatedAt;

final IntegrationProfileType type;

Map<String, dynamic> toJson() { return {
  'created_at': createdAt.toIso8601String(),
  'description': ?description,
  'entries': entries.map((e) => e.toJson()).toList(),
  'id': id,
  'name': name,
  'shared_entries': sharedEntries.map((e) => e.toJson()).toList(),
  'updated_at': updatedAt.toIso8601String(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('entries') &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('shared_entries') &&
      json.containsKey('updated_at') && json['updated_at'] is String &&
      json.containsKey('type'); } 
IntegrationProfile copyWith({DateTime? createdAt, String? Function()? description, List<DlpEntry>? entries, String? id, String? name, List<DlpEntry>? sharedEntries, DateTime? updatedAt, IntegrationProfileType? type, }) { return IntegrationProfile(
  createdAt: createdAt ?? this.createdAt,
  description: description != null ? description() : this.description,
  entries: entries ?? this.entries,
  id: id ?? this.id,
  name: name ?? this.name,
  sharedEntries: sharedEntries ?? this.sharedEntries,
  updatedAt: updatedAt ?? this.updatedAt,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IntegrationProfile &&
          createdAt == other.createdAt &&
          description == other.description &&
          listEquals(entries, other.entries) &&
          id == other.id &&
          name == other.name &&
          listEquals(sharedEntries, other.sharedEntries) &&
          updatedAt == other.updatedAt &&
          type == other.type; } 
@override int get hashCode { return Object.hash(createdAt, description, Object.hashAll(entries), id, name, Object.hashAll(sharedEntries), updatedAt, type); } 
@override String toString() { return 'IntegrationProfile(createdAt: $createdAt, description: $description, entries: $entries, id: $id, name: $name, sharedEntries: $sharedEntries, updatedAt: $updatedAt, type: $type)'; } 
 }
