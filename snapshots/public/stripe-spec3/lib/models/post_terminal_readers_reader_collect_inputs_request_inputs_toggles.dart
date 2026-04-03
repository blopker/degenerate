// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTerminalReadersReaderCollectInputsRequestInputsTogglesDefaultValue {const PostTerminalReadersReaderCollectInputsRequestInputsTogglesDefaultValue._(this.value);

factory PostTerminalReadersReaderCollectInputsRequestInputsTogglesDefaultValue.fromJson(String json) { return switch (json) {
  'disabled' => disabled,
  'enabled' => enabled,
  _ => PostTerminalReadersReaderCollectInputsRequestInputsTogglesDefaultValue._(json),
}; }

static const PostTerminalReadersReaderCollectInputsRequestInputsTogglesDefaultValue disabled = PostTerminalReadersReaderCollectInputsRequestInputsTogglesDefaultValue._('disabled');

static const PostTerminalReadersReaderCollectInputsRequestInputsTogglesDefaultValue enabled = PostTerminalReadersReaderCollectInputsRequestInputsTogglesDefaultValue._('enabled');

static const List<PostTerminalReadersReaderCollectInputsRequestInputsTogglesDefaultValue> values = [disabled, enabled];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTerminalReadersReaderCollectInputsRequestInputsTogglesDefaultValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTerminalReadersReaderCollectInputsRequestInputsTogglesDefaultValue($value)'; } 
 }
@immutable final class PostTerminalReadersReaderCollectInputsRequestInputsToggles {const PostTerminalReadersReaderCollectInputsRequestInputsToggles({this.defaultValue, this.description, this.title, });

factory PostTerminalReadersReaderCollectInputsRequestInputsToggles.fromJson(Map<String, dynamic> json) { return PostTerminalReadersReaderCollectInputsRequestInputsToggles(
  defaultValue: json['default_value'] != null ? PostTerminalReadersReaderCollectInputsRequestInputsTogglesDefaultValue.fromJson(json['default_value'] as String) : null,
  description: json['description'] as String?,
  title: json['title'] as String?,
); }

final PostTerminalReadersReaderCollectInputsRequestInputsTogglesDefaultValue? defaultValue;

final String? description;

final String? title;

Map<String, dynamic> toJson() { return {
  if (defaultValue != null) 'default_value': defaultValue?.toJson(),
  'description': ?description,
  'title': ?title,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'default_value', 'description', 'title'}.contains(key)); } 
PostTerminalReadersReaderCollectInputsRequestInputsToggles copyWith({PostTerminalReadersReaderCollectInputsRequestInputsTogglesDefaultValue Function()? defaultValue, String Function()? description, String Function()? title, }) { return PostTerminalReadersReaderCollectInputsRequestInputsToggles(
  defaultValue: defaultValue != null ? defaultValue() : this.defaultValue,
  description: description != null ? description() : this.description,
  title: title != null ? title() : this.title,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTerminalReadersReaderCollectInputsRequestInputsToggles &&
          defaultValue == other.defaultValue &&
          description == other.description &&
          title == other.title; } 
@override int get hashCode { return Object.hash(defaultValue, description, title); } 
@override String toString() { return 'PostTerminalReadersReaderCollectInputsRequestInputsToggles(defaultValue: $defaultValue, description: $description, title: $title)'; } 
 }
