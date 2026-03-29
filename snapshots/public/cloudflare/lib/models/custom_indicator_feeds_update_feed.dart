// GENERATED CODE - DO NOT MODIFY BY HAND

final class CustomIndicatorFeedsUpdateFeed {const CustomIndicatorFeedsUpdateFeed({this.fileId, this.filename, this.status, });

factory CustomIndicatorFeedsUpdateFeed.fromJson(Map<String, dynamic> json) { return CustomIndicatorFeedsUpdateFeed(
  fileId: json['file_id'] != null ? (json['file_id'] as num).toInt() : null,
  filename: json['filename'] as String?,
  status: json['status'] as String?,
); }

/// Feed id
final int? fileId;

/// Name of the file unified in our system
final String? filename;

/// Current status of upload, should be unified
final String? status;

Map<String, dynamic> toJson() { return {
  'file_id': ?fileId,
  'filename': ?filename,
  'status': ?status,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
CustomIndicatorFeedsUpdateFeed copyWith({int Function()? fileId, String Function()? filename, String Function()? status, }) { return CustomIndicatorFeedsUpdateFeed(
  fileId: fileId != null ? fileId() : this.fileId,
  filename: filename != null ? filename() : this.filename,
  status: status != null ? status() : this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CustomIndicatorFeedsUpdateFeed &&
          fileId == other.fileId &&
          filename == other.filename &&
          status == other.status; } 
@override int get hashCode { return Object.hash(fileId, filename, status); } 
@override String toString() { return 'CustomIndicatorFeedsUpdateFeed(fileId: $fileId, filename: $filename, status: $status)'; } 
 }
