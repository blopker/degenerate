// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dlp_pattern.dart';@immutable final class DlpEntryUpdateTypeVariant1Type {const DlpEntryUpdateTypeVariant1Type._(this.value);

factory DlpEntryUpdateTypeVariant1Type.fromJson(String json) { return switch (json) {
  'custom' => custom,
  _ => DlpEntryUpdateTypeVariant1Type._(json),
}; }

static const DlpEntryUpdateTypeVariant1Type custom = DlpEntryUpdateTypeVariant1Type._('custom');

static const List<DlpEntryUpdateTypeVariant1Type> values = [custom];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DlpEntryUpdateTypeVariant1Type && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DlpEntryUpdateTypeVariant1Type($value)'; } 
 }
@immutable final class DlpEntryUpdateTypeVariant1 {const DlpEntryUpdateTypeVariant1({required this.name, required this.pattern, required this.type, this.description, });

factory DlpEntryUpdateTypeVariant1.fromJson(Map<String, dynamic> json) { return DlpEntryUpdateTypeVariant1(
  description: json['description'] as String?,
  name: json['name'] as String,
  pattern: DlpPattern.fromJson(json['pattern'] as Map<String, dynamic>),
  type: DlpEntryUpdateTypeVariant1Type.fromJson(json['type'] as String),
); }

final String? description;

final String name;

final DlpPattern pattern;

final DlpEntryUpdateTypeVariant1Type type;

Map<String, dynamic> toJson() { return {
  'description': ?description,
  'name': name,
  'pattern': pattern.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String &&
      json.containsKey('pattern') &&
      json.containsKey('type'); } 
DlpEntryUpdateTypeVariant1 copyWith({String? Function()? description, String? name, DlpPattern? pattern, DlpEntryUpdateTypeVariant1Type? type, }) { return DlpEntryUpdateTypeVariant1(
  description: description != null ? description() : this.description,
  name: name ?? this.name,
  pattern: pattern ?? this.pattern,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpEntryUpdateTypeVariant1 &&
          description == other.description &&
          name == other.name &&
          pattern == other.pattern &&
          type == other.type; } 
@override int get hashCode { return Object.hash(description, name, pattern, type); } 
@override String toString() { return 'DlpEntryUpdateTypeVariant1(description: $description, name: $name, pattern: $pattern, type: $type)'; } 
 }
