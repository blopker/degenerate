// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DlpPredefinedEntryUpdate {const DlpPredefinedEntryUpdate({required this.enabled});

factory DlpPredefinedEntryUpdate.fromJson(Map<String, dynamic> json) { return DlpPredefinedEntryUpdate(
  enabled: json['enabled'] as bool,
); }

final bool enabled;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool; } 
DlpPredefinedEntryUpdate copyWith({bool? enabled}) { return DlpPredefinedEntryUpdate(
  enabled: enabled ?? this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpPredefinedEntryUpdate &&
          enabled == other.enabled; } 
@override int get hashCode { return enabled.hashCode; } 
@override String toString() { return 'DlpPredefinedEntryUpdate(enabled: $enabled)'; } 
 }
