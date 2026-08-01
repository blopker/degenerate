// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dlp_context_awareness.dart';import 'dlp_new_custom_entry.dart';import 'dlp_new_custom_entry_with_id.dart';import 'dlp_profile_entry_update.dart';import 'dlp_shared_entry_update.dart';@immutable final class DlpCustomProfileUpdate {const DlpCustomProfileUpdate({required this.name, this.aiContextEnabled = false, this.allowedMatchCount = const Omittable.absent(), this.confidenceThreshold = 'low', this.contextAwareness, this.dataClasses = const Omittable.absent(), this.dataTags = const Omittable.absent(), this.description = const Omittable.absent(), this.entries = const Omittable.absent(), this.ocrEnabled = false, this.sensitivityLevels = const Omittable.absent(), this.sharedEntries, });

factory DlpCustomProfileUpdate.fromJson(Map<String, dynamic> json) { return DlpCustomProfileUpdate(
  aiContextEnabled: json.containsKey('ai_context_enabled') ? json['ai_context_enabled'] as bool : false,
  allowedMatchCount: json.containsKey('allowed_match_count') ? Omittable(json['allowed_match_count'] != null ? (json['allowed_match_count'] as num).toInt() : null) : const Omittable.absent(),
  confidenceThreshold: json.containsKey('confidence_threshold') ? json['confidence_threshold'] as String? : 'low',
  contextAwareness: json['context_awareness'] != null ? DlpContextAwareness.fromJson(json['context_awareness'] as Map<String, dynamic>) : null,
  dataClasses: json.containsKey('data_classes') ? Omittable((json['data_classes'] as List<dynamic>?)?.map((e) => e as String).toList()) : const Omittable.absent(),
  dataTags: json.containsKey('data_tags') ? Omittable((json['data_tags'] as List<dynamic>?)?.map((e) => e as String).toList()) : const Omittable.absent(),
  description: json.containsKey('description') ? Omittable(json['description'] as String?) : const Omittable.absent(),
  entries: json.containsKey('entries') ? Omittable((json['entries'] as List<dynamic>?)?.map((e) => OneOf2.parse(e, fromA: (v) => DlpNewCustomEntryWithId.fromJson(v as Map<String, dynamic>), fromB: (v) => DlpNewCustomEntry.fromJson(v as Map<String, dynamic>),)).toList()) : const Omittable.absent(),
  name: json['name'] as String,
  ocrEnabled: json.containsKey('ocr_enabled') ? json['ocr_enabled'] as bool : false,
  sensitivityLevels: json.containsKey('sensitivity_levels') ? Omittable((json['sensitivity_levels'] as List<dynamic>?)?.map((e) => (e as List<dynamic>).map((e) => e as String).toList()).toList()) : const Omittable.absent(),
  sharedEntries: (json['shared_entries'] as List<dynamic>?)?.map((e) => DlpSharedEntryUpdate.fromJson(e as Map<String, dynamic>)).toList(),
); }

final bool aiContextEnabled;

final Omittable<int?> allowedMatchCount;

final String? confidenceThreshold;

final DlpContextAwareness? contextAwareness;

/// Data class IDs to associate with the profile. If omitted, existing associations are unchanged.
final Omittable<List<String>?> dataClasses;

/// Data tag IDs to associate with the profile. If omitted, existing associations are unchanged.
final Omittable<List<String>?> dataTags;

/// The description of the profile.
final Omittable<String?> description;

/// Custom entries from this profile.
/// If this field is omitted, entries owned by this profile will not be changed.
final Omittable<List<DlpProfileEntryUpdate>?> entries;

final String name;

final bool ocrEnabled;

/// Sensitivity levels to associate with the profile. If omitted, existing associations are unchanged.
final Omittable<List<List<String>>?> sensitivityLevels;

/// Other entries, e.g. predefined or integration.
final List<DlpSharedEntryUpdate>? sharedEntries;

