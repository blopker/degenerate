// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'message_delta_content_text_annotations_file_citation_object.dart';import 'message_delta_content_text_annotations_file_path_object.dart';import 'message_delta_content_text_object_text_annotations.dart';final class MessageDeltaContentTextObjectText {const MessageDeltaContentTextObjectText({this.value, this.annotations, });

factory MessageDeltaContentTextObjectText.fromJson(Map<String, dynamic> json) { return MessageDeltaContentTextObjectText(
  value: json['value'] as String?,
  annotations: (json['annotations'] as List<dynamic>?)?.map((e) => OneOf2.parse(e, fromA: (v) => MessageDeltaContentTextAnnotationsFileCitationObject.fromJson(v as Map<String, dynamic>), fromB: (v) => MessageDeltaContentTextAnnotationsFilePathObject.fromJson(v as Map<String, dynamic>),)).toList(),
); }

/// The data that makes up the text.
final String? value;

final List<MessageDeltaContentTextObjectTextAnnotations>? annotations;

Map<String, dynamic> toJson() { return {
  'value': ?value,
  if (annotations != null) 'annotations': annotations?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
MessageDeltaContentTextObjectText copyWith({String Function()? value, List<MessageDeltaContentTextObjectTextAnnotations> Function()? annotations, }) { return MessageDeltaContentTextObjectText(
  value: value != null ? value() : this.value,
  annotations: annotations != null ? annotations() : this.annotations,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MessageDeltaContentTextObjectText &&
          value == other.value &&
          listEquals(annotations, other.annotations); } 
@override int get hashCode { return Object.hash(value, Object.hashAll(annotations ?? const [])); } 
@override String toString() { return 'MessageDeltaContentTextObjectText(value: $value, annotations: $annotations)'; } 
 }
