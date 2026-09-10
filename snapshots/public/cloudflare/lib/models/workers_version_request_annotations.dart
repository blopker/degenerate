// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Metadata about the version.
@immutable final class WorkersVersionRequestAnnotations {const WorkersVersionRequestAnnotations({this.workersMessage, this.workersTag, });

factory WorkersVersionRequestAnnotations.fromJson(Map<String, dynamic> json) { return WorkersVersionRequestAnnotations(
  workersMessage: json['workers/message'] as String?,
  workersTag: json['workers/tag'] as String?,
); }

/// Human-readable message about the version.
final String? workersMessage;

/// User-provided identifier for the version.
final String? workersTag;

Map<String, dynamic> toJson() { return {
  'workers/message': ?workersMessage,
  'workers/tag': ?workersTag,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'workers/message', 'workers/tag'}.contains(key)); } 
WorkersVersionRequestAnnotations copyWith({String? Function()? workersMessage, String? Function()? workersTag, }) { return WorkersVersionRequestAnnotations(
  workersMessage: workersMessage != null ? workersMessage() : this.workersMessage,
  workersTag: workersTag != null ? workersTag() : this.workersTag,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersVersionRequestAnnotations &&
          workersMessage == other.workersMessage &&
          workersTag == other.workersTag; } 
@override int get hashCode { return Object.hash(workersMessage, workersTag); } 
@override String toString() { return 'WorkersVersionRequestAnnotations(workersMessage: $workersMessage, workersTag: $workersTag)'; } 
 }
