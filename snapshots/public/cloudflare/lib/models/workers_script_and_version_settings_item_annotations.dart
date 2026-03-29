// GENERATED CODE - DO NOT MODIFY BY HAND

/// Annotations for the Worker version. Annotations are not inherited across settings updates; omitting this field means the new version will have no annotations.
final class WorkersScriptAndVersionSettingsItemAnnotations {const WorkersScriptAndVersionSettingsItemAnnotations({this.workersMessage, this.workersTag, this.workersTriggeredBy, });

factory WorkersScriptAndVersionSettingsItemAnnotations.fromJson(Map<String, dynamic> json) { return WorkersScriptAndVersionSettingsItemAnnotations(
  workersMessage: json['workers/message'] as String?,
  workersTag: json['workers/tag'] as String?,
  workersTriggeredBy: json['workers/triggered_by'] as String?,
); }

/// Human-readable message about the version.
final String? workersMessage;

/// User-provided identifier for the version.
final String? workersTag;

/// Operation that triggered the creation of the version. This is read-only and set by the server.
final String? workersTriggeredBy;

Map<String, dynamic> toJson() { return {
  'workers/message': ?workersMessage,
  'workers/tag': ?workersTag,
  'workers/triggered_by': ?workersTriggeredBy,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
WorkersScriptAndVersionSettingsItemAnnotations copyWith({String Function()? workersMessage, String Function()? workersTag, String Function()? workersTriggeredBy, }) { return WorkersScriptAndVersionSettingsItemAnnotations(
  workersMessage: workersMessage != null ? workersMessage() : this.workersMessage,
  workersTag: workersTag != null ? workersTag() : this.workersTag,
  workersTriggeredBy: workersTriggeredBy != null ? workersTriggeredBy() : this.workersTriggeredBy,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersScriptAndVersionSettingsItemAnnotations &&
          workersMessage == other.workersMessage &&
          workersTag == other.workersTag &&
          workersTriggeredBy == other.workersTriggeredBy; } 
@override int get hashCode { return Object.hash(workersMessage, workersTag, workersTriggeredBy); } 
@override String toString() { return 'WorkersScriptAndVersionSettingsItemAnnotations(workersMessage: $workersMessage, workersTag: $workersTag, workersTriggeredBy: $workersTriggeredBy)'; } 
 }
