// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'response_format_json_object.dart';import 'response_format_text.dart';import 'text_response_format_configuration.dart';import 'text_response_format_json_schema.dart';/// Configuration options for a text response from the model. Can be plain
/// text or structured JSON data. Learn more:
/// - [Text inputs and outputs](/docs/guides/text)
/// - [Structured Outputs](/docs/guides/structured-outputs)
/// 
@immutable final class CreateEvalResponsesRunDataSourceSamplingParamsText {const CreateEvalResponsesRunDataSourceSamplingParamsText({this.format});

factory CreateEvalResponsesRunDataSourceSamplingParamsText.fromJson(Map<String, dynamic> json) { return CreateEvalResponsesRunDataSourceSamplingParamsText(
  format: json['format'] != null ? OneOf3.parse(json['format'], fromA: (v) => ResponseFormatText.fromJson(v as Map<String, dynamic>), fromB: (v) => TextResponseFormatJsonSchema.fromJson(v as Map<String, dynamic>), fromC: (v) => ResponseFormatJsonObject.fromJson(v as Map<String, dynamic>),) : null,
); }

final TextResponseFormatConfiguration? format;

Map<String, dynamic> toJson() { return {
  if (format != null) 'format': format?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'format'}.contains(key)); } 
CreateEvalResponsesRunDataSourceSamplingParamsText copyWith({TextResponseFormatConfiguration Function()? format}) { return CreateEvalResponsesRunDataSourceSamplingParamsText(
  format: format != null ? format() : this.format,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateEvalResponsesRunDataSourceSamplingParamsText &&
          format == other.format; } 
@override int get hashCode { return format.hashCode; } 
@override String toString() { return 'CreateEvalResponsesRunDataSourceSamplingParamsText(format: $format)'; } 
 }
