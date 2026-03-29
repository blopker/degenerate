// GENERATED CODE - DO NOT MODIFY BY HAND

import 'output_text_content.dart';import 'refusal_content.dart';sealed class OutputMessageContent {const OutputMessageContent();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory OutputMessageContent.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'OutputTextContent' => OutputMessageContentOutputTextContent.fromJson(json),
  'RefusalContent' => OutputMessageContentRefusalContent.fromJson(json),
  _ => OutputMessageContent$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is OutputMessageContent$Unknown; } 
 }
final class OutputMessageContentOutputTextContent extends OutputMessageContent {const OutputMessageContentOutputTextContent(this.outputTextContent);

factory OutputMessageContentOutputTextContent.fromJson(Map<String, dynamic> json) { return OutputMessageContentOutputTextContent(OutputTextContent.fromJson(json)); }

final OutputTextContent outputTextContent;

@override String get type { return 'OutputTextContent'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...outputTextContent.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OutputMessageContentOutputTextContent && outputTextContent == other.outputTextContent; } 
@override int get hashCode { return outputTextContent.hashCode; } 
@override String toString() { return 'OutputMessageContentOutputTextContent(outputTextContent: $outputTextContent)'; } 
 }
final class OutputMessageContentRefusalContent extends OutputMessageContent {const OutputMessageContentRefusalContent(this.refusalContent);

factory OutputMessageContentRefusalContent.fromJson(Map<String, dynamic> json) { return OutputMessageContentRefusalContent(RefusalContent.fromJson(json)); }

final RefusalContent refusalContent;

@override String get type { return 'RefusalContent'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...refusalContent.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OutputMessageContentRefusalContent && refusalContent == other.refusalContent; } 
@override int get hashCode { return refusalContent.hashCode; } 
@override String toString() { return 'OutputMessageContentRefusalContent(refusalContent: $refusalContent)'; } 
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
