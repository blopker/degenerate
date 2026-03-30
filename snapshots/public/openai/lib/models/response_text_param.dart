// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'response_format_json_object.dart';import 'response_format_text.dart';import 'text_response_format_configuration.dart';import 'text_response_format_json_schema.dart';import 'verbosity.dart';/// Configuration options for a text response from the model. Can be plain
/// text or structured JSON data. Learn more:
/// - [Text inputs and outputs](/docs/guides/text)
/// - [Structured Outputs](/docs/guides/structured-outputs)
/// 
final class ResponseTextParam {const ResponseTextParam({this.format, this.verbosity, });

factory ResponseTextParam.fromJson(Map<String, dynamic> json) { return ResponseTextParam(
  format: json['format'] != null ? OneOf3.parse(json['format'], fromA: (v) => ResponseFormatText.fromJson(v as Map<String, dynamic>), fromB: (v) => TextResponseFormatJsonSchema.fromJson(v as Map<String, dynamic>), fromC: (v) => ResponseFormatJsonObject.fromJson(v as Map<String, dynamic>),) : null,
  verbosity: json['verbosity'] != null ? Verbosity.fromJson(json['verbosity'] as String) : null,
); }

final TextResponseFormatConfiguration? format;

final Verbosity? verbosity;

Map<String, dynamic> toJson() { return {
  if (format != null) 'format': format?.toJson(),
  if (verbosity != null) 'verbosity': verbosity?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'format', 'verbosity'}.contains(key)); } 
ResponseTextParam copyWith({TextResponseFormatConfiguration Function()? format, Verbosity? Function()? verbosity, }) { return ResponseTextParam(
  format: format != null ? format() : this.format,
  verbosity: verbosity != null ? verbosity() : this.verbosity,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseTextParam &&
          format == other.format &&
          verbosity == other.verbosity; } 
@override int get hashCode { return Object.hash(format, verbosity); } 
@override String toString() { return 'ResponseTextParam(format: $format, verbosity: $verbosity)'; } 
 }