Map<String, dynamic> toJson() { return {
  'ai_context_enabled': aiContextEnabled,
  if (allowedMatchCount.isPresent) 'allowed_match_count': allowedMatchCount.value,
  'confidence_threshold': ?confidenceThreshold,
  if (contextAwareness != null) 'context_awareness': contextAwareness?.toJson(),
  if (dataClasses.isPresent) 'data_classes': dataClasses.value,
  if (dataTags.isPresent) 'data_tags': dataTags.value,
  if (description.isPresent) 'description': description.value,
  if (entries.isPresent) 'entries': entries.value?.map((e) => e.toJson()).toList(),
  'name': name,
  'ocr_enabled': ocrEnabled,
  if (sensitivityLevels.isPresent) 'sensitivity_levels': sensitivityLevels.value?.map((e) => e).toList(),
  if (sharedEntries != null) 'shared_entries': sharedEntries?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String; } 
DlpCustomProfileUpdate copyWith({bool Function()? aiContextEnabled, Omittable<int?>? allowedMatchCount, String? Function()? confidenceThreshold, DlpContextAwareness? Function()? contextAwareness, Omittable<List<String>?>? dataClasses, Omittable<List<String>?>? dataTags, Omittable<String?>? description, Omittable<List<DlpProfileEntryUpdate>?>? entries, String? name, bool Function()? ocrEnabled, Omittable<List<List<String>>?>? sensitivityLevels, List<DlpSharedEntryUpdate>? Function()? sharedEntries, }) { return DlpCustomProfileUpdate(
  aiContextEnabled: aiContextEnabled != null ? aiContextEnabled() : this.aiContextEnabled,
  allowedMatchCount: allowedMatchCount ?? this.allowedMatchCount,
  confidenceThreshold: confidenceThreshold != null ? confidenceThreshold() : this.confidenceThreshold,
  contextAwareness: contextAwareness != null ? contextAwareness() : this.contextAwareness,
  dataClasses: dataClasses ?? this.dataClasses,
  dataTags: dataTags ?? this.dataTags,
  description: description ?? this.description,
  entries: entries ?? this.entries,
  name: name ?? this.name,
  ocrEnabled: ocrEnabled != null ? ocrEnabled() : this.ocrEnabled,
  sensitivityLevels: sensitivityLevels ?? this.sensitivityLevels,
  sharedEntries: sharedEntries != null ? sharedEntries() : this.sharedEntries,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpCustomProfileUpdate &&
          aiContextEnabled == other.aiContextEnabled &&
          allowedMatchCount == other.allowedMatchCount &&
          confidenceThreshold == other.confidenceThreshold &&
          contextAwareness == other.contextAwareness &&
          dataClasses.isPresent == other.dataClasses.isPresent &&
          listEquals(dataClasses.value, other.dataClasses.value) &&
          dataTags.isPresent == other.dataTags.isPresent &&
          listEquals(dataTags.value, other.dataTags.value) &&
          description == other.description &&
          entries.isPresent == other.entries.isPresent &&
          listEquals(entries.value, other.entries.value) &&
          name == other.name &&
          ocrEnabled == other.ocrEnabled &&
          sensitivityLevels.isPresent == other.sensitivityLevels.isPresent &&
          listEquals(sensitivityLevels.value, other.sensitivityLevels.value) &&
          listEquals(sharedEntries, other.sharedEntries); } 
@override int get hashCode { return Object.hash(aiContextEnabled, allowedMatchCount, confidenceThreshold, contextAwareness, Object.hashAll(dataClasses.value ?? const []), Object.hashAll(dataTags.value ?? const []), description, Object.hashAll(entries.value ?? const []), name, ocrEnabled, Object.hashAll(sensitivityLevels.value ?? const []), Object.hashAll(sharedEntries ?? const [])); } 
@override String toString() { return 'DlpCustomProfileUpdate(aiContextEnabled: $aiContextEnabled, allowedMatchCount: $allowedMatchCount, confidenceThreshold: $confidenceThreshold, contextAwareness: $contextAwareness, dataClasses: $dataClasses, dataTags: $dataTags, description: $description, entries: $entries, name: $name, ocrEnabled: $ocrEnabled, sensitivityLevels: $sensitivityLevels, sharedEntries: $sharedEntries)'; } 
 }
