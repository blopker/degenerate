// GENERATED CODE - DO NOT MODIFY BY HAND

/// Optional mask for inpainting. Contains `image_url`
/// (string, optional) and `file_id` (string, optional).
/// 
final class ImageGenToolInputImageMask {const ImageGenToolInputImageMask({this.imageUrl, this.fileId, });

factory ImageGenToolInputImageMask.fromJson(Map<String, dynamic> json) { return ImageGenToolInputImageMask(
  imageUrl: json['image_url'] as String?,
  fileId: json['file_id'] as String?,
); }

/// Base64-encoded mask image.
/// 
final String? imageUrl;

/// File ID for the mask image.
/// 
final String? fileId;

Map<String, dynamic> toJson() { return {
  'image_url': ?imageUrl,
  'file_id': ?fileId,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
ImageGenToolInputImageMask copyWith({String Function()? imageUrl, String Function()? fileId, }) { return ImageGenToolInputImageMask(
  imageUrl: imageUrl != null ? imageUrl() : this.imageUrl,
  fileId: fileId != null ? fileId() : this.fileId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ImageGenToolInputImageMask &&
          imageUrl == other.imageUrl &&
          fileId == other.fileId; } 
@override int get hashCode { return Object.hash(imageUrl, fileId); } 
@override String toString() { return 'ImageGenToolInputImageMask(imageUrl: $imageUrl, fileId: $fileId)'; } 
 }
