// GENERATED CODE - DO NOT MODIFY BY HAND

import 'output_text_content.dart';import 'refusal_content.dart';sealed class OutputMessageContent {const OutputMessageContent();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory OutputMessageContent.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'output_text' => OutputMessageContentOutputText.fromJson(json),
  'refusal' => OutputMessageContentRefusal.fromJson(json),
  _ => OutputMessageContent$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is OutputMessageContent$Unknown; } 
 }
final class OutputMessageContentOutputText extends OutputMessageContent {const OutputMessageContentOutputText(this.outputTextContent);

factory OutputMessageContentOutputText.fromJson(Map<String, dynamic> json) { return OutputMessageContentOutputText(OutputTextContent.fromJson(json)); }

final OutputTextContent outputTextContent;

@override String get type { return 'output_text'; } 
@override Map<String, dynamic> toJson() { return {...outputTextContent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OutputMessageContentOutputText && outputTextContent == other.outputTextContent; } 
@override int get hashCode { return outputTextContent.hashCode; } 
@override String toString() { return 'OutputMessageContentOutputText(outputTextContent: $outputTextContent)'; } 
 }
final class OutputMessageContentRefusal extends OutputMessageContent {const OutputMessageContentRefusal(this.refusalContent);

factory OutputMessageContentRefusal.fromJson(Map<String, dynamic> json) { return OutputMessageContentRefusal(RefusalContent.fromJson(json)); }

final RefusalContent refusalContent;

@override String get type { return 'refusal'; } 
@override Map<String, dynamic> toJson() { return {...refusalContent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OutputMessageContentRefusal && refusalContent == other.refusalContent; } 
@override int get hashCode { return refusalContent.hashCode; } 
@override String toString() { return 'OutputMessageContentRefusal(refusalContent: $refusalContent)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
final class OutputMessageContent$Unknown extends OutputMessageContent {const OutputMessageContent$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OutputMessageContent$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'OutputMessageContent.unknown($json)'; } 
 }
