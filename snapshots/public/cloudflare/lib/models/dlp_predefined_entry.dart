// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dlp_entry_confidence.dart';import 'dlp_predefined_entry_variant.dart';@immutable final class DlpPredefinedEntry {const DlpPredefinedEntry({required this.confidence, required this.enabled, required this.id, required this.name, this.profileId = const Omittable.absent(), this.variant, });

factory DlpPredefinedEntry.fromJson(Map<String, dynamic> json) { return DlpPredefinedEntry(
  confidence: DlpEntryConfidence.fromJson(json['confidence'] as Map<String, dynamic>),
  enabled: json['enabled'] as bool,
  id: json['id'] as String,
  name: json['name'] as String,
  profileId: json.containsKey('profile_id') ? Omittable(json['profile_id'] as String?) : const Omittable.absent(),
  variant: json['variant'] != null ? DlpPredefinedEntryVariant.fromJson(json['variant'] as Map<String, dynamic>) : null,
); }

final DlpEntryConfidence confidence;

final bool enabled;

final String id;

final String name;

final Omittable<String?> profileId;

final DlpPredefinedEntryVariant? variant;

Map<String, dynamic> toJson() { return {
  'confidence': confidence.toJson(),
  'enabled': enabled,
  'id': id,
  'name': name,
  if (profileId.isPresent) 'profile_id': profileId.value,
  if (variant != null) 'variant': variant?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('confidence') &&
      json.containsKey('enabled') && json['enabled'] is bool &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('name') && json['name'] is String; } 
DlpPredefinedEntry copyWith({DlpEntryConfidence? confidence, bool? enabled, String? id, String? name, Omittable<String?>? profileId, DlpPredefinedEntryVariant? Function()? variant, }) { return DlpPredefinedEntry(
  confidence: confidence ?? this.confidence,
  enabled: enabled ?? this.enabled,
  id: id ?? this.id,
  name: name ?? this.name,
  profileId: profileId ?? this.profileId,
  variant: variant != null ? variant() : this.variant,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpPredefinedEntry &&
          confidence == other.confidence &&
          enabled == other.enabled &&
          id == other.id &&
          name == other.name &&
          profileId == other.profileId &&
          variant == other.variant; } 
@override int get hashCode { return Object.hash(confidence, enabled, id, name, profileId, variant); } 
@override String toString() { return 'DlpPredefinedEntry(confidence: $confidence, enabled: $enabled, id: $id, name: $name, profileId: $profileId, variant: $variant)'; } 
 }
