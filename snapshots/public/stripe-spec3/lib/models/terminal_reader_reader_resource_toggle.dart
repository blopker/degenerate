// GENERATED CODE - DO NOT MODIFY BY HAND

/// The toggle's default value. Can be `enabled` or `disabled`.
final class TerminalReaderReaderResourceToggleDefaultValue {const TerminalReaderReaderResourceToggleDefaultValue._(this.value);

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
final class TerminalReaderReaderResourceToggleValue {const TerminalReaderReaderResourceToggleValue._(this.value);

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
final class TerminalReaderReaderResourceToggle {const TerminalReaderReaderResourceToggle({this.defaultValue, this.description, this.title, this.value, });

factory TerminalReaderReaderResourceToggle.fromJson(Map<String, dynamic> json) { return TerminalReaderReaderResourceToggle(
  defaultValue: json['default_value'] != null ? TerminalReaderReaderResourceToggleDefaultValue.fromJson(json['default_value'] as String) : null,
  description: json['description'] as String?,
  title: json['title'] as String?,
  value: json['value'] != null ? TerminalReaderReaderResourceToggleValue.fromJson(json['value'] as String) : null,
); }

/// The toggle's default value. Can be `enabled` or `disabled`.
final TerminalReaderReaderResourceToggleDefaultValue? defaultValue;

/// The toggle's description text. Maximum 50 characters.
final String? description;

/// The toggle's title text. Maximum 50 characters.
final String? title;

/// The toggle's collected value. Can be `enabled` or `disabled`.
final TerminalReaderReaderResourceToggleValue? value;

Map<String, dynamic> toJson() { return {
  if (defaultValue != null) 'default_value': defaultValue?.toJson(),
  'description': ?description,
  'title': ?title,
  if (value != null) 'value': value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
TerminalReaderReaderResourceToggle copyWith({TerminalReaderReaderResourceToggleDefaultValue? Function()? defaultValue, String? Function()? description, String? Function()? title, TerminalReaderReaderResourceToggleValue? Function()? value, }) { return TerminalReaderReaderResourceToggle(
  defaultValue: defaultValue != null ? defaultValue() : this.defaultValue,
  description: description != null ? description() : this.description,
  title: title != null ? title() : this.title,
  value: value != null ? value() : this.value,
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
