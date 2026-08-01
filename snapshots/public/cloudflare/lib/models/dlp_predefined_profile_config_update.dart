// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dlp_predefined_profile_entry_update.dart';@immutable final class DlpPredefinedProfileConfigUpdate {const DlpPredefinedProfileConfigUpdate({this.aiContextEnabled = false, this.allowedMatchCount = 0, this.confidenceThreshold = 'low', this.enabledEntries = const Omittable.absent(), this.entries, this.ocrEnabled = false, });

factory DlpPredefinedProfileConfigUpdate.fromJson(Map<String, dynamic> json) { return DlpPredefinedProfileConfigUpdate(
  aiContextEnabled: json.containsKey('ai_context_enabled') ? json['ai_context_enabled'] as bool : false,
  allowedMatchCount: json.containsKey('allowed_match_count') ? json['allowed_match_count'] != null ? (json['allowed_match_count'] as num).toInt() : null : 0,
  confidenceThreshold: json.containsKey('confidence_threshold') ? json['confidence_threshold'] as String? : 'low',
  enabledEntries: json.containsKey('enabled_entries') ? Omittable((json['enabled_entries'] as List<dynamic>?)?.map((e) => e as String).toList()) : const Omittable.absent(),
  entries: (json['entries'] as List<dynamic>?)?.map((e) => DlpPredefinedProfileEntryUpdate.fromJson(e as Map<String, dynamic>)).toList(),
  ocrEnabled: json.containsKey('ocr_enabled') ? json['ocr_enabled'] as bool : false,
); }

final bool aiContextEnabled;

final int? allowedMatchCount;

final String? confidenceThreshold;

final Omittable<List<String>?> enabledEntries;

final List<DlpPredefinedProfileEntryUpdate>? entries;

final bool ocrEnabled;

Map<String, dynamic> toJson() { return {
  'ai_context_enabled': aiContextEnabled,
  'allowed_match_count': ?allowedMatchCount,
  'confidence_threshold': ?confidenceThreshold,
  if (enabledEntries.isPresent) 'enabled_entries': enabledEntries.value,
  if (entries != null) 'entries': entries?.map((e) => e.toJson()).toList(),
  'ocr_enabled': ocrEnabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'ai_context_enabled', 'allowed_match_count', 'confidence_threshold', 'enabled_entries', 'entries', 'ocr_enabled'}.contains(key)); } 
DlpPredefinedProfileConfigUpdate copyWith({bool Function()? aiContextEnabled, int? Function()? allowedMatchCount, String? Function()? confidenceThreshold, Omittable<List<String>?>? enabledEntries, List<DlpPredefinedProfileEntryUpdate>? Function()? entries, bool Function()? ocrEnabled, }) { return DlpPredefinedProfileConfigUpdate(
  aiContextEnabled: aiContextEnabled != null ? aiContextEnabled() : this.aiContextEnabled,
  allowedMatchCount: allowedMatchCount != null ? allowedMatchCount() : this.allowedMatchCount,
  confidenceThreshold: confidenceThreshold != null ? confidenceThreshold() : this.confidenceThreshold,
  enabledEntries: enabledEntries ?? this.enabledEntries,
  entries: entries != null ? entries() : this.entries,
  ocrEnabled: ocrEnabled != null ? ocrEnabled() : this.ocrEnabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpPredefinedProfileConfigUpdate &&
          aiContextEnabled == other.aiContextEnabled &&
          allowedMatchCount == other.allowedMatchCount &&
          confidenceThreshold == other.confidenceThreshold &&
          enabledEntries.isPresent == other.enabledEntries.isPresent &&
          listEquals(enabledEntries.value, other.enabledEntries.value) &&
          listEquals(entries, other.entries) &&
          ocrEnabled == other.ocrEnabled; } 
@override int get hashCode { return Object.hash(aiContextEnabled, allowedMatchCount, confidenceThreshold, Object.hashAll(enabledEntries.value ?? const []), Object.hashAll(entries ?? const []), ocrEnabled); } 
@override String toString() { return 'DlpPredefinedProfileConfigUpdate(aiContextEnabled: $aiContextEnabled, allowedMatchCount: $allowedMatchCount, confidenceThreshold: $confidenceThreshold, enabledEntries: $enabledEntries, entries: $entries, ocrEnabled: $ocrEnabled)'; } 
 }
