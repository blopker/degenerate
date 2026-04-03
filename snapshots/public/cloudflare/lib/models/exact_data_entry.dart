// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ExactDataEntryType {const ExactDataEntryType._(this.value);

factory ExactDataEntryType.fromJson(String json) { return switch (json) {
  'exact_data' => exactData,
  _ => ExactDataEntryType._(json),
}; }

static const ExactDataEntryType exactData = ExactDataEntryType._('exact_data');

static const List<ExactDataEntryType> values = [exactData];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ExactDataEntryType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ExactDataEntryType($value)'; } 
 }
@immutable final class ExactDataEntry {const ExactDataEntry({required this.caseSensitive, required this.createdAt, required this.enabled, required this.id, required this.name, required this.secret, required this.updatedAt, required this.type, });

factory ExactDataEntry.fromJson(Map<String, dynamic> json) { return ExactDataEntry(
  caseSensitive: json['case_sensitive'] as bool,
  createdAt: DateTime.parse(json['created_at'] as String),
  enabled: json['enabled'] as bool,
  id: json['id'] as String,
  name: json['name'] as String,
  secret: json['secret'] as bool,
  updatedAt: DateTime.parse(json['updated_at'] as String),
  type: ExactDataEntryType.fromJson(json['type'] as String),
); }

/// Only applies to custom word lists.
/// Determines if the words should be matched in a case-sensitive manner
/// Cannot be set to false if secret is true
final bool caseSensitive;

final DateTime createdAt;

final bool enabled;

final String id;

final String name;

final bool secret;

final DateTime updatedAt;

final ExactDataEntryType type;

Map<String, dynamic> toJson() { return {
  'case_sensitive': caseSensitive,
  'created_at': createdAt.toIso8601String(),
  'enabled': enabled,
  'id': id,
  'name': name,
  'secret': secret,
  'updated_at': updatedAt.toIso8601String(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('case_sensitive') && json['case_sensitive'] is bool &&
      json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('enabled') && json['enabled'] is bool &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('secret') && json['secret'] is bool &&
      json.containsKey('updated_at') && json['updated_at'] is String &&
      json.containsKey('type'); } 
ExactDataEntry copyWith({bool? caseSensitive, DateTime? createdAt, bool? enabled, String? id, String? name, bool? secret, DateTime? updatedAt, ExactDataEntryType? type, }) { return ExactDataEntry(
  caseSensitive: caseSensitive ?? this.caseSensitive,
  createdAt: createdAt ?? this.createdAt,
  enabled: enabled ?? this.enabled,
  id: id ?? this.id,
  name: name ?? this.name,
  secret: secret ?? this.secret,
  updatedAt: updatedAt ?? this.updatedAt,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ExactDataEntry &&
          caseSensitive == other.caseSensitive &&
          createdAt == other.createdAt &&
          enabled == other.enabled &&
          id == other.id &&
          name == other.name &&
          secret == other.secret &&
          updatedAt == other.updatedAt &&
          type == other.type; } 
@override int get hashCode { return Object.hash(caseSensitive, createdAt, enabled, id, name, secret, updatedAt, type); } 
@override String toString() { return 'ExactDataEntry(caseSensitive: $caseSensitive, createdAt: $createdAt, enabled: $enabled, id: $id, name: $name, secret: $secret, updatedAt: $updatedAt, type: $type)'; } 
 }
