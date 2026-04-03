// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class MultimodalEmbeddings {const MultimodalEmbeddings({this.image, this.text, });

factory MultimodalEmbeddings.fromJson(Map<String, dynamic> json) { return MultimodalEmbeddings(
  image: json['image'] as String?,
  text: (json['text'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

/// Image in base64 encoded format.
final String? image;

final List<String>? text;

Map<String, dynamic> toJson() { return {
  'image': ?image,
  'text': ?text,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'image', 'text'}.contains(key)); } 
MultimodalEmbeddings copyWith({String Function()? image, List<String> Function()? text, }) { return MultimodalEmbeddings(
  image: image != null ? image() : this.image,
  text: text != null ? text() : this.text,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MultimodalEmbeddings &&
          image == other.image &&
          listEquals(text, other.text); } 
@override int get hashCode { return Object.hash(image, Object.hashAll(text ?? const [])); } 
@override String toString() { return 'MultimodalEmbeddings(image: $image, text: $text)'; } 
 }
