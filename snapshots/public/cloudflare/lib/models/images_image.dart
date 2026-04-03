// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'images_image_identifier.dart';/// Can set the creator field with an internal user ID.
extension type const ImagesImageCreator(String value) {
factory ImagesImageCreator.fromJson(String json) => ImagesImageCreator(json);

String toJson() => value;

}
/// Image file name.
extension type const ImagesImageFilename(String value) {
factory ImagesImageFilename.fromJson(String json) => ImagesImageFilename(json);

String toJson() => value;

}
/// Indicates whether the image can be a accessed only using it's UID. If set to true, a signed token needs to be generated with a signing key to view the image.
extension type const ImagesImageRequireSignedUrLs(bool value) {
factory ImagesImageRequireSignedUrLs.fromJson(bool json) => ImagesImageRequireSignedUrLs(json);

bool toJson() => value;

}
/// URI to thumbnail variant for an image.
extension type ImagesImageThumbnailUrl(Uri value) {
factory ImagesImageThumbnailUrl.fromJson(String json) => ImagesImageThumbnailUrl(Uri.parse(json));

String toJson() => value.toString();

}
/// When the media item was uploaded.
extension type ImagesImageUploaded(DateTime value) {
factory ImagesImageUploaded.fromJson(String json) => ImagesImageUploaded(DateTime.parse(json));

String toJson() => value.toIso8601String();

}
@immutable final class ImagesImage {const ImagesImage({this.creator, this.filename, this.id, this.meta, this.requireSignedUrLs, this.uploaded, this.variants, });

factory ImagesImage.fromJson(Map<String, dynamic> json) { return ImagesImage(
  creator: json['creator'] != null ? ImagesImageCreator.fromJson(json['creator'] as String) : null,
  filename: json['filename'] != null ? ImagesImageFilename.fromJson(json['filename'] as String) : null,
  id: json['id'] != null ? ImagesImageIdentifier.fromJson(json['id'] as String) : null,
  meta: (json['meta'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v)),
  requireSignedUrLs: json['requireSignedURLs'] != null ? ImagesImageRequireSignedUrLs.fromJson(json['requireSignedURLs'] as bool) : null,
  uploaded: json['uploaded'] != null ? ImagesImageUploaded.fromJson(json['uploaded'] as String) : null,
  variants: (json['variants'] as List<dynamic>?)?.map((e) => ImagesImageThumbnailUrl.fromJson(e as String)).toList(),
); }

final ImagesImageCreator? creator;

final ImagesImageFilename? filename;

final ImagesImageIdentifier? id;

final Map<String,dynamic>? meta;

final ImagesImageRequireSignedUrLs? requireSignedUrLs;

final ImagesImageUploaded? uploaded;

final List<ImagesImageThumbnailUrl>? variants;

Map<String, dynamic> toJson() { return {
  if (creator != null) 'creator': creator?.toJson(),
  if (filename != null) 'filename': filename?.toJson(),
  if (id != null) 'id': id?.toJson(),
  'meta': ?meta,
  if (requireSignedUrLs != null) 'requireSignedURLs': requireSignedUrLs?.toJson(),
  if (uploaded != null) 'uploaded': uploaded?.toJson(),
  if (variants != null) 'variants': variants?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'creator', 'filename', 'id', 'meta', 'requireSignedURLs', 'uploaded', 'variants'}.contains(key)); } 
ImagesImage copyWith({ImagesImageCreator? Function()? creator, ImagesImageFilename Function()? filename, ImagesImageIdentifier Function()? id, Map<String, dynamic> Function()? meta, ImagesImageRequireSignedUrLs Function()? requireSignedUrLs, ImagesImageUploaded Function()? uploaded, List<ImagesImageThumbnailUrl> Function()? variants, }) { return ImagesImage(
  creator: creator != null ? creator() : this.creator,
  filename: filename != null ? filename() : this.filename,
  id: id != null ? id() : this.id,
  meta: meta != null ? meta() : this.meta,
  requireSignedUrLs: requireSignedUrLs != null ? requireSignedUrLs() : this.requireSignedUrLs,
  uploaded: uploaded != null ? uploaded() : this.uploaded,
  variants: variants != null ? variants() : this.variants,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ImagesImage &&
          creator == other.creator &&
          filename == other.filename &&
          id == other.id &&
          meta == other.meta &&
          requireSignedUrLs == other.requireSignedUrLs &&
          uploaded == other.uploaded &&
          listEquals(variants, other.variants); } 
@override int get hashCode { return Object.hash(creator, filename, id, meta, requireSignedUrLs, uploaded, Object.hashAll(variants ?? const [])); } 
@override String toString() { return 'ImagesImage(creator: $creator, filename: $filename, id: $id, meta: $meta, requireSignedUrLs: $requireSignedUrLs, uploaded: $uploaded, variants: $variants)'; } 
 }
