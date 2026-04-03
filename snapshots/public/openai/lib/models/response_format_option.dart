// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'response_format_json_object.dart';import 'response_format_json_schema.dart';import 'response_format_text.dart';/// `auto` is the default value
/// 
@immutable final class ResponseFormatOptionVariant1 {const ResponseFormatOptionVariant1._(this.value);

factory ResponseFormatOptionVariant1.fromJson(String json) { return switch (json) {
  'auto' => auto,
  _ => ResponseFormatOptionVariant1._(json),
}; }

static const ResponseFormatOptionVariant1 auto = ResponseFormatOptionVariant1._('auto');

static const List<ResponseFormatOptionVariant1> values = [auto];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseFormatOptionVariant1 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ResponseFormatOptionVariant1($value)'; } 
 }
typedef ResponseFormatOption = OneOf4<ResponseFormatOptionVariant1,ResponseFormatText,ResponseFormatJsonObject,ResponseFormatJsonSchema>;
