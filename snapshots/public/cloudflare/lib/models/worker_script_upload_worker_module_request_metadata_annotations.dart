// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Annotations for the version created by this upload.
@immutable final class WorkerScriptUploadWorkerModuleRequestMetadataAnnotations {const WorkerScriptUploadWorkerModuleRequestMetadataAnnotations({this.workersMessage, this.workersTag, });

factory WorkerScriptUploadWorkerModuleRequestMetadataAnnotations.fromJson(Map<String, dynamic> json) { return WorkerScriptUploadWorkerModuleRequestMetadataAnnotations(
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
WorkerScriptUploadWorkerModuleRequestMetadataAnnotations copyWith({String? Function()? workersMessage, String? Function()? workersTag, }) { return WorkerScriptUploadWorkerModuleRequestMetadataAnnotations(
  workersMessage: workersMessage != null ? workersMessage() : this.workersMessage,
  workersTag: workersTag != null ? workersTag() : this.workersTag,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkerScriptUploadWorkerModuleRequestMetadataAnnotations &&
          workersMessage == other.workersMessage &&
          workersTag == other.workersTag; } 
@override int get hashCode { return Object.hash(workersMessage, workersTag); } 
@override String toString() { return 'WorkerScriptUploadWorkerModuleRequestMetadataAnnotations(workersMessage: $workersMessage, workersTag: $workersTag)'; } 
 }
