// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DlpDocumentFingerprintEntry {const DlpDocumentFingerprintEntry({required this.createdAt, required this.enabled, required this.id, required this.name, required this.updatedAt, });

factory DlpDocumentFingerprintEntry.fromJson(Map<String, dynamic> json) { return DlpDocumentFingerprintEntry(
  createdAt: DateTime.parse(json['created_at'] as String),
  enabled: json['enabled'] as bool,
  id: json['id'] as String,
  name: json['name'] as String,
  updatedAt: DateTime.parse(json['updated_at'] as String),
); }

final DateTime createdAt;

final bool enabled;

final String id;

final String name;

final DateTime updatedAt;

Map<String, dynamic> toJson() { return {
  'created_at': createdAt.toIso8601String(),
  'enabled': enabled,
  'id': id,
  'name': name,
  'updated_at': updatedAt.toIso8601String(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('enabled') && json['enabled'] is bool &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('updated_at') && json['updated_at'] is String; } 
DlpDocumentFingerprintEntry copyWith({DateTime? createdAt, bool? enabled, String? id, String? name, DateTime? updatedAt, }) { return DlpDocumentFingerprintEntry(
  createdAt: createdAt ?? this.createdAt,
  enabled: enabled ?? this.enabled,
  id: id ?? this.id,
  name: name ?? this.name,
  updatedAt: updatedAt ?? this.updatedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpDocumentFingerprintEntry &&
          createdAt == other.createdAt &&
          enabled == other.enabled &&
          id == other.id &&
          name == other.name &&
          updatedAt == other.updatedAt; } 
@override int get hashCode { return Object.hash(createdAt, enabled, id, name, updatedAt); } 
@override String toString() { return 'DlpDocumentFingerprintEntry(createdAt: $createdAt, enabled: $enabled, id: $id, name: $name, updatedAt: $updatedAt)'; } 
 }
