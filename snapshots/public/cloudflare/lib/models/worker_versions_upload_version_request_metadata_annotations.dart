// GENERATED CODE - DO NOT MODIFY BY HAND

final class WorkerVersionsUploadVersionRequestMetadataAnnotations {const WorkerVersionsUploadVersionRequestMetadataAnnotations({this.workersAlias, this.workersMessage, this.workersTag, });

factory WorkerVersionsUploadVersionRequestMetadataAnnotations.fromJson(Map<String, dynamic> json) { return WorkerVersionsUploadVersionRequestMetadataAnnotations(
  workersAlias: json['workers/alias'] as String?,
  workersMessage: json['workers/message'] as String?,
  workersTag: json['workers/tag'] as String?,
); }

/// Associated alias for a version.
final String? workersAlias;

/// Human-readable message about the version. Truncated to 100 bytes.
final String? workersMessage;

/// User-provided identifier for the version.
final String? workersTag;

Map<String, dynamic> toJson() { return {
  'workers/alias': ?workersAlias,
  'workers/message': ?workersMessage,
  'workers/tag': ?workersTag,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
WorkerVersionsUploadVersionRequestMetadataAnnotations copyWith({String Function()? workersAlias, String Function()? workersMessage, String Function()? workersTag, }) { return WorkerVersionsUploadVersionRequestMetadataAnnotations(
  workersAlias: workersAlias != null ? workersAlias() : this.workersAlias,
  workersMessage: workersMessage != null ? workersMessage() : this.workersMessage,
  workersTag: workersTag != null ? workersTag() : this.workersTag,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkerVersionsUploadVersionRequestMetadataAnnotations &&
          workersAlias == other.workersAlias &&
          workersMessage == other.workersMessage &&
          workersTag == other.workersTag; } 
@override int get hashCode { return Object.hash(workersAlias, workersMessage, workersTag); } 
@override String toString() { return 'WorkerVersionsUploadVersionRequestMetadataAnnotations(workersAlias: $workersAlias, workersMessage: $workersMessage, workersTag: $workersTag)'; } 
 }
