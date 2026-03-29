// GENERATED CODE - DO NOT MODIFY BY HAND

import 'code_interpreter_output_image.dart';import 'code_interpreter_output_logs.dart';sealed class CodeInterpreterToolCallOutputs2 {const CodeInterpreterToolCallOutputs2();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory CodeInterpreterToolCallOutputs2.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'CodeInterpreterOutputLogs' => CodeInterpreterToolCallOutputs2CodeInterpreterOutputLogs.fromJson(json),
  'CodeInterpreterOutputImage' => CodeInterpreterToolCallOutputs2CodeInterpreterOutputImage.fromJson(json),
  _ => CodeInterpreterToolCallOutputs2$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is CodeInterpreterToolCallOutputs2$Unknown; } 
 }
final class CodeInterpreterToolCallOutputs2CodeInterpreterOutputLogs extends CodeInterpreterToolCallOutputs2 {const CodeInterpreterToolCallOutputs2CodeInterpreterOutputLogs(this.codeInterpreterOutputLogs);

factory CodeInterpreterToolCallOutputs2CodeInterpreterOutputLogs.fromJson(Map<String, dynamic> json) { return CodeInterpreterToolCallOutputs2CodeInterpreterOutputLogs(CodeInterpreterOutputLogs.fromJson(json)); }

final CodeInterpreterOutputLogs codeInterpreterOutputLogs;

@override String get type { return 'CodeInterpreterOutputLogs'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...codeInterpreterOutputLogs.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeInterpreterToolCallOutputs2CodeInterpreterOutputLogs && codeInterpreterOutputLogs == other.codeInterpreterOutputLogs; } 
@override int get hashCode { return codeInterpreterOutputLogs.hashCode; } 
@override String toString() { return 'CodeInterpreterToolCallOutputs2CodeInterpreterOutputLogs(codeInterpreterOutputLogs: $codeInterpreterOutputLogs)'; } 
 }
final class CodeInterpreterToolCallOutputs2CodeInterpreterOutputImage extends CodeInterpreterToolCallOutputs2 {const CodeInterpreterToolCallOutputs2CodeInterpreterOutputImage(this.codeInterpreterOutputImage);

factory CodeInterpreterToolCallOutputs2CodeInterpreterOutputImage.fromJson(Map<String, dynamic> json) { return CodeInterpreterToolCallOutputs2CodeInterpreterOutputImage(CodeInterpreterOutputImage.fromJson(json)); }

final CodeInterpreterOutputImage codeInterpreterOutputImage;

@override String get type { return 'CodeInterpreterOutputImage'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...codeInterpreterOutputImage.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeInterpreterToolCallOutputs2CodeInterpreterOutputImage && codeInterpreterOutputImage == other.codeInterpreterOutputImage; } 
@override int get hashCode { return codeInterpreterOutputImage.hashCode; } 
@override String toString() { return 'CodeInterpreterToolCallOutputs2CodeInterpreterOutputImage(codeInterpreterOutputImage: $codeInterpreterOutputImage)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
final class CodeInterpreterToolCallOutputs2$Unknown extends CodeInterpreterToolCallOutputs2 {const CodeInterpreterToolCallOutputs2$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeInterpreterToolCallOutputs2$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'CodeInterpreterToolCallOutputs2.unknown($json)'; } 
 }
