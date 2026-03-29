// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'annotation.dart';import 'log_prob.dart';/// A text output from the model.
final class OutputTextContent {const OutputTextContent({this.type = 'output_text', required this.text, required this.annotations, required this.logprobs, });

factory OutputTextContent.fromJson(Map<String, dynamic> json) { return OutputTextContent(
  type: json['type'] as String,
  text: json['text'] as String,
  annotations: (json['annotations'] as List<dynamic>).map((e) => Annotation.fromJson(e as Map<String, dynamic>)).toList(),
  logprobs: (json['logprobs'] as List<dynamic>).map((e) => LogProb.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// The type of the output text. Always `output_text`.
final String type;

/// The text output from the model.
final String text;

/// The annotations of the text output.
final List<Annotation> annotations;

final List<LogProb> logprobs;

Map<String, dynamic> toJson() { return {
  'type': type,
  'text': text,
  'annotations': annotations.map((e) => e.toJson()).toList(),
  'logprobs': logprobs.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String &&
      json.containsKey('text') && json['text'] is String &&
      json.containsKey('annotations') &&
      json.containsKey('logprobs'); } 
OutputTextContent copyWith({String? type, String? text, List<Annotation>? annotations, List<LogProb>? logprobs, }) { return OutputTextContent(
  type: type ?? this.type,
  text: text ?? this.text,
  annotations: annotations ?? this.annotations,
  logprobs: logprobs ?? this.logprobs,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is OutputTextContent &&
          type == other.type &&
          text == other.text &&
          listEquals(annotations, other.annotations) &&
          listEquals(logprobs, other.logprobs); } 
@override int get hashCode { return Object.hash(type, text, Object.hashAll(annotations), Object.hashAll(logprobs)); } 
@override String toString() { return 'OutputTextContent(type: $type, text: $text, annotations: $annotations, logprobs: $logprobs)'; } 
 }
