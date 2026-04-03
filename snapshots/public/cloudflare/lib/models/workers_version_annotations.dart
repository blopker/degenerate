// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Metadata about the version.
@immutable final class WorkersVersionAnnotations {const WorkersVersionAnnotations({this.workersMessage, this.workersTag, this.workersTriggeredBy, });

factory WorkersVersionAnnotations.fromJson(Map<String, dynamic> json) { return WorkersVersionAnnotations(
  workersMessage: json['workers/message'] as String?,
  workersTag: json['workers/tag'] as String?,
  workersTriggeredBy: json['workers/triggered_by'] as String?,
); }

/// Human-readable message about the version.
final String? workersMessage;

/// User-provided identifier for the version.
final String? workersTag;

/// Operation that triggered the creation of the version.
final String? workersTriggeredBy;

Map<String, dynamic> toJson() { return {
  'workers/message': ?workersMessage,
  'workers/tag': ?workersTag,
  'workers/triggered_by': ?workersTriggeredBy,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'workers/message', 'workers/tag', 'workers/triggered_by'}.contains(key)); } 
WorkersVersionAnnotations copyWith({String Function()? workersMessage, String Function()? workersTag, String Function()? workersTriggeredBy, }) { return WorkersVersionAnnotations(
  workersMessage: workersMessage != null ? workersMessage() : this.workersMessage,
  workersTag: workersTag != null ? workersTag() : this.workersTag,
  workersTriggeredBy: workersTriggeredBy != null ? workersTriggeredBy() : this.workersTriggeredBy,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersVersionAnnotations &&
          workersMessage == other.workersMessage &&
          workersTag == other.workersTag &&
          workersTriggeredBy == other.workersTriggeredBy; } 
@override int get hashCode { return Object.hash(workersMessage, workersTag, workersTriggeredBy); } 
@override String toString() { return 'WorkersVersionAnnotations(workersMessage: $workersMessage, workersTag: $workersTag, workersTriggeredBy: $workersTriggeredBy)'; } 
 }
