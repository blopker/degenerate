// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'response_format_json_object.dart';import 'response_format_json_schema.dart';import 'response_format_text.dart';/// An object specifying the format that the model must output.
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
  'text' => CreateChatCompletionRequestResponseFormatText.fromJson(json),
  'json_schema' => CreateChatCompletionRequestResponseFormatJsonSchema.fromJson(json),
  'json_object' => CreateChatCompletionRequestResponseFormatJsonObject.fromJson(json),
  _ => CreateChatCompletionRequestResponseFormat$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is CreateChatCompletionRequestResponseFormat$Unknown; } 
 }
@immutable final class CreateChatCompletionRequestResponseFormatText extends CreateChatCompletionRequestResponseFormat {const CreateChatCompletionRequestResponseFormatText(this.responseFormatText);

factory CreateChatCompletionRequestResponseFormatText.fromJson(Map<String, dynamic> json) { return CreateChatCompletionRequestResponseFormatText(ResponseFormatText.fromJson(json)); }

final ResponseFormatText responseFormatText;

@override String get type { return 'text'; } 
@override Map<String, dynamic> toJson() { return {...responseFormatText.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateChatCompletionRequestResponseFormatText && responseFormatText == other.responseFormatText; } 
@override int get hashCode { return responseFormatText.hashCode; } 
@override String toString() { return 'CreateChatCompletionRequestResponseFormatText(responseFormatText: $responseFormatText)'; } 
 }
@immutable final class CreateChatCompletionRequestResponseFormatJsonSchema extends CreateChatCompletionRequestResponseFormat {const CreateChatCompletionRequestResponseFormatJsonSchema(this.responseFormatJsonSchema);

factory CreateChatCompletionRequestResponseFormatJsonSchema.fromJson(Map<String, dynamic> json) { return CreateChatCompletionRequestResponseFormatJsonSchema(ResponseFormatJsonSchema.fromJson(json)); }

final ResponseFormatJsonSchema responseFormatJsonSchema;

@override String get type { return 'json_schema'; } 
@override Map<String, dynamic> toJson() { return {...responseFormatJsonSchema.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateChatCompletionRequestResponseFormatJsonSchema && responseFormatJsonSchema == other.responseFormatJsonSchema; } 
@override int get hashCode { return responseFormatJsonSchema.hashCode; } 
@override String toString() { return 'CreateChatCompletionRequestResponseFormatJsonSchema(responseFormatJsonSchema: $responseFormatJsonSchema)'; } 
 }
@immutable final class CreateChatCompletionRequestResponseFormatJsonObject extends CreateChatCompletionRequestResponseFormat {const CreateChatCompletionRequestResponseFormatJsonObject(this.responseFormatJsonObject);

factory CreateChatCompletionRequestResponseFormatJsonObject.fromJson(Map<String, dynamic> json) { return CreateChatCompletionRequestResponseFormatJsonObject(ResponseFormatJsonObject.fromJson(json)); }

final ResponseFormatJsonObject responseFormatJsonObject;

@override String get type { return 'json_object'; } 
@override Map<String, dynamic> toJson() { return {...responseFormatJsonObject.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateChatCompletionRequestResponseFormatJsonObject && responseFormatJsonObject == other.responseFormatJsonObject; } 
@override int get hashCode { return responseFormatJsonObject.hashCode; } 
@override String toString() { return 'CreateChatCompletionRequestResponseFormatJsonObject(responseFormatJsonObject: $responseFormatJsonObject)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
@immutable final class CreateChatCompletionRequestResponseFormat$Unknown extends CreateChatCompletionRequestResponseFormat {const CreateChatCompletionRequestResponseFormat$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateChatCompletionRequestResponseFormat$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'CreateChatCompletionRequestResponseFormat.unknown($json)'; } 
 }
