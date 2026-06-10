// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dlp_dataset_upload_status.dart';import 'dlp_entry_profile.dart';@immutable final class DlpEntryWithSharedProfiles {const DlpEntryWithSharedProfiles({required this.profiles, this.uploadStatus, });

factory DlpEntryWithSharedProfiles.fromJson(Map<String, dynamic> json) { return DlpEntryWithSharedProfiles(
  uploadStatus: json['upload_status'] != null ? DlpDatasetUploadStatus.fromJson(json['upload_status'] as String) : null,
  profiles: (json['profiles'] as List<dynamic>).map((e) => DlpEntryProfile.fromJson(e as Map<String, dynamic>)).toList(),
); }

final DlpDatasetUploadStatus? uploadStatus;

final List<DlpEntryProfile> profiles;

Map<String, dynamic> toJson() { return {
  if (uploadStatus != null) 'upload_status': uploadStatus?.toJson(),
  'profiles': profiles.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('profiles'); } 
DlpEntryWithSharedProfiles copyWith({DlpDatasetUploadStatus Function()? uploadStatus, List<DlpEntryProfile>? profiles, }) { return DlpEntryWithSharedProfiles(
  uploadStatus: uploadStatus != null ? uploadStatus() : this.uploadStatus,
  profiles: profiles ?? this.profiles,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpEntryWithSharedProfiles &&
          uploadStatus == other.uploadStatus &&
          listEquals(profiles, other.profiles); } 
@override int get hashCode { return Object.hash(uploadStatus, Object.hashAll(profiles)); } 
@override String toString() { return 'DlpEntryWithSharedProfiles(uploadStatus: $uploadStatus, profiles: $profiles)'; } 
 }
