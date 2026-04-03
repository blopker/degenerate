// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class MqQueueMessageTextContentType {const MqQueueMessageTextContentType._(this.value);

factory MqQueueMessageTextContentType.fromJson(String json) { return switch (json) {
  'text' => text,
  _ => MqQueueMessageTextContentType._(json),
}; }

static const MqQueueMessageTextContentType text = MqQueueMessageTextContentType._('text');

static const List<MqQueueMessageTextContentType> values = [text];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MqQueueMessageTextContentType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MqQueueMessageTextContentType($value)'; } 
 }
@immutable final class MqQueueMessageText {const MqQueueMessageText({this.body, this.contentType, });

factory MqQueueMessageText.fromJson(Map<String, dynamic> json) { return MqQueueMessageText(
  body: json['body'] as String?,
  contentType: json['content_type'] != null ? MqQueueMessageTextContentType.fromJson(json['content_type'] as String) : null,
); }

final String? body;

final MqQueueMessageTextContentType? contentType;

Map<String, dynamic> toJson() { return {
  'body': ?body,
  if (contentType != null) 'content_type': contentType?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'body', 'content_type'}.contains(key)); } 
MqQueueMessageText copyWith({String Function()? body, MqQueueMessageTextContentType Function()? contentType, }) { return MqQueueMessageText(
  body: body != null ? body() : this.body,
  contentType: contentType != null ? contentType() : this.contentType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MqQueueMessageText &&
          body == other.body &&
          contentType == other.contentType; } 
@override int get hashCode { return Object.hash(body, contentType); } 
@override String toString() { return 'MqQueueMessageText(body: $body, contentType: $contentType)'; } 
 }
