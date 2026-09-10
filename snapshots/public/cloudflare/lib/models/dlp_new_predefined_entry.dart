// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Used to create a new predefined or integration entry.
/// 
/// Predefined or integration entries can not be updated via the API so
/// these fields will update the entry's settings.
@immutable final class DlpNewPredefinedEntry {const DlpNewPredefinedEntry({required this.enabled, required this.entryId, this.profileId = const Omittable.absent(), });

factory DlpNewPredefinedEntry.fromJson(Map<String, dynamic> json) { return DlpNewPredefinedEntry(
  enabled: json['enabled'] as bool,
  entryId: json['entry_id'] as String,
  profileId: json.containsKey('profile_id') ? Omittable(json['profile_id'] as String?) : const Omittable.absent(),
); }

final bool enabled;

final String entryId;

/// This field is not used as the owning profile.
/// For predefined entries it is already set to a predefined profile.
final Omittable<String?> profileId;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
  'entry_id': entryId,
  if (profileId.isPresent) 'profile_id': profileId.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool &&
      json.containsKey('entry_id') && json['entry_id'] is String; } 
DlpNewPredefinedEntry copyWith({bool? enabled, String? entryId, Omittable<String?>? profileId, }) { return DlpNewPredefinedEntry(
  enabled: enabled ?? this.enabled,
  entryId: entryId ?? this.entryId,
  profileId: profileId ?? this.profileId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpNewPredefinedEntry &&
          enabled == other.enabled &&
          entryId == other.entryId &&
          profileId == other.profileId; } 
@override int get hashCode { return Object.hash(enabled, entryId, profileId); } 
@override String toString() { return 'DlpNewPredefinedEntry(enabled: $enabled, entryId: $entryId, profileId: $profileId)'; } 
 }
