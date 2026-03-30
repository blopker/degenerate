// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'custom_entry.dart';import 'dlp_confidence.dart';import 'dlp_context_awareness.dart';import 'dlp_entry.dart';import 'document_fingerprint_entry.dart';import 'exact_data_entry.dart';import 'integration_entry.dart';import 'predefined_entry.dart';import 'word_list_entry.dart';final class PredefinedProfileType {const PredefinedProfileType._(this.value);

factory PredefinedProfileType.fromJson(String json) { return switch (json) {
  'predefined' => predefined,
  _ => PredefinedProfileType._(json),
}; }

static const PredefinedProfileType predefined = PredefinedProfileType._('predefined');

static const List<PredefinedProfileType> values = [predefined];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PredefinedProfileType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PredefinedProfileType($value)'; } 
 }
final class PredefinedProfile {const PredefinedProfile({this.aiContextEnabled = false, required this.allowedMatchCount, this.confidenceThreshold = DlpConfidence.low, this.contextAwareness, required this.entries, required this.id, required this.name, this.ocrEnabled = false, this.openAccess, required this.type, });

factory PredefinedProfile.fromJson(Map<String, dynamic> json) { return PredefinedProfile(
  aiContextEnabled: json.containsKey('ai_context_enabled') ? json['ai_context_enabled'] as bool : false,
  allowedMatchCount: (json['allowed_match_count'] as num).toInt(),
  confidenceThreshold: json.containsKey('confidence_threshold') ? DlpConfidence.fromJson(json['confidence_threshold'] as String) : DlpConfidence.low,
  contextAwareness: json['context_awareness'] != null ? DlpContextAwareness.fromJson(json['context_awareness'] as Map<String, dynamic>) : null,
  entries: (json['entries'] as List<dynamic>).map((e) => OneOf6.parse(e, fromA: (v) => CustomEntry.fromJson(v as Map<String, dynamic>), fromB: (v) => PredefinedEntry.fromJson(v as Map<String, dynamic>), fromC: (v) => IntegrationEntry.fromJson(v as Map<String, dynamic>), fromD: (v) => ExactDataEntry.fromJson(v as Map<String, dynamic>), fromE: (v) => DocumentFingerprintEntry.fromJson(v as Map<String, dynamic>), fromF: (v) => WordListEntry.fromJson(v as Map<String, dynamic>),)).toList(),
  id: json['id'] as String,
  name: json['name'] as String,
  ocrEnabled: json.containsKey('ocr_enabled') ? json['ocr_enabled'] as bool : false,
  openAccess: json['open_access'] as bool?,
  type: PredefinedProfileType.fromJson(json['type'] as String),
); }

final bool aiContextEnabled;

final int allowedMatchCount;

final DlpConfidence confidenceThreshold;

final DlpContextAwareness? contextAwareness;

final List<DlpEntry> entries;

/// The id of the predefined profile (uuid).
final String id;

/// The name of the predefined profile.
final String name;

final bool ocrEnabled;

/// Whether this profile can be accessed by anyone.
final bool? openAccess;

final PredefinedProfileType type;

Map<String, dynamic> toJson() { return {
  'ai_context_enabled': aiContextEnabled,
  'allowed_match_count': allowedMatchCount,
  'confidence_threshold': confidenceThreshold.toJson(),
  if (contextAwareness != null) 'context_awareness': contextAwareness?.toJson(),
  'entries': entries.map((e) => e.toJson()).toList(),
  'id': id,
  'name': name,
  'ocr_enabled': ocrEnabled,
  'open_access': ?openAccess,
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('allowed_match_count') && json['allowed_match_count'] is num &&
      json.containsKey('entries') &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('type'); } 
PredefinedProfile copyWith({bool Function()? aiContextEnabled, int? allowedMatchCount, DlpConfidence Function()? confidenceThreshold, DlpContextAwareness Function()? contextAwareness, List<DlpEntry>? entries, String? id, String? name, bool Function()? ocrEnabled, bool Function()? openAccess, PredefinedProfileType? type, }) { return PredefinedProfile(
  aiContextEnabled: aiContextEnabled != null ? aiContextEnabled() : this.aiContextEnabled,
  allowedMatchCount: allowedMatchCount ?? this.allowedMatchCount,
  confidenceThreshold: confidenceThreshold != null ? confidenceThreshold() : this.confidenceThreshold,
  contextAwareness: contextAwareness != null ? contextAwareness() : this.contextAwareness,
  entries: entries ?? this.entries,
  id: id ?? this.id,
  name: name ?? this.name,
  ocrEnabled: ocrEnabled != null ? ocrEnabled() : this.ocrEnabled,
  openAccess: openAccess != null ? openAccess() : this.openAccess,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PredefinedProfile &&
          aiContextEnabled == other.aiContextEnabled &&
          allowedMatchCount == other.allowedMatchCount &&
          confidenceThreshold == other.confidenceThreshold &&
          contextAwareness == other.contextAwareness &&
          listEquals(entries, other.entries) &&
          id == other.id &&
          name == other.name &&
          ocrEnabled == other.ocrEnabled &&
          openAccess == other.openAccess &&
          type == other.type; } 
@override int get hashCode { return Object.hash(aiContextEnabled, allowedMatchCount, confidenceThreshold, contextAwareness, Object.hashAll(entries), id, name, ocrEnabled, openAccess, type); } 
@override String toString() { return 'PredefinedProfile(aiContextEnabled: $aiContextEnabled, allowedMatchCount: $allowedMatchCount, confidenceThreshold: $confidenceThreshold, contextAwareness: $contextAwareness, entries: $entries, id: $id, name: $name, ocrEnabled: $ocrEnabled, openAccess: $openAccess, type: $type)'; } 
 }
