// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ContextManagementParam {const ContextManagementParam({required this.type, this.compactThreshold = const Omittable.absent(), });

factory ContextManagementParam.fromJson(Map<String, dynamic> json) { return ContextManagementParam(
  type: json['type'] as String,
  compactThreshold: json.containsKey('compact_threshold') ? Omittable(json['compact_threshold'] != null ? (json['compact_threshold'] as num).toInt() : null) : const Omittable.absent(),
); }

/// The context management entry type. Currently only 'compaction' is supported.
final String type;

/// Token threshold at which compaction should be triggered for this entry.
final Omittable<int?> compactThreshold;

Map<String, dynamic> toJson() { return {
  'type': type,
  if (compactThreshold.isPresent) 'compact_threshold': compactThreshold.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String; } 
ContextManagementParam copyWith({String? type, Omittable<int?>? compactThreshold, }) { return ContextManagementParam(
  type: type ?? this.type,
  compactThreshold: compactThreshold ?? this.compactThreshold,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ContextManagementParam &&
          type == other.type &&
          compactThreshold == other.compactThreshold; } 
@override int get hashCode { return Object.hash(type, compactThreshold); } 
@override String toString() { return 'ContextManagementParam(type: $type, compactThreshold: $compactThreshold)'; } 
 }
