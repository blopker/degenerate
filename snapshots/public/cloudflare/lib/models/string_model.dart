// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class StringModelType {const StringModelType._(this.value);

factory StringModelType.fromJson(String json) { return switch (json) {
  'string' => string,
  _ => StringModelType._(json),
}; }

static const StringModelType string = StringModelType._('string');

static const List<StringModelType> values = [string];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is StringModelType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'StringModelType($value)'; } 
 }
@immutable final class StringModel {const StringModel({required this.type});

factory StringModel.fromJson(Map<String, dynamic> json) { return StringModel(
  type: StringModelType.fromJson(json['type'] as String),
); }

final StringModelType type;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
StringModel copyWith({StringModelType? type}) { return StringModel(
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StringModel &&
          type == other.type; } 
@override int get hashCode { return type.hashCode; } 
@override String toString() { return 'StringModel(type: $type)'; } 
 }
