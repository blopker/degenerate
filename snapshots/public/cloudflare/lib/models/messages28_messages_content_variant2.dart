// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'messages28_messages_content_variant2_image_url.dart';@immutable final class Messages28MessagesContentVariant2 {const Messages28MessagesContentVariant2({this.imageUrl, this.text, this.type, });

factory Messages28MessagesContentVariant2.fromJson(Map<String, dynamic> json) { return Messages28MessagesContentVariant2(
  imageUrl: json['image_url'] != null ? Messages28MessagesContentVariant2ImageUrl.fromJson(json['image_url'] as Map<String, dynamic>) : null,
  text: json['text'] as String?,
  type: json['type'] as String?,
); }

final Messages28MessagesContentVariant2ImageUrl? imageUrl;

final String? text;

/// Type of the content provided
final String? type;

Map<String, dynamic> toJson() { return {
  if (imageUrl != null) 'image_url': imageUrl?.toJson(),
  'text': ?text,
  'type': ?type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'image_url', 'text', 'type'}.contains(key)); } 
Messages28MessagesContentVariant2 copyWith({Messages28MessagesContentVariant2ImageUrl Function()? imageUrl, String Function()? text, String Function()? type, }) { return Messages28MessagesContentVariant2(
  imageUrl: imageUrl != null ? imageUrl() : this.imageUrl,
  text: text != null ? text() : this.text,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages28MessagesContentVariant2 &&
          imageUrl == other.imageUrl &&
          text == other.text &&
          type == other.type; } 
@override int get hashCode { return Object.hash(imageUrl, text, type); } 
@override String toString() { return 'Messages28MessagesContentVariant2(imageUrl: $imageUrl, text: $text, type: $type)'; } 
 }
