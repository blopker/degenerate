// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_files_request_file_link_data_metadata.dart';/// Optional parameters that automatically create a [file link](https://api.stripe.com#file_links) for the newly created file.
@immutable final class PostFilesRequestFileLinkData {const PostFilesRequestFileLinkData({required this.create, this.expiresAt, this.metadata, });

factory PostFilesRequestFileLinkData.fromJson(Map<String, dynamic> json) { return PostFilesRequestFileLinkData(
  create: json['create'] as bool,
  expiresAt: json['expires_at'] != null ? (json['expires_at'] as num).toInt() : null,
  metadata: json['metadata'] != null ? OneOf2.parse(json['metadata'], fromA: (v) => (v as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String)), fromB: (v) => PostFilesRequestFileLinkDataMetadataVariant2.fromJson(v as String),) : null,
); }

final bool create;

final int? expiresAt;

final PostFilesRequestFileLinkDataMetadata? metadata;

Map<String, dynamic> toJson() { return {
  'create': create,
  'expires_at': ?expiresAt,
  if (metadata != null) 'metadata': metadata?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('create') && json['create'] is bool; } 
PostFilesRequestFileLinkData copyWith({bool? create, int Function()? expiresAt, PostFilesRequestFileLinkDataMetadata Function()? metadata, }) { return PostFilesRequestFileLinkData(
  create: create ?? this.create,
  expiresAt: expiresAt != null ? expiresAt() : this.expiresAt,
  metadata: metadata != null ? metadata() : this.metadata,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostFilesRequestFileLinkData &&
          create == other.create &&
          expiresAt == other.expiresAt &&
          metadata == other.metadata; } 
@override int get hashCode { return Object.hash(create, expiresAt, metadata); } 
@override String toString() { return 'PostFilesRequestFileLinkData(create: $create, expiresAt: $expiresAt, metadata: $metadata)'; } 
 }
