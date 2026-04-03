// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'code_interpreter_output_image.dart';import 'code_interpreter_output_logs.dart';sealed class CodeInterpreterToolCallOutputs2 {const CodeInterpreterToolCallOutputs2();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory CodeInterpreterToolCallOutputs2.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'logs' => CodeInterpreterToolCallOutputs2Logs.fromJson(json),
  'image' => CodeInterpreterToolCallOutputs2Image.fromJson(json),
  _ => CodeInterpreterToolCallOutputs2$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is CodeInterpreterToolCallOutputs2$Unknown; } 
 }
@immutable final class CodeInterpreterToolCallOutputs2Logs extends CodeInterpreterToolCallOutputs2 {const CodeInterpreterToolCallOutputs2Logs(this.codeInterpreterOutputLogs);

factory CodeInterpreterToolCallOutputs2Logs.fromJson(Map<String, dynamic> json) { return CodeInterpreterToolCallOutputs2Logs(CodeInterpreterOutputLogs.fromJson(json)); }

final CodeInterpreterOutputLogs codeInterpreterOutputLogs;

@override String get type { return 'logs'; } 
@override Map<String, dynamic> toJson() { return {...codeInterpreterOutputLogs.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeInterpreterToolCallOutputs2Logs && codeInterpreterOutputLogs == other.codeInterpreterOutputLogs; } 
@override int get hashCode { return codeInterpreterOutputLogs.hashCode; } 
@override String toString() { return 'CodeInterpreterToolCallOutputs2Logs(codeInterpreterOutputLogs: $codeInterpreterOutputLogs)'; } 
 }
@immutable final class CodeInterpreterToolCallOutputs2Image extends CodeInterpreterToolCallOutputs2 {const CodeInterpreterToolCallOutputs2Image(this.codeInterpreterOutputImage);

factory CodeInterpreterToolCallOutputs2Image.fromJson(Map<String, dynamic> json) { return CodeInterpreterToolCallOutputs2Image(CodeInterpreterOutputImage.fromJson(json)); }

final CodeInterpreterOutputImage codeInterpreterOutputImage;

@override String get type { return 'image'; } 
@override Map<String, dynamic> toJson() { return {...codeInterpreterOutputImage.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeInterpreterToolCallOutputs2Image && codeInterpreterOutputImage == other.codeInterpreterOutputImage; } 
@override int get hashCode { return codeInterpreterOutputImage.hashCode; } 
@override String toString() { return 'CodeInterpreterToolCallOutputs2Image(codeInterpreterOutputImage: $codeInterpreterOutputImage)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
@immutable final class CodeInterpreterToolCallOutputs2$Unknown extends CodeInterpreterToolCallOutputs2 {const CodeInterpreterToolCallOutputs2$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeInterpreterToolCallOutputs2$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'CodeInterpreterToolCallOutputs2.unknown($json)'; } 
 }
