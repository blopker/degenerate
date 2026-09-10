// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dlp_context_awareness.dart';import 'dlp_predefined_profile_entry_update.dart';@immutable final class DlpNewPredefinedProfile {const DlpNewPredefinedProfile({required this.profileId, this.aiContextEnabled, this.allowedMatchCount = const Omittable.absent(), this.confidenceThreshold = const Omittable.absent(), this.contextAwareness, this.entries, this.ocrEnabled, });

factory DlpNewPredefinedProfile.fromJson(Map<String, dynamic> json) { return DlpNewPredefinedProfile(
  aiContextEnabled: json['ai_context_enabled'] as bool?,
  allowedMatchCount: json.containsKey('allowed_match_count') ? Omittable(json['allowed_match_count'] != null ? (json['allowed_match_count'] as num).toInt() : null) : const Omittable.absent(),
  confidenceThreshold: json.containsKey('confidence_threshold') ? Omittable(json['confidence_threshold'] as String?) : const Omittable.absent(),
  contextAwareness: json['context_awareness'] != null ? DlpContextAwareness.fromJson(json['context_awareness'] as Map<String, dynamic>) : null,
  entries: (json['entries'] as List<dynamic>?)?.map((e) => DlpPredefinedProfileEntryUpdate.fromJson(e as Map<String, dynamic>)).toList(),
  ocrEnabled: json['ocr_enabled'] as bool?,
  profileId: json['profile_id'] as String,
); }

final bool? aiContextEnabled;

final Omittable<int?> allowedMatchCount;

final Omittable<String?> confidenceThreshold;

final DlpContextAwareness? contextAwareness;

final List<DlpPredefinedProfileEntryUpdate>? entries;

final bool? ocrEnabled;

final String profileId;

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
  if (contextAwareness != null) 'context_awareness': contextAwareness?.toJson(),
  if (entries != null) 'entries': entries?.map((e) => e.toJson()).toList(),
  'ocr_enabled': ?ocrEnabled,
  'profile_id': profileId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('profile_id') && json['profile_id'] is String; } 
DlpNewPredefinedProfile copyWith({bool? Function()? aiContextEnabled, Omittable<int?>? allowedMatchCount, Omittable<String?>? confidenceThreshold, DlpContextAwareness? Function()? contextAwareness, List<DlpPredefinedProfileEntryUpdate>? Function()? entries, bool? Function()? ocrEnabled, String? profileId, }) { return DlpNewPredefinedProfile(
  aiContextEnabled: aiContextEnabled != null ? aiContextEnabled() : this.aiContextEnabled,
  allowedMatchCount: allowedMatchCount ?? this.allowedMatchCount,
  confidenceThreshold: confidenceThreshold ?? this.confidenceThreshold,
  contextAwareness: contextAwareness != null ? contextAwareness() : this.contextAwareness,
  entries: entries != null ? entries() : this.entries,
  ocrEnabled: ocrEnabled != null ? ocrEnabled() : this.ocrEnabled,
  profileId: profileId ?? this.profileId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpNewPredefinedProfile &&
          aiContextEnabled == other.aiContextEnabled &&
          allowedMatchCount == other.allowedMatchCount &&
          confidenceThreshold == other.confidenceThreshold &&
          contextAwareness == other.contextAwareness &&
          listEquals(entries, other.entries) &&
          ocrEnabled == other.ocrEnabled &&
          profileId == other.profileId; } 
@override int get hashCode { return Object.hash(aiContextEnabled, allowedMatchCount, confidenceThreshold, contextAwareness, Object.hashAll(entries ?? const []), ocrEnabled, profileId); } 
@override String toString() { return 'DlpNewPredefinedProfile(aiContextEnabled: $aiContextEnabled, allowedMatchCount: $allowedMatchCount, confidenceThreshold: $confidenceThreshold, contextAwareness: $contextAwareness, entries: $entries, ocrEnabled: $ocrEnabled, profileId: $profileId)'; } 
 }
