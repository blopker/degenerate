// GENERATED CODE - DO NOT MODIFY BY HAND

import 'input_file_content_param.dart';import 'input_image_content_param_auto_param.dart';import 'input_text_content_param.dart';/// A piece of message content, such as text, an image, or a file.
sealed class FunctionCallOutputItemParamOutputVariant2 {const FunctionCallOutputItemParamOutputVariant2();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory FunctionCallOutputItemParamOutputVariant2.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'input_text' => FunctionCallOutputItemParamOutputVariant2InputText.fromJson(json),
  'input_image' => FunctionCallOutputItemParamOutputVariant2InputImage.fromJson(json),
  'input_file' => FunctionCallOutputItemParamOutputVariant2InputFile.fromJson(json),
  _ => FunctionCallOutputItemParamOutputVariant2$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is FunctionCallOutputItemParamOutputVariant2$Unknown; } 
 }
final class FunctionCallOutputItemParamOutputVariant2InputText extends FunctionCallOutputItemParamOutputVariant2 {const FunctionCallOutputItemParamOutputVariant2InputText(this.inputTextContentParam);

factory FunctionCallOutputItemParamOutputVariant2InputText.fromJson(Map<String, dynamic> json) { return FunctionCallOutputItemParamOutputVariant2InputText(InputTextContentParam.fromJson(json)); }

final InputTextContentParam inputTextContentParam;

@override String get type { return 'input_text'; } 
@override Map<String, dynamic> toJson() { return {...inputTextContentParam.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FunctionCallOutputItemParamOutputVariant2InputText && inputTextContentParam == other.inputTextContentParam; } 
@override int get hashCode { return inputTextContentParam.hashCode; } 
@override String toString() { return 'FunctionCallOutputItemParamOutputVariant2InputText(inputTextContentParam: $inputTextContentParam)'; } 
 }
final class FunctionCallOutputItemParamOutputVariant2InputImage extends FunctionCallOutputItemParamOutputVariant2 {const FunctionCallOutputItemParamOutputVariant2InputImage(this.inputImageContentParamAutoParam);

factory FunctionCallOutputItemParamOutputVariant2InputImage.fromJson(Map<String, dynamic> json) { return FunctionCallOutputItemParamOutputVariant2InputImage(InputImageContentParamAutoParam.fromJson(json)); }

final InputImageContentParamAutoParam inputImageContentParamAutoParam;

@override String get type { return 'input_image'; } 
@override Map<String, dynamic> toJson() { return {...inputImageContentParamAutoParam.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FunctionCallOutputItemParamOutputVariant2InputImage && inputImageContentParamAutoParam == other.inputImageContentParamAutoParam; } 
@override int get hashCode { return inputImageContentParamAutoParam.hashCode; } 
@override String toString() { return 'FunctionCallOutputItemParamOutputVariant2InputImage(inputImageContentParamAutoParam: $inputImageContentParamAutoParam)'; } 
 }
final class FunctionCallOutputItemParamOutputVariant2InputFile extends FunctionCallOutputItemParamOutputVariant2 {const FunctionCallOutputItemParamOutputVariant2InputFile(this.inputFileContentParam);

factory FunctionCallOutputItemParamOutputVariant2InputFile.fromJson(Map<String, dynamic> json) { return FunctionCallOutputItemParamOutputVariant2InputFile(InputFileContentParam.fromJson(json)); }

final InputFileContentParam inputFileContentParam;

@override String get type { return 'input_file'; } 
@override Map<String, dynamic> toJson() { return {...inputFileContentParam.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FunctionCallOutputItemParamOutputVariant2InputFile && inputFileContentParam == other.inputFileContentParam; } 
@override int get hashCode { return inputFileContentParam.hashCode; } 
@override String toString() { return 'FunctionCallOutputItemParamOutputVariant2InputFile(inputFileContentParam: $inputFileContentParam)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
final class FunctionCallOutputItemParamOutputVariant2$Unknown extends FunctionCallOutputItemParamOutputVariant2 {const FunctionCallOutputItemParamOutputVariant2$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FunctionCallOutputItemParamOutputVariant2$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'FunctionCallOutputItemParamOutputVariant2.unknown($json)'; } 
 }
