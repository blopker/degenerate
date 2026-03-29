// GENERATED CODE - DO NOT MODIFY BY HAND

final class RunStepDeltaStepDetailsToolCallsCodeOutputImageObjectImage {const RunStepDeltaStepDetailsToolCallsCodeOutputImageObjectImage({this.fileId});

factory RunStepDeltaStepDetailsToolCallsCodeOutputImageObjectImage.fromJson(Map<String, dynamic> json) { return RunStepDeltaStepDetailsToolCallsCodeOutputImageObjectImage(
  fileId: json['file_id'] as String?,
); }

/// The [file](/docs/api-reference/files) ID of the image.
final String? fileId;

Map<String, dynamic> toJson() { return {
  'file_id': ?fileId,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
RunStepDeltaStepDetailsToolCallsCodeOutputImageObjectImage copyWith({String Function()? fileId}) { return RunStepDeltaStepDetailsToolCallsCodeOutputImageObjectImage(
  fileId: fileId != null ? fileId() : this.fileId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RunStepDeltaStepDetailsToolCallsCodeOutputImageObjectImage &&
          fileId == other.fileId; } 
@override int get hashCode { return fileId.hashCode; } 
@override String toString() { return 'RunStepDeltaStepDetailsToolCallsCodeOutputImageObjectImage(fileId: $fileId)'; } 
 }
