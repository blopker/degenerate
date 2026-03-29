// GENERATED CODE - DO NOT MODIFY BY HAND

final class CloudflarePipelinesWorkersPipelinesPipelineDestinationPath {const CloudflarePipelinesWorkersPipelinesPipelineDestinationPath({required this.bucket, this.filename, this.filepath, this.prefix, });

factory CloudflarePipelinesWorkersPipelinesPipelineDestinationPath.fromJson(Map<String, dynamic> json) { return CloudflarePipelinesWorkersPipelinesPipelineDestinationPath(
  bucket: json['bucket'] as String,
  filename: json['filename'] as String?,
  filepath: json['filepath'] as String?,
  prefix: json['prefix'] as String?,
); }

/// Specifies the R2 Bucket to store files.
final String bucket;

/// Specifies the name pattern to for individual data files.
final String? filename;

/// Specifies the name pattern for directory.
final String? filepath;

/// Specifies the base directory within the bucket.
final String? prefix;

Map<String, dynamic> toJson() { return {
  'bucket': bucket,
  'filename': ?filename,
  'filepath': ?filepath,
  'prefix': ?prefix,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('bucket') && json['bucket'] is String; } 
CloudflarePipelinesWorkersPipelinesPipelineDestinationPath copyWith({String? bucket, String Function()? filename, String Function()? filepath, String Function()? prefix, }) { return CloudflarePipelinesWorkersPipelinesPipelineDestinationPath(
  bucket: bucket ?? this.bucket,
  filename: filename != null ? filename() : this.filename,
  filepath: filepath != null ? filepath() : this.filepath,
  prefix: prefix != null ? prefix() : this.prefix,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CloudflarePipelinesWorkersPipelinesPipelineDestinationPath &&
          bucket == other.bucket &&
          filename == other.filename &&
          filepath == other.filepath &&
          prefix == other.prefix; } 
@override int get hashCode { return Object.hash(bucket, filename, filepath, prefix); } 
@override String toString() { return 'CloudflarePipelinesWorkersPipelinesPipelineDestinationPath(bucket: $bucket, filename: $filename, filepath: $filepath, prefix: $prefix)'; } 
 }
