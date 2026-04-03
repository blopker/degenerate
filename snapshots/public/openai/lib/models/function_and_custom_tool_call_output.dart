// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'input_file_content.dart';import 'input_image_content.dart';import 'input_text_content.dart';sealed class FunctionAndCustomToolCallOutput {const FunctionAndCustomToolCallOutput();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory FunctionAndCustomToolCallOutput.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'input_text' => FunctionAndCustomToolCallOutputInputText.fromJson(json),
  'input_image' => FunctionAndCustomToolCallOutputInputImage.fromJson(json),
  'input_file' => FunctionAndCustomToolCallOutputInputFile.fromJson(json),
  _ => FunctionAndCustomToolCallOutput$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is FunctionAndCustomToolCallOutput$Unknown; } 
 }
@immutable final class FunctionAndCustomToolCallOutputInputText extends FunctionAndCustomToolCallOutput {const FunctionAndCustomToolCallOutputInputText(this.inputTextContent);

factory FunctionAndCustomToolCallOutputInputText.fromJson(Map<String, dynamic> json) { return FunctionAndCustomToolCallOutputInputText(InputTextContent.fromJson(json)); }

final InputTextContent inputTextContent;

@override String get type { return 'input_text'; } 
@override Map<String, dynamic> toJson() { return {...inputTextContent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FunctionAndCustomToolCallOutputInputText && inputTextContent == other.inputTextContent; } 
@override int get hashCode { return inputTextContent.hashCode; } 
@override String toString() { return 'FunctionAndCustomToolCallOutputInputText(inputTextContent: $inputTextContent)'; } 
 }
@immutable final class FunctionAndCustomToolCallOutputInputImage extends FunctionAndCustomToolCallOutput {const FunctionAndCustomToolCallOutputInputImage(this.inputImageContent);

factory FunctionAndCustomToolCallOutputInputImage.fromJson(Map<String, dynamic> json) { return FunctionAndCustomToolCallOutputInputImage(InputImageContent.fromJson(json)); }

final InputImageContent inputImageContent;

@override String get type { return 'input_image'; } 
@override Map<String, dynamic> toJson() { return {...inputImageContent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FunctionAndCustomToolCallOutputInputImage && inputImageContent == other.inputImageContent; } 
@override int get hashCode { return inputImageContent.hashCode; } 
@override String toString() { return 'FunctionAndCustomToolCallOutputInputImage(inputImageContent: $inputImageContent)'; } 
 }
@immutable final class FunctionAndCustomToolCallOutputInputFile extends FunctionAndCustomToolCallOutput {const FunctionAndCustomToolCallOutputInputFile(this.inputFileContent);

factory FunctionAndCustomToolCallOutputInputFile.fromJson(Map<String, dynamic> json) { return FunctionAndCustomToolCallOutputInputFile(InputFileContent.fromJson(json)); }

final InputFileContent inputFileContent;

@override String get type { return 'input_file'; } 
@override Map<String, dynamic> toJson() { return {...inputFileContent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FunctionAndCustomToolCallOutputInputFile && inputFileContent == other.inputFileContent; } 
@override int get hashCode { return inputFileContent.hashCode; } 
@override String toString() { return 'FunctionAndCustomToolCallOutputInputFile(inputFileContent: $inputFileContent)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
@immutable final class FunctionAndCustomToolCallOutput$Unknown extends FunctionAndCustomToolCallOutput {const FunctionAndCustomToolCallOutput$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FunctionAndCustomToolCallOutput$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'FunctionAndCustomToolCallOutput.unknown($json)'; } 
 }
