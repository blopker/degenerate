// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DocumentFingerprintEntryType {const DocumentFingerprintEntryType._(this.value);

factory DocumentFingerprintEntryType.fromJson(String json) { return switch (json) {
  'document_fingerprint' => documentFingerprint,
  _ => DocumentFingerprintEntryType._(json),
}; }

static const DocumentFingerprintEntryType documentFingerprint = DocumentFingerprintEntryType._('document_fingerprint');

static const List<DocumentFingerprintEntryType> values = [documentFingerprint];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DocumentFingerprintEntryType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DocumentFingerprintEntryType($value)'; } 
 }
@immutable final class DocumentFingerprintEntry {const DocumentFingerprintEntry({required this.createdAt, required this.enabled, required this.id, required this.name, required this.updatedAt, required this.type, });

factory DocumentFingerprintEntry.fromJson(Map<String, dynamic> json) { return DocumentFingerprintEntry(
  createdAt: DateTime.parse(json['created_at'] as String),
  enabled: json['enabled'] as bool,
  id: json['id'] as String,
  name: json['name'] as String,
  updatedAt: DateTime.parse(json['updated_at'] as String),
  type: DocumentFingerprintEntryType.fromJson(json['type'] as String),
); }

final DateTime createdAt;

final bool enabled;

final String id;

final String name;

final DateTime updatedAt;

final DocumentFingerprintEntryType type;

Map<String, dynamic> toJson() { return {
  'created_at': createdAt.toIso8601String(),
  'enabled': enabled,
  'id': id,
  'name': name,
  'updated_at': updatedAt.toIso8601String(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('enabled') && json['enabled'] is bool &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('updated_at') && json['updated_at'] is String &&
      json.containsKey('type'); } 
DocumentFingerprintEntry copyWith({DateTime? createdAt, bool? enabled, String? id, String? name, DateTime? updatedAt, DocumentFingerprintEntryType? type, }) { return DocumentFingerprintEntry(
  createdAt: createdAt ?? this.createdAt,
  enabled: enabled ?? this.enabled,
  id: id ?? this.id,
  name: name ?? this.name,
  updatedAt: updatedAt ?? this.updatedAt,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DocumentFingerprintEntry &&
          createdAt == other.createdAt &&
          enabled == other.enabled &&
          id == other.id &&
          name == other.name &&
          updatedAt == other.updatedAt &&
          type == other.type; } 
@override int get hashCode { return Object.hash(createdAt, enabled, id, name, updatedAt, type); } 
@override String toString() { return 'DocumentFingerprintEntry(createdAt: $createdAt, enabled: $enabled, id: $id, name: $name, updatedAt: $updatedAt, type: $type)'; } 
 }
