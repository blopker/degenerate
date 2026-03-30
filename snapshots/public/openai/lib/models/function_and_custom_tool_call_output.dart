// GENERATED CODE - DO NOT MODIFY BY HAND

import 'input_file_content.dart';import 'input_image_content.dart';import 'input_text_content.dart';sealed class FunctionAndCustomToolCallOutput {const FunctionAndCustomToolCallOutput();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory FunctionAndCustomToolCallOutput.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'InputTextContent' => FunctionAndCustomToolCallOutputInputTextContent.fromJson(json),
  'InputImageContent' => FunctionAndCustomToolCallOutputInputImageContent.fromJson(json),
  'InputFileContent' => FunctionAndCustomToolCallOutputInputFileContent.fromJson(json),
  _ => FunctionAndCustomToolCallOutput$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is FunctionAndCustomToolCallOutput$Unknown; } 
 }
final class FunctionAndCustomToolCallOutputInputTextContent extends FunctionAndCustomToolCallOutput {const FunctionAndCustomToolCallOutputInputTextContent(this.inputTextContent);

factory FunctionAndCustomToolCallOutputInputTextContent.fromJson(Map<String, dynamic> json) { return FunctionAndCustomToolCallOutputInputTextContent(InputTextContent.fromJson(json)); }

final InputTextContent inputTextContent;

@override String get type { return 'InputTextContent'; } 
@override Map<String, dynamic> toJson() { return {...inputTextContent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FunctionAndCustomToolCallOutputInputTextContent && inputTextContent == other.inputTextContent; } 
@override int get hashCode { return inputTextContent.hashCode; } 
@override String toString() { return 'FunctionAndCustomToolCallOutputInputTextContent(inputTextContent: $inputTextContent)'; } 
 }
final class FunctionAndCustomToolCallOutputInputImageContent extends FunctionAndCustomToolCallOutput {const FunctionAndCustomToolCallOutputInputImageContent(this.inputImageContent);

factory FunctionAndCustomToolCallOutputInputImageContent.fromJson(Map<String, dynamic> json) { return FunctionAndCustomToolCallOutputInputImageContent(InputImageContent.fromJson(json)); }

final InputImageContent inputImageContent;

@override String get type { return 'InputImageContent'; } 
@override Map<String, dynamic> toJson() { return {...inputImageContent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FunctionAndCustomToolCallOutputInputImageContent && inputImageContent == other.inputImageContent; } 
@override int get hashCode { return inputImageContent.hashCode; } 
@override String toString() { return 'FunctionAndCustomToolCallOutputInputImageContent(inputImageContent: $inputImageContent)'; } 
 }
final class FunctionAndCustomToolCallOutputInputFileContent extends FunctionAndCustomToolCallOutput {const FunctionAndCustomToolCallOutputInputFileContent(this.inputFileContent);

factory FunctionAndCustomToolCallOutputInputFileContent.fromJson(Map<String, dynamic> json) { return FunctionAndCustomToolCallOutputInputFileContent(InputFileContent.fromJson(json)); }

final InputFileContent inputFileContent;

@override String get type { return 'InputFileContent'; } 
@override Map<String, dynamic> toJson() { return {...inputFileContent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FunctionAndCustomToolCallOutputInputFileContent && inputFileContent == other.inputFileContent; } 
@override int get hashCode { return inputFileContent.hashCode; } 
@override String toString() { return 'FunctionAndCustomToolCallOutputInputFileContent(inputFileContent: $inputFileContent)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
final class FunctionAndCustomToolCallOutput$Unknown extends FunctionAndCustomToolCallOutput {const FunctionAndCustomToolCallOutput$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FunctionAndCustomToolCallOutput$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'FunctionAndCustomToolCallOutput.unknown($json)'; } 
 }
