// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The toggle's default value. Can be `enabled` or `disabled`.
@immutable final class TerminalReaderReaderResourceToggleDefaultValue {const TerminalReaderReaderResourceToggleDefaultValue._(this.value);

factory TerminalReaderReaderResourceToggleDefaultValue.fromJson(String json) { return switch (json) {
  'disabled' => disabled,
  'enabled' => enabled,
  _ => TerminalReaderReaderResourceToggleDefaultValue._(json),
}; }

static const TerminalReaderReaderResourceToggleDefaultValue disabled = TerminalReaderReaderResourceToggleDefaultValue._('disabled');

static const TerminalReaderReaderResourceToggleDefaultValue enabled = TerminalReaderReaderResourceToggleDefaultValue._('enabled');

static const List<TerminalReaderReaderResourceToggleDefaultValue> values = [disabled, enabled];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TerminalReaderReaderResourceToggleDefaultValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TerminalReaderReaderResourceToggleDefaultValue($value)'; } 
 }
/// The toggle's collected value. Can be `enabled` or `disabled`.
@immutable final class TerminalReaderReaderResourceToggleValue {const TerminalReaderReaderResourceToggleValue._(this.value);

factory TerminalReaderReaderResourceToggleValue.fromJson(String json) { return switch (json) {
  'disabled' => disabled,
  'enabled' => enabled,
  _ => TerminalReaderReaderResourceToggleValue._(json),
}; }

static const TerminalReaderReaderResourceToggleValue disabled = TerminalReaderReaderResourceToggleValue._('disabled');

static const TerminalReaderReaderResourceToggleValue enabled = TerminalReaderReaderResourceToggleValue._('enabled');

static const List<TerminalReaderReaderResourceToggleValue> values = [disabled, enabled];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TerminalReaderReaderResourceToggleValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TerminalReaderReaderResourceToggleValue($value)'; } 
 }
/// Information about an input's toggle
@immutable final class TerminalReaderReaderResourceToggle {const TerminalReaderReaderResourceToggle({this.defaultValue = const Omittable.absent(), this.description = const Omittable.absent(), this.title = const Omittable.absent(), this.value = const Omittable.absent(), });

factory TerminalReaderReaderResourceToggle.fromJson(Map<String, dynamic> json) { return TerminalReaderReaderResourceToggle(
  defaultValue: json.containsKey('default_value') ? Omittable(json['default_value'] != null ? TerminalReaderReaderResourceToggleDefaultValue.fromJson(json['default_value'] as String) : null) : const Omittable.absent(),
  description: json.containsKey('description') ? Omittable(json['description'] as String?) : const Omittable.absent(),
  title: json.containsKey('title') ? Omittable(json['title'] as String?) : const Omittable.absent(),
  value: json.containsKey('value') ? Omittable(json['value'] != null ? TerminalReaderReaderResourceToggleValue.fromJson(json['value'] as String) : null) : const Omittable.absent(),
); }

/// The toggle's default value. Can be `enabled` or `disabled`.
final Omittable<TerminalReaderReaderResourceToggleDefaultValue?> defaultValue;

/// The toggle's description text. Maximum 50 characters.
final Omittable<String?> description;

/// The toggle's title text. Maximum 50 characters.
final Omittable<String?> title;

/// The toggle's collected value. Can be `enabled` or `disabled`.
final Omittable<TerminalReaderReaderResourceToggleValue?> value;

Map<String, dynamic> toJson() { return {
  if (defaultValue.isPresent) 'default_value': defaultValue.value?.toJson(),
  if (description.isPresent) 'description': description.value,
  if (title.isPresent) 'title': title.value,
  if (value.isPresent) 'value': value.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'default_value', 'description', 'title', 'value'}.contains(key)); } 
TerminalReaderReaderResourceToggle copyWith({Omittable<TerminalReaderReaderResourceToggleDefaultValue?>? defaultValue, Omittable<String?>? description, Omittable<String?>? title, Omittable<TerminalReaderReaderResourceToggleValue?>? value, }) { return TerminalReaderReaderResourceToggle(
  defaultValue: defaultValue ?? this.defaultValue,
  description: description ?? this.description,
  title: title ?? this.title,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TerminalReaderReaderResourceToggle &&
          defaultValue == other.defaultValue &&
          description == other.description &&
          title == other.title &&
          value == other.value; } 
@override int get hashCode { return Object.hash(defaultValue, description, title, value); } 
@override String toString() { return 'TerminalReaderReaderResourceToggle(defaultValue: $defaultValue, description: $description, title: $title, value: $value)'; } 
 }
