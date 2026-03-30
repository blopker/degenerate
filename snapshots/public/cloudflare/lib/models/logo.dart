// GENERATED CODE - DO NOT MODIFY BY HAND

final class Logo {const Logo({this.id, this.tag, this.uploadPath, });

factory Logo.fromJson(Map<String, dynamic> json) { return Logo(
  id: json['id'] != null ? (json['id'] as num).toInt() : null,
  tag: json['tag'] as String?,
  uploadPath: json['upload_path'] as String?,
); }

final int? id;

final String? tag;

final String? uploadPath;

Map<String, dynamic> toJson() { return {
  'id': ?id,
  'tag': ?tag,
  'upload_path': ?uploadPath,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'tag', 'upload_path'}.contains(key)); } 
Logo copyWith({int Function()? id, String Function()? tag, String Function()? uploadPath, }) { return Logo(
  id: id != null ? id() : this.id,
  tag: tag != null ? tag() : this.tag,
  uploadPath: uploadPath != null ? uploadPath() : this.uploadPath,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Logo &&
          id == other.id &&
          tag == other.tag &&
          uploadPath == other.uploadPath; } 
@override int get hashCode { return Object.hash(id, tag, uploadPath); } 
@override String toString() { return 'Logo(id: $id, tag: $tag, uploadPath: $uploadPath)'; } 
 }
