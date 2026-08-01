// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'worker_script_upload_worker_module_request_metadata_annotations.dart';@immutable final class WorkerScriptUploadWorkerModuleRequestMetadata {const WorkerScriptUploadWorkerModuleRequestMetadata({this.annotations});

factory WorkerScriptUploadWorkerModuleRequestMetadata.fromJson(Map<String, dynamic> json) { return WorkerScriptUploadWorkerModuleRequestMetadata(
  annotations: json['annotations'] != null ? WorkerScriptUploadWorkerModuleRequestMetadataAnnotations.fromJson(json['annotations'] as Map<String, dynamic>) : null,
); }

/// Annotations for the version created by this upload.
final WorkerScriptUploadWorkerModuleRequestMetadataAnnotations? annotations;

Map<String, dynamic> toJson() { return {
  if (annotations != null) 'annotations': annotations?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'annotations'}.contains(key)); } 
WorkerScriptUploadWorkerModuleRequestMetadata copyWith({WorkerScriptUploadWorkerModuleRequestMetadataAnnotations? Function()? annotations}) { return WorkerScriptUploadWorkerModuleRequestMetadata(
  annotations: annotations != null ? annotations() : this.annotations,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkerScriptUploadWorkerModuleRequestMetadata &&
          annotations == other.annotations; } 
@override int get hashCode { return annotations.hashCode; } 
@override String toString() { return 'WorkerScriptUploadWorkerModuleRequestMetadata(annotations: $annotations)'; } 
 }
