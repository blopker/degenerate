// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'chat_completion_request_message_content_part_file_file.dart';/// The type of the content part. Always `file`.
@immutable final class ChatCompletionRequestMessageContentPartFileType {const ChatCompletionRequestMessageContentPartFileType._(this.value);

factory ChatCompletionRequestMessageContentPartFileType.fromJson(String json) { return switch (json) {
  'file' => file,
  _ => ChatCompletionRequestMessageContentPartFileType._(json),
}; }

static const ChatCompletionRequestMessageContentPartFileType file = ChatCompletionRequestMessageContentPartFileType._('file');

static const List<ChatCompletionRequestMessageContentPartFileType> values = [file];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ChatCompletionRequestMessageContentPartFileType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ChatCompletionRequestMessageContentPartFileType($value)'; } 
 }
/// Learn about [file inputs](/docs/guides/text) for text generation.
/// 
@immutable final class ChatCompletionRequestMessageContentPartFile {const ChatCompletionRequestMessageContentPartFile({required this.type, required this.file, });

factory ChatCompletionRequestMessageContentPartFile.fromJson(Map<String, dynamic> json) { return ChatCompletionRequestMessageContentPartFile(
  type: ChatCompletionRequestMessageContentPartFileType.fromJson(json['type'] as String),
  file: ChatCompletionRequestMessageContentPartFileFile.fromJson(json['file'] as Map<String, dynamic>),
); }

/// The type of the content part. Always `file`.
final ChatCompletionRequestMessageContentPartFileType type;

final ChatCompletionRequestMessageContentPartFileFile file;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  'file': file.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('file'); } 
ChatCompletionRequestMessageContentPartFile copyWith({ChatCompletionRequestMessageContentPartFileType? type, ChatCompletionRequestMessageContentPartFileFile? file, }) { return ChatCompletionRequestMessageContentPartFile(
  type: type ?? this.type,
  file: file ?? this.file,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ChatCompletionRequestMessageContentPartFile &&
          type == other.type &&
          file == other.file; } 
@override int get hashCode { return Object.hash(type, file); } 
@override String toString() { return 'ChatCompletionRequestMessageContentPartFile(type: $type, file: $file)'; } 
 }
