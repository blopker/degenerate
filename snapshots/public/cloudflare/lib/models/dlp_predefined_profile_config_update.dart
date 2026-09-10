// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dlp_predefined_profile_entry_update.dart';@immutable final class DlpPredefinedProfileConfigUpdate {const DlpPredefinedProfileConfigUpdate({this.aiContextEnabled, this.allowedMatchCount = const Omittable.absent(), this.confidenceThreshold = const Omittable.absent(), this.enabledEntries = const Omittable.absent(), this.entries, this.ocrEnabled, });

factory DlpPredefinedProfileConfigUpdate.fromJson(Map<String, dynamic> json) { return DlpPredefinedProfileConfigUpdate(
  aiContextEnabled: json['ai_context_enabled'] as bool?,
  allowedMatchCount: json.containsKey('allowed_match_count') ? Omittable(json['allowed_match_count'] != null ? (json['allowed_match_count'] as num).toInt() : null) : const Omittable.absent(),
  confidenceThreshold: json.containsKey('confidence_threshold') ? Omittable(json['confidence_threshold'] as String?) : const Omittable.absent(),
  enabledEntries: json.containsKey('enabled_entries') ? Omittable((json['enabled_entries'] as List<dynamic>?)?.map((e) => e as String).toList()) : const Omittable.absent(),
  entries: (json['entries'] as List<dynamic>?)?.map((e) => DlpPredefinedProfileEntryUpdate.fromJson(e as Map<String, dynamic>)).toList(),
  ocrEnabled: json['ocr_enabled'] as bool?,
); }

final bool? aiContextEnabled;

final Omittable<int?> allowedMatchCount;

final Omittable<String?> confidenceThreshold;

final Omittable<List<String>?> enabledEntries;

final List<DlpPredefinedProfileEntryUpdate>? entries;

final bool? ocrEnabled;

/// The value with the schema default applied when absent.
bool get aiContextEnabledOrDefault { return aiContextEnabled ?? false; } 
/// The value with the schema default applied when absent.
int? get allowedMatchCountOrDefault { return allowedMatchCount.valueOr(0); } 
/// The value with the schema default applied when absent.
String? get confidenceThresholdOrDefault { return confidenceThreshold.valueOr('low'); } 
/// The value with the schema default applied when absent.
bool get ocrEnabledOrDefault { return ocrEnabled ?? false; } 
Map<String, dynamic> toJson() { return {
  'ai_context_enabled': ?aiContextEnabled,
  if (allowedMatchCount.isPresent) 'allowed_match_count': allowedMatchCount.value,
  if (confidenceThreshold.isPresent) 'confidence_threshold': confidenceThreshold.value,
  if (enabledEntries.isPresent) 'enabled_entries': enabledEntries.value,
  if (entries != null) 'entries': entries?.map((e) => e.toJson()).toList(),
  'ocr_enabled': ?ocrEnabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'ai_context_enabled', 'allowed_match_count', 'confidence_threshold', 'enabled_entries', 'entries', 'ocr_enabled'}.contains(key)); } 
DlpPredefinedProfileConfigUpdate copyWith({bool? Function()? aiContextEnabled, Omittable<int?>? allowedMatchCount, Omittable<String?>? confidenceThreshold, Omittable<List<String>?>? enabledEntries, List<DlpPredefinedProfileEntryUpdate>? Function()? entries, bool? Function()? ocrEnabled, }) { return DlpPredefinedProfileConfigUpdate(
  aiContextEnabled: aiContextEnabled != null ? aiContextEnabled() : this.aiContextEnabled,
  allowedMatchCount: allowedMatchCount ?? this.allowedMatchCount,
  confidenceThreshold: confidenceThreshold ?? this.confidenceThreshold,
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
