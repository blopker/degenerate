// GENERATED CODE - DO NOT MODIFY BY HAND

import 'message_content_text_annotations_file_path_object_file_path.dart';/// Always `file_path`.
final class MessageContentTextAnnotationsFilePathObjectType {const MessageContentTextAnnotationsFilePathObjectType._(this.value);

factory MessageContentTextAnnotationsFilePathObjectType.fromJson(String json) { return switch (json) {
  'file_path' => filePath,
  _ => MessageContentTextAnnotationsFilePathObjectType._(json),
}; }

static const MessageContentTextAnnotationsFilePathObjectType filePath = MessageContentTextAnnotationsFilePathObjectType._('file_path');

static const List<MessageContentTextAnnotationsFilePathObjectType> values = [filePath];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MessageContentTextAnnotationsFilePathObjectType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MessageContentTextAnnotationsFilePathObjectType($value)'; } 
 }
/// A URL for the file that's generated when the assistant used the `code_interpreter` tool to generate a file.
final class MessageContentTextAnnotationsFilePathObject {const MessageContentTextAnnotationsFilePathObject({required this.type, required this.text, required this.filePath, required this.startIndex, required this.endIndex, });

factory MessageContentTextAnnotationsFilePathObject.fromJson(Map<String, dynamic> json) { return MessageContentTextAnnotationsFilePathObject(
  type: MessageContentTextAnnotationsFilePathObjectType.fromJson(json['type'] as String),
  text: json['text'] as String,
  filePath: MessageContentTextAnnotationsFilePathObjectFilePath.fromJson(json['file_path'] as Map<String, dynamic>),
  startIndex: (json['start_index'] as num).toInt(),
  endIndex: (json['end_index'] as num).toInt(),
); }

/// Always `file_path`.
final MessageContentTextAnnotationsFilePathObjectType type;

/// The text in the message content that needs to be replaced.
final String text;

final MessageContentTextAnnotationsFilePathObjectFilePath filePath;

final int startIndex;

final int endIndex;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  'text': text,
  'file_path': filePath.toJson(),
  'start_index': startIndex,
  'end_index': endIndex,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('text') && json['text'] is String &&
      json.containsKey('file_path') &&
      json.containsKey('start_index') && json['start_index'] is num &&
      json.containsKey('end_index') && json['end_index'] is num; } 
MessageContentTextAnnotationsFilePathObject copyWith({MessageContentTextAnnotationsFilePathObjectType? type, String? text, MessageContentTextAnnotationsFilePathObjectFilePath? filePath, int? startIndex, int? endIndex, }) { return MessageContentTextAnnotationsFilePathObject(
  type: type ?? this.type,
  text: text ?? this.text,
  filePath: filePath ?? this.filePath,
  startIndex: startIndex ?? this.startIndex,
  endIndex: endIndex ?? this.endIndex,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MessageContentTextAnnotationsFilePathObject &&
          type == other.type &&
          text == other.text &&
          filePath == other.filePath &&
          startIndex == other.startIndex &&
          endIndex == other.endIndex; } 
@override int get hashCode { return Object.hash(type, text, filePath, startIndex, endIndex); } 
@override String toString() { return 'MessageContentTextAnnotationsFilePathObject(type: $type, text: $text, filePath: $filePath, startIndex: $startIndex, endIndex: $endIndex)'; } 
 }
