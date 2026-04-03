// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'input_file_content.dart';import 'input_image_content.dart';import 'input_text_content.dart';sealed class InputContent {const InputContent();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory InputContent.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'input_text' => InputContentInputText.fromJson(json),
  'input_image' => InputContentInputImage.fromJson(json),
  'input_file' => InputContentInputFile.fromJson(json),
  _ => InputContent$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is InputContent$Unknown; } 
 }
@immutable final class InputContentInputText extends InputContent {const InputContentInputText(this.inputTextContent);

factory InputContentInputText.fromJson(Map<String, dynamic> json) { return InputContentInputText(InputTextContent.fromJson(json)); }

final InputTextContent inputTextContent;

@override String get type { return 'input_text'; } 
@override Map<String, dynamic> toJson() { return {...inputTextContent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InputContentInputText && inputTextContent == other.inputTextContent; } 
@override int get hashCode { return inputTextContent.hashCode; } 
@override String toString() { return 'InputContentInputText(inputTextContent: $inputTextContent)'; } 
 }
@immutable final class InputContentInputImage extends InputContent {const InputContentInputImage(this.inputImageContent);

factory InputContentInputImage.fromJson(Map<String, dynamic> json) { return InputContentInputImage(InputImageContent.fromJson(json)); }

final InputImageContent inputImageContent;

@override String get type { return 'input_image'; } 
@override Map<String, dynamic> toJson() { return {...inputImageContent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InputContentInputImage && inputImageContent == other.inputImageContent; } 
@override int get hashCode { return inputImageContent.hashCode; } 
@override String toString() { return 'InputContentInputImage(inputImageContent: $inputImageContent)'; } 
 }
@immutable final class InputContentInputFile extends InputContent {const InputContentInputFile(this.inputFileContent);

factory InputContentInputFile.fromJson(Map<String, dynamic> json) { return InputContentInputFile(InputFileContent.fromJson(json)); }

final InputFileContent inputFileContent;

@override String get type { return 'input_file'; } 
@override Map<String, dynamic> toJson() { return {...inputFileContent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InputContentInputFile && inputFileContent == other.inputFileContent; } 
@override int get hashCode { return inputFileContent.hashCode; } 
@override String toString() { return 'InputContentInputFile(inputFileContent: $inputFileContent)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
@immutable final class InputContent$Unknown extends InputContent {const InputContent$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InputContent$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'InputContent.unknown($json)'; } 
 }
