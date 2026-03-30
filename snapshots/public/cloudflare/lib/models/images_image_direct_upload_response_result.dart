// GENERATED CODE - DO NOT MODIFY BY HAND

final class ImagesImageDirectUploadResponseResult {const ImagesImageDirectUploadResponseResult({this.id, this.uploadUrl, });

factory ImagesImageDirectUploadResponseResult.fromJson(Map<String, dynamic> json) { return ImagesImageDirectUploadResponseResult(
  id: json['id'] as String?,
  uploadUrl: json['uploadURL'] as String?,
); }

/// Image unique identifier.
final String? id;

/// The URL the unauthenticated upload can be performed to using a single HTTP POST (multipart/form-data) request.
final String? uploadUrl;

Map<String, dynamic> toJson() { return {
  'id': ?id,
  'uploadURL': ?uploadUrl,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'uploadURL'}.contains(key)); } 
ImagesImageDirectUploadResponseResult copyWith({String Function()? id, String Function()? uploadUrl, }) { return ImagesImageDirectUploadResponseResult(
  id: id != null ? id() : this.id,
  uploadUrl: uploadUrl != null ? uploadUrl() : this.uploadUrl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ImagesImageDirectUploadResponseResult &&
          id == other.id &&
          uploadUrl == other.uploadUrl; } 
@override int get hashCode { return Object.hash(id, uploadUrl); } 
@override String toString() { return 'ImagesImageDirectUploadResponseResult(id: $id, uploadUrl: $uploadUrl)'; } 
 }
