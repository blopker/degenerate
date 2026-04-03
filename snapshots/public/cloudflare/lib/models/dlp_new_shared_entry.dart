// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DlpNewSharedEntry {const DlpNewSharedEntry({required this.enabled, required this.entryId, });

factory DlpNewSharedEntry.fromJson(Map<String, dynamic> json) { return DlpNewSharedEntry(
  enabled: json['enabled'] as bool,
  entryId: json['entry_id'] as String,
); }

final bool enabled;

final String entryId;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
  'entry_id': entryId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool &&
      json.containsKey('entry_id') && json['entry_id'] is String; } 
DlpNewSharedEntry copyWith({bool? enabled, String? entryId, }) { return DlpNewSharedEntry(
  enabled: enabled ?? this.enabled,
  entryId: entryId ?? this.entryId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpNewSharedEntry &&
          enabled == other.enabled &&
          entryId == other.entryId; } 
@override int get hashCode { return Object.hash(enabled, entryId); } 
@override String toString() { return 'DlpNewSharedEntry(enabled: $enabled, entryId: $entryId)'; } 
 }
