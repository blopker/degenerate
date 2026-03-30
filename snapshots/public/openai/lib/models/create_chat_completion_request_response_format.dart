// GENERATED CODE - DO NOT MODIFY BY HAND

import 'response_format_json_object.dart';import 'response_format_json_schema.dart';import 'response_format_text.dart';/// An object specifying the format that the model must output.
/// 
/// Setting to `{ "type": "json_schema", "json_schema": {...} }` enables
/// Structured Outputs which ensures the model will match your supplied JSON
/// schema. Learn more in the [Structured Outputs
/// guide](/docs/guides/structured-outputs).
/// 
/// Setting to `{ "type": "json_object" }` enables the older JSON mode, which
/// ensures the message the model generates is valid JSON. Using `json_schema`
/// is preferred for models that support it.
/// 
sealed class CreateChatCompletionRequestResponseFormat {const CreateChatCompletionRequestResponseFormat();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory CreateChatCompletionRequestResponseFormat.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'ResponseFormatText' => CreateChatCompletionRequestResponseFormatResponseFormatText.fromJson(json),
  'ResponseFormatJsonSchema' => CreateChatCompletionRequestResponseFormatResponseFormatJsonSchema.fromJson(json),
  'ResponseFormatJsonObject' => CreateChatCompletionRequestResponseFormatResponseFormatJsonObject.fromJson(json),
  _ => CreateChatCompletionRequestResponseFormat$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is CreateChatCompletionRequestResponseFormat$Unknown; } 
 }
final class CreateChatCompletionRequestResponseFormatResponseFormatText extends CreateChatCompletionRequestResponseFormat {const CreateChatCompletionRequestResponseFormatResponseFormatText(this.responseFormatText);

factory CreateChatCompletionRequestResponseFormatResponseFormatText.fromJson(Map<String, dynamic> json) { return CreateChatCompletionRequestResponseFormatResponseFormatText(ResponseFormatText.fromJson(json)); }

final ResponseFormatText responseFormatText;

@override String get type { return 'ResponseFormatText'; } 
@override Map<String, dynamic> toJson() { return {...responseFormatText.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateChatCompletionRequestResponseFormatResponseFormatText && responseFormatText == other.responseFormatText; } 
@override int get hashCode { return responseFormatText.hashCode; } 
@override String toString() { return 'CreateChatCompletionRequestResponseFormatResponseFormatText(responseFormatText: $responseFormatText)'; } 
 }
final class CreateChatCompletionRequestResponseFormatResponseFormatJsonSchema extends CreateChatCompletionRequestResponseFormat {const CreateChatCompletionRequestResponseFormatResponseFormatJsonSchema(this.responseFormatJsonSchema);

factory CreateChatCompletionRequestResponseFormatResponseFormatJsonSchema.fromJson(Map<String, dynamic> json) { return CreateChatCompletionRequestResponseFormatResponseFormatJsonSchema(ResponseFormatJsonSchema.fromJson(json)); }

final ResponseFormatJsonSchema responseFormatJsonSchema;

@override String get type { return 'ResponseFormatJsonSchema'; } 
@override Map<String, dynamic> toJson() { return {...responseFormatJsonSchema.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateChatCompletionRequestResponseFormatResponseFormatJsonSchema && responseFormatJsonSchema == other.responseFormatJsonSchema; } 
@override int get hashCode { return responseFormatJsonSchema.hashCode; } 
@override String toString() { return 'CreateChatCompletionRequestResponseFormatResponseFormatJsonSchema(responseFormatJsonSchema: $responseFormatJsonSchema)'; } 
 }
final class CreateChatCompletionRequestResponseFormatResponseFormatJsonObject extends CreateChatCompletionRequestResponseFormat {const CreateChatCompletionRequestResponseFormatResponseFormatJsonObject(this.responseFormatJsonObject);

factory CreateChatCompletionRequestResponseFormatResponseFormatJsonObject.fromJson(Map<String, dynamic> json) { return CreateChatCompletionRequestResponseFormatResponseFormatJsonObject(ResponseFormatJsonObject.fromJson(json)); }

final ResponseFormatJsonObject responseFormatJsonObject;

@override String get type { return 'ResponseFormatJsonObject'; } 
@override Map<String, dynamic> toJson() { return {...responseFormatJsonObject.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateChatCompletionRequestResponseFormatResponseFormatJsonObject && responseFormatJsonObject == other.responseFormatJsonObject; } 
@override int get hashCode { return responseFormatJsonObject.hashCode; } 
@override String toString() { return 'CreateChatCompletionRequestResponseFormatResponseFormatJsonObject(responseFormatJsonObject: $responseFormatJsonObject)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
final class CreateChatCompletionRequestResponseFormat$Unknown extends CreateChatCompletionRequestResponseFormat {const CreateChatCompletionRequestResponseFormat$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateChatCompletionRequestResponseFormat$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'CreateChatCompletionRequestResponseFormat.unknown($json)'; } 
 }
