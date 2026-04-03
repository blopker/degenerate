// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ImagesImagePatchRequest {const ImagesImagePatchRequest({this.creator, this.metadata, this.requireSignedUrLs, });

factory ImagesImagePatchRequest.fromJson(Map<String, dynamic> json) { return ImagesImagePatchRequest(
  creator: json['creator'] as String?,
  metadata: json['metadata'] as Map<String, dynamic>?,
  requireSignedUrLs: json['requireSignedURLs'] as bool?,
); }

/// Can set the creator field with an internal user ID.
final String? creator;

/// User modifiable key-value store. Can be used for keeping references to another system of record for managing images. No change if not specified.
final Map<String,dynamic>? metadata;

/// Indicates whether the image can be accessed using only its UID. If set to `true`, a signed token needs to be generated with a signing key to view the image. Returns a new UID on a change. No change if not specified.
final bool? requireSignedUrLs;

Map<String, dynamic> toJson() { return {
  'creator': ?creator,
  'metadata': ?metadata,
  'requireSignedURLs': ?requireSignedUrLs,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'creator', 'metadata', 'requireSignedURLs'}.contains(key)); } 
ImagesImagePatchRequest copyWith({String Function()? creator, Map<String, dynamic> Function()? metadata, bool Function()? requireSignedUrLs, }) { return ImagesImagePatchRequest(
  creator: creator != null ? creator() : this.creator,
  metadata: metadata != null ? metadata() : this.metadata,
  requireSignedUrLs: requireSignedUrLs != null ? requireSignedUrLs() : this.requireSignedUrLs,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ImagesImagePatchRequest &&
          creator == other.creator &&
          metadata == other.metadata &&
          requireSignedUrLs == other.requireSignedUrLs; } 
@override int get hashCode { return Object.hash(creator, metadata, requireSignedUrLs); } 
@override String toString() { return 'ImagesImagePatchRequest(creator: $creator, metadata: $metadata, requireSignedUrLs: $requireSignedUrLs)'; } 
 }
