// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'dart:typed_data';import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ImageFile {const ImageFile({this.image});

factory ImageFile.fromJson(Map<String, dynamic> json) { return ImageFile(
  image: json['image'] != null ? base64Decode(json['image'] as String) : null,
); }

final Uint8List? image;

Map<String, dynamic> toJson() { return {
  'image': ?image,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'image'}.contains(key)); } 
ImageFile copyWith({Uint8List Function()? image}) { return ImageFile(
  image: image != null ? image() : this.image,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ImageFile &&
          image == other.image; } 
@override int get hashCode { return image.hashCode; } 
@override String toString() { return 'ImageFile(image: $image)'; } 
 }
