// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Unconstrained text format. Always `text`.
@immutable final class TextFormatType {const TextFormatType._(this.value);

factory TextFormatType.fromJson(String json) { return switch (json) {
  'text' => text,
  _ => TextFormatType._(json),
}; }

static const TextFormatType text = TextFormatType._('text');

static const List<TextFormatType> values = [text];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TextFormatType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TextFormatType($value)'; } 
 }
/// Unconstrained free-form text.
@immutable final class TextFormat {const TextFormat({required this.type});

factory TextFormat.fromJson(Map<String, dynamic> json) { return TextFormat(
  type: TextFormatType.fromJson(json['type'] as String),
); }

/// Unconstrained text format. Always `text`.
final TextFormatType type;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
TextFormat copyWith({TextFormatType? type}) { return TextFormat(
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TextFormat &&
          type == other.type; } 
@override int get hashCode { return type.hashCode; } 
@override String toString() { return 'TextFormat(type: $type)'; } 
 }
