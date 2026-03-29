// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'message_content_text_annotations_file_citation_object.dart';import 'message_content_text_annotations_file_path_object.dart';import 'message_content_text_object_text_annotations.dart';final class MessageContentTextObjectText {const MessageContentTextObjectText({required this.value, required this.annotations, });

factory MessageContentTextObjectText.fromJson(Map<String, dynamic> json) { return MessageContentTextObjectText(
  value: json['value'] as String,
  annotations: (json['annotations'] as List<dynamic>).map((e) => OneOf2.parse(e, fromA: (v) => MessageContentTextAnnotationsFileCitationObject.fromJson(v as Map<String, dynamic>), fromB: (v) => MessageContentTextAnnotationsFilePathObject.fromJson(v as Map<String, dynamic>),)).toList(),
); }

/// The data that makes up the text.
final String value;

final List<MessageContentTextObjectTextAnnotations> annotations;

Map<String, dynamic> toJson() { return {
  'value': value,
  'annotations': annotations.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('value') && json['value'] is String &&
      json.containsKey('annotations'); } 
MessageContentTextObjectText copyWith({String? value, List<MessageContentTextObjectTextAnnotations>? annotations, }) { return MessageContentTextObjectText(
  value: value ?? this.value,
  annotations: annotations ?? this.annotations,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MessageContentTextObjectText &&
          value == other.value &&
          listEquals(annotations, other.annotations); } 
@override int get hashCode { return Object.hash(value, Object.hashAll(annotations)); } 
@override String toString() { return 'MessageContentTextObjectText(value: $value, annotations: $annotations)'; } 
 }
