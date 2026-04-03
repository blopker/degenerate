// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RunStepDetailsToolCallsCodeOutputImageObjectImage {const RunStepDetailsToolCallsCodeOutputImageObjectImage({required this.fileId});

factory RunStepDetailsToolCallsCodeOutputImageObjectImage.fromJson(Map<String, dynamic> json) { return RunStepDetailsToolCallsCodeOutputImageObjectImage(
  fileId: json['file_id'] as String,
); }

/// The [file](/docs/api-reference/files) ID of the image.
final String fileId;

Map<String, dynamic> toJson() { return {
  'file_id': fileId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('file_id') && json['file_id'] is String; } 
RunStepDetailsToolCallsCodeOutputImageObjectImage copyWith({String? fileId}) { return RunStepDetailsToolCallsCodeOutputImageObjectImage(
  fileId: fileId ?? this.fileId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RunStepDetailsToolCallsCodeOutputImageObjectImage &&
          fileId == other.fileId; } 
@override int get hashCode { return fileId.hashCode; } 
@override String toString() { return 'RunStepDetailsToolCallsCodeOutputImageObjectImage(fileId: $fileId)'; } 
 }
