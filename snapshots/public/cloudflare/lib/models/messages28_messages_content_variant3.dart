// GENERATED CODE - DO NOT MODIFY BY HAND

import 'messages28_messages_content_variant3_image_url.dart';final class Messages28MessagesContentVariant3 {const Messages28MessagesContentVariant3({this.imageUrl, this.text, this.type, });

factory Messages28MessagesContentVariant3.fromJson(Map<String, dynamic> json) { return Messages28MessagesContentVariant3(
  imageUrl: json['image_url'] != null ? Messages28MessagesContentVariant3ImageUrl.fromJson(json['image_url'] as Map<String, dynamic>) : null,
  text: json['text'] as String?,
  type: json['type'] as String?,
); }

final Messages28MessagesContentVariant3ImageUrl? imageUrl;

final String? text;

/// Type of the content provided
final String? type;

Map<String, dynamic> toJson() { return {
  if (imageUrl != null) 'image_url': imageUrl?.toJson(),
  'text': ?text,
  'type': ?type,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
Messages28MessagesContentVariant3 copyWith({Messages28MessagesContentVariant3ImageUrl Function()? imageUrl, String Function()? text, String Function()? type, }) { return Messages28MessagesContentVariant3(
  imageUrl: imageUrl != null ? imageUrl() : this.imageUrl,
  text: text != null ? text() : this.text,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages28MessagesContentVariant3 &&
          imageUrl == other.imageUrl &&
          text == other.text &&
          type == other.type; } 
@override int get hashCode { return Object.hash(imageUrl, text, type); } 
@override String toString() { return 'Messages28MessagesContentVariant3(imageUrl: $imageUrl, text: $text, type: $type)'; } 
 }
