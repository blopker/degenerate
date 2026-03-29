// GENERATED CODE - DO NOT MODIFY BY HAND

import 'message_delta_content_image_file_object_image_file.dart';/// Always `image_file`.
final class MessageDeltaContentImageFileObjectType {const MessageDeltaContentImageFileObjectType._(this.value);

factory MessageDeltaContentImageFileObjectType.fromJson(String json) { return switch (json) {
  'image_file' => imageFile,
  _ => MessageDeltaContentImageFileObjectType._(json),
}; }

static const MessageDeltaContentImageFileObjectType imageFile = MessageDeltaContentImageFileObjectType._('image_file');

static const List<MessageDeltaContentImageFileObjectType> values = [imageFile];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MessageDeltaContentImageFileObjectType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MessageDeltaContentImageFileObjectType($value)'; } 
 }
/// References an image [File](/docs/api-reference/files) in the content of a message.
final class MessageDeltaContentImageFileObject {const MessageDeltaContentImageFileObject({required this.index, required this.type, this.imageFile, });

factory MessageDeltaContentImageFileObject.fromJson(Map<String, dynamic> json) { return MessageDeltaContentImageFileObject(
  index: (json['index'] as num).toInt(),
  type: MessageDeltaContentImageFileObjectType.fromJson(json['type'] as String),
  imageFile: json['image_file'] != null ? MessageDeltaContentImageFileObjectImageFile.fromJson(json['image_file'] as Map<String, dynamic>) : null,
); }

/// The index of the content part in the message.
final int index;

/// Always `image_file`.
final MessageDeltaContentImageFileObjectType type;

final MessageDeltaContentImageFileObjectImageFile? imageFile;

Map<String, dynamic> toJson() { return {
  'index': index,
  'type': type.toJson(),
  if (imageFile != null) 'image_file': imageFile?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('index') && json['index'] is num &&
      json.containsKey('type'); } 
MessageDeltaContentImageFileObject copyWith({int? index, MessageDeltaContentImageFileObjectType? type, MessageDeltaContentImageFileObjectImageFile Function()? imageFile, }) { return MessageDeltaContentImageFileObject(
  index: index ?? this.index,
  type: type ?? this.type,
  imageFile: imageFile != null ? imageFile() : this.imageFile,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MessageDeltaContentImageFileObject &&
          index == other.index &&
          type == other.type &&
          imageFile == other.imageFile; } 
@override int get hashCode { return Object.hash(index, type, imageFile); } 
@override String toString() { return 'MessageDeltaContentImageFileObject(index: $index, type: $type, imageFile: $imageFile)'; } 
 }
