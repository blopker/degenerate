// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'custom_entry.dart';import 'dlp_confidence.dart';import 'dlp_context_awareness.dart';import 'dlp_entry.dart';import 'document_fingerprint_entry.dart';import 'exact_data_entry.dart';import 'integration_entry.dart';import 'predefined_entry.dart';import 'word_list_entry.dart';final class CustomProfileType {const CustomProfileType._(this.value);

factory CustomProfileType.fromJson(String json) { return switch (json) {
  'custom' => custom,
  _ => CustomProfileType._(json),
}; }

static const CustomProfileType custom = CustomProfileType._('custom');

static const List<CustomProfileType> values = [custom];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CustomProfileType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CustomProfileType($value)'; } 
 }
final class CustomProfile {const CustomProfile({this.aiContextEnabled = false, this.allowedMatchCount = 0, this.confidenceThreshold = DlpConfidence.low, this.contextAwareness, required this.createdAt, this.dataClasses, this.dataTags, this.description, this.entries, required this.id, required this.name, this.ocrEnabled = false, this.sensitivityLevels, this.sharedEntries, required this.updatedAt, required this.type, });

factory CustomProfile.fromJson(Map<String, dynamic> json) { return CustomProfile(
  aiContextEnabled: json.containsKey('ai_context_enabled') ? json['ai_context_enabled'] as bool : false,
  allowedMatchCount: (json['allowed_match_count'] as num).toInt(),
  confidenceThreshold: json.containsKey('confidence_threshold') ? DlpConfidence.fromJson(json['confidence_threshold'] as String) : DlpConfidence.low,
  contextAwareness: json['context_awareness'] != null ? DlpContextAwareness.fromJson(json['context_awareness'] as Map<String, dynamic>) : null,
  createdAt: DateTime.parse(json['created_at'] as String),
  dataClasses: (json['data_classes'] as List<dynamic>?)?.map((e) => e as String).toList(),
  dataTags: (json['data_tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
  description: json['description'] as String?,
  entries: (json['entries'] as List<dynamic>?)?.map((e) => OneOf6.parse(e, fromA: (v) => CustomEntry.fromJson(v as Map<String, dynamic>), fromB: (v) => PredefinedEntry.fromJson(v as Map<String, dynamic>), fromC: (v) => IntegrationEntry.fromJson(v as Map<String, dynamic>), fromD: (v) => ExactDataEntry.fromJson(v as Map<String, dynamic>), fromE: (v) => DocumentFingerprintEntry.fromJson(v as Map<String, dynamic>), fromF: (v) => WordListEntry.fromJson(v as Map<String, dynamic>),)).toList(),
  id: json['id'] as String,
  name: json['name'] as String,
  ocrEnabled: json['ocr_enabled'] as bool,
  sensitivityLevels: (json['sensitivity_levels'] as List<dynamic>?)?.map((e) => (e as List<dynamic>).map((e) => e as String).toList()).toList(),
  sharedEntries: (json['shared_entries'] as List<dynamic>?)?.map((e) => OneOf6.parse(e, fromA: (v) => CustomEntry.fromJson(v as Map<String, dynamic>), fromB: (v) => PredefinedEntry.fromJson(v as Map<String, dynamic>), fromC: (v) => IntegrationEntry.fromJson(v as Map<String, dynamic>), fromD: (v) => ExactDataEntry.fromJson(v as Map<String, dynamic>), fromE: (v) => DocumentFingerprintEntry.fromJson(v as Map<String, dynamic>), fromF: (v) => WordListEntry.fromJson(v as Map<String, dynamic>),)).toList(),
  updatedAt: DateTime.parse(json['updated_at'] as String),
  type: CustomProfileType.fromJson(json['type'] as String),
); }

final bool aiContextEnabled;

/// Related DLP policies will trigger when the match count exceeds the number set.
final int allowedMatchCount;

final DlpConfidence confidenceThreshold;

final DlpContextAwareness? contextAwareness;

/// When the profile was created.
final DateTime createdAt;

/// Data classes associated with this profile.
final List<String>? dataClasses;

/// Data tags associated with this profile.
final List<String>? dataTags;

/// The description of the profile.
final String? description;

final List<DlpEntry>? entries;

/// The id of the profile (uuid).
final String id;

/// The name of the profile.
final String name;

final bool ocrEnabled;

/// Sensitivity levels associated with this profile as (group_id, level_id) tuples.
final List<List<String>>? sensitivityLevels;

final List<DlpEntry>? sharedEntries;

/// When the profile was lasted updated.
final DateTime updatedAt;

final CustomProfileType type;

Map<String, dynamic> toJson() { return {
  'ai_context_enabled': aiContextEnabled,
  'allowed_match_count': allowedMatchCount,
  'confidence_threshold': confidenceThreshold.toJson(),
  if (contextAwareness != null) 'context_awareness': contextAwareness?.toJson(),
  'created_at': createdAt.toIso8601String(),
  'data_classes': ?dataClasses,
  'data_tags': ?dataTags,
  'description': ?description,
  if (entries != null) 'entries': entries?.map((e) => e.toJson()).toList(),
  'id': id,
  'name': name,
  'ocr_enabled': ocrEnabled,
  if (sensitivityLevels != null) 'sensitivity_levels': sensitivityLevels?.map((e) => e).toList(),
  if (sharedEntries != null) 'shared_entries': sharedEntries?.map((e) => e.toJson()).toList(),
  'updated_at': updatedAt.toIso8601String(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('allowed_match_count') && json['allowed_match_count'] is num &&
      json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('ocr_enabled') && json['ocr_enabled'] is bool &&
      json.containsKey('updated_at') && json['updated_at'] is String &&
      json.containsKey('type'); } 
CustomProfile copyWith({bool Function()? aiContextEnabled, int? allowedMatchCount, DlpConfidence Function()? confidenceThreshold, DlpContextAwareness Function()? contextAwareness, DateTime? createdAt, List<String> Function()? dataClasses, List<String> Function()? dataTags, String? Function()? description, List<DlpEntry> Function()? entries, String? id, String? name, bool? ocrEnabled, List<List<String>> Function()? sensitivityLevels, List<DlpEntry> Function()? sharedEntries, DateTime? updatedAt, CustomProfileType? type, }) { return CustomProfile(
  aiContextEnabled: aiContextEnabled != null ? aiContextEnabled() : this.aiContextEnabled,
  allowedMatchCount: allowedMatchCount ?? this.allowedMatchCount,
  confidenceThreshold: confidenceThreshold != null ? confidenceThreshold() : this.confidenceThreshold,
  contextAwareness: contextAwareness != null ? contextAwareness() : this.contextAwareness,
  createdAt: createdAt ?? this.createdAt,
  dataClasses: dataClasses != null ? dataClasses() : this.dataClasses,
  dataTags: dataTags != null ? dataTags() : this.dataTags,
  description: description != null ? description() : this.description,
  entries: entries != null ? entries() : this.entries,
  id: id ?? this.id,
  name: name ?? this.name,
  ocrEnabled: ocrEnabled ?? this.ocrEnabled,
  sensitivityLevels: sensitivityLevels != null ? sensitivityLevels() : this.sensitivityLevels,
  sharedEntries: sharedEntries != null ? sharedEntries() : this.sharedEntries,
  updatedAt: updatedAt ?? this.updatedAt,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CustomProfile &&
          aiContextEnabled == other.aiContextEnabled &&
          allowedMatchCount == other.allowedMatchCount &&
          confidenceThreshold == other.confidenceThreshold &&
          contextAwareness == other.contextAwareness &&
          createdAt == other.createdAt &&
          listEquals(dataClasses, other.dataClasses) &&
          listEquals(dataTags, other.dataTags) &&
          description == other.description &&
          listEquals(entries, other.entries) &&
          id == other.id &&
          name == other.name &&
          ocrEnabled == other.ocrEnabled &&
          listEquals(sensitivityLevels, other.sensitivityLevels) &&
          listEquals(sharedEntries, other.sharedEntries) &&
          updatedAt == other.updatedAt &&
          type == other.type; } 
@override int get hashCode { return Object.hash(aiContextEnabled, allowedMatchCount, confidenceThreshold, contextAwareness, createdAt, Object.hashAll(dataClasses ?? const []), Object.hashAll(dataTags ?? const []), description, Object.hashAll(entries ?? const []), id, name, ocrEnabled, Object.hashAll(sensitivityLevels ?? const []), Object.hashAll(sharedEntries ?? const []), updatedAt, type); } 
@override String toString() { return 'CustomProfile(aiContextEnabled: $aiContextEnabled, allowedMatchCount: $allowedMatchCount, confidenceThreshold: $confidenceThreshold, contextAwareness: $contextAwareness, createdAt: $createdAt, dataClasses: $dataClasses, dataTags: $dataTags, description: $description, entries: $entries, id: $id, name: $name, ocrEnabled: $ocrEnabled, sensitivityLevels: $sensitivityLevels, sharedEntries: $sharedEntries, updatedAt: $updatedAt, type: $type)'; } 
 }
