// GENERATED CODE - DO NOT MODIFY BY HAND

import 'messages_inner_messages_content_variant2_image_url.dart';final class MessagesInnerMessagesContentVariant2 {const MessagesInnerMessagesContentVariant2({this.imageUrl, this.text, this.type, });

factory MessagesInnerMessagesContentVariant2.fromJson(Map<String, dynamic> json) { return MessagesInnerMessagesContentVariant2(
  imageUrl: json['image_url'] != null ? MessagesInnerMessagesContentVariant2ImageUrl.fromJson(json['image_url'] as Map<String, dynamic>) : null,
  text: json['text'] as String?,
  type: json['type'] as String?,
); }

final MessagesInnerMessagesContentVariant2ImageUrl? imageUrl;

final String? text;

/// Type of the content provided
final String? type;

Map<String, dynamic> toJson() { return {
  if (imageUrl != null) 'image_url': imageUrl?.toJson(),
  'text': ?text,
  'type': ?type,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
MessagesInnerMessagesContentVariant2 copyWith({MessagesInnerMessagesContentVariant2ImageUrl Function()? imageUrl, String Function()? text, String Function()? type, }) { return MessagesInnerMessagesContentVariant2(
  imageUrl: imageUrl != null ? imageUrl() : this.imageUrl,
  text: text != null ? text() : this.text,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MessagesInnerMessagesContentVariant2 &&
          imageUrl == other.imageUrl &&
          text == other.text &&
          type == other.type; } 
@override int get hashCode { return Object.hash(imageUrl, text, type); } 
@override String toString() { return 'MessagesInnerMessagesContentVariant2(imageUrl: $imageUrl, text: $text, type: $type)'; } 
 }
