// GENERATED CODE - DO NOT MODIFY BY HAND

import 'output_text_content.dart';import 'reasoning_text_content.dart';import 'refusal_content.dart';sealed class OutputContent {const OutputContent();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory OutputContent.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'output_text' => OutputContentOutputText.fromJson(json),
  'refusal' => OutputContentRefusal.fromJson(json),
  'reasoning_text' => OutputContentReasoningText.fromJson(json),
  _ => OutputContent$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is OutputContent$Unknown; } 
 }
final class OutputContentOutputText extends OutputContent {const OutputContentOutputText(this.outputTextContent);

factory OutputContentOutputText.fromJson(Map<String, dynamic> json) { return OutputContentOutputText(OutputTextContent.fromJson(json)); }

final OutputTextContent outputTextContent;

@override String get type { return 'output_text'; } 
@override Map<String, dynamic> toJson() { return {...outputTextContent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OutputContentOutputText && outputTextContent == other.outputTextContent; } 
@override int get hashCode { return outputTextContent.hashCode; } 
@override String toString() { return 'OutputContentOutputText(outputTextContent: $outputTextContent)'; } 
 }
final class OutputContentRefusal extends OutputContent {const OutputContentRefusal(this.refusalContent);

factory OutputContentRefusal.fromJson(Map<String, dynamic> json) { return OutputContentRefusal(RefusalContent.fromJson(json)); }

final RefusalContent refusalContent;

@override String get type { return 'refusal'; } 
@override Map<String, dynamic> toJson() { return {...refusalContent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OutputContentRefusal && refusalContent == other.refusalContent; } 
@override int get hashCode { return refusalContent.hashCode; } 
@override String toString() { return 'OutputContentRefusal(refusalContent: $refusalContent)'; } 
 }
final class OutputContentReasoningText extends OutputContent {const OutputContentReasoningText(this.reasoningTextContent);

factory OutputContentReasoningText.fromJson(Map<String, dynamic> json) { return OutputContentReasoningText(ReasoningTextContent.fromJson(json)); }

final ReasoningTextContent reasoningTextContent;

@override String get type { return 'reasoning_text'; } 
@override Map<String, dynamic> toJson() { return {...reasoningTextContent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OutputContentReasoningText && reasoningTextContent == other.reasoningTextContent; } 
@override int get hashCode { return reasoningTextContent.hashCode; } 
@override String toString() { return 'OutputContentReasoningText(reasoningTextContent: $reasoningTextContent)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
final class OutputContent$Unknown extends OutputContent {const OutputContent$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OutputContent$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'OutputContent.unknown($json)'; } 
 }
