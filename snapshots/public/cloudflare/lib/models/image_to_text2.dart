// GENERATED CODE - DO NOT MODIFY BY HAND

final class ImageToText2 {const ImageToText2({this.description});

factory ImageToText2.fromJson(Map<String, dynamic> json) { return ImageToText2(
  description: json['description'] as String?,
); }

final String? description;

Map<String, dynamic> toJson() { return {
  'description': ?description,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'description'}.contains(key)); } 
ImageToText2 copyWith({String Function()? description}) { return ImageToText2(
  description: description != null ? description() : this.description,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ImageToText2 &&
          description == other.description; } 
@override int get hashCode { return description.hashCode; } 
@override String toString() { return 'ImageToText2(description: $description)'; } 
 }
