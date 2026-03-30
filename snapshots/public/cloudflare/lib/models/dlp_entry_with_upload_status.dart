// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dlp_dataset_upload_status.dart';final class DlpEntryWithUploadStatus {const DlpEntryWithUploadStatus({this.uploadStatus});

factory DlpEntryWithUploadStatus.fromJson(Map<String, dynamic> json) { return DlpEntryWithUploadStatus(
  uploadStatus: json['upload_status'] != null ? DlpDatasetUploadStatus.fromJson(json['upload_status'] as String) : null,
); }

final DlpDatasetUploadStatus? uploadStatus;

Map<String, dynamic> toJson() { return {
  if (uploadStatus != null) 'upload_status': uploadStatus?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'upload_status'}.contains(key)); } 
DlpEntryWithUploadStatus copyWith({DlpDatasetUploadStatus Function()? uploadStatus}) { return DlpEntryWithUploadStatus(
  uploadStatus: uploadStatus != null ? uploadStatus() : this.uploadStatus,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpEntryWithUploadStatus &&
          uploadStatus == other.uploadStatus; } 
@override int get hashCode { return uploadStatus.hashCode; } 
@override String toString() { return 'DlpEntryWithUploadStatus(uploadStatus: $uploadStatus)'; } 
 }
