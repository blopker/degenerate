// GENERATED CODE - DO NOT MODIFY BY HAND

import 'image_text_to_text_variant2_messages_content_variant2_image_url.dart';final class ImageTextToTextVariant2MessagesContentVariant2 {const ImageTextToTextVariant2MessagesContentVariant2({this.imageUrl, this.text, required this.type, });

factory ImageTextToTextVariant2MessagesContentVariant2.fromJson(Map<String, dynamic> json) { return ImageTextToTextVariant2MessagesContentVariant2(
  imageUrl: json['image_url'] != null ? ImageTextToTextVariant2MessagesContentVariant2ImageUrl.fromJson(json['image_url'] as Map<String, dynamic>) : null,
  text: json['text'] as String?,
  type: json['type'] as String,
); }

/// Image URL object (when type is 'image_url').
final ImageTextToTextVariant2MessagesContentVariant2ImageUrl? imageUrl;

/// Text content (when type is 'text').
final String? text;

/// Type of the content part (e.g. 'text', 'image_url').
final String type;

Map<String, dynamic> toJson() { return {
  if (imageUrl != null) 'image_url': imageUrl?.toJson(),
  'text': ?text,
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String; } 
ImageTextToTextVariant2MessagesContentVariant2 copyWith({ImageTextToTextVariant2MessagesContentVariant2ImageUrl Function()? imageUrl, String Function()? text, String? type, }) { return ImageTextToTextVariant2MessagesContentVariant2(
  imageUrl: imageUrl != null ? imageUrl() : this.imageUrl,
  text: text != null ? text() : this.text,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ImageTextToTextVariant2MessagesContentVariant2 &&
          imageUrl == other.imageUrl &&
          text == other.text &&
          type == other.type; } 
@override int get hashCode { return Object.hash(imageUrl, text, type); } 
@override String toString() { return 'ImageTextToTextVariant2MessagesContentVariant2(imageUrl: $imageUrl, text: $text, type: $type)'; } 
 }
