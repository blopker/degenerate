// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The button style for the choice. Can be `primary` or `secondary`.
@immutable final class TerminalReaderReaderResourceChoiceStyle {const TerminalReaderReaderResourceChoiceStyle._(this.value);

factory TerminalReaderReaderResourceChoiceStyle.fromJson(String json) { return switch (json) {
  'primary' => primary,
  'secondary' => secondary,
  _ => TerminalReaderReaderResourceChoiceStyle._(json),
}; }

static const TerminalReaderReaderResourceChoiceStyle primary = TerminalReaderReaderResourceChoiceStyle._('primary');

static const TerminalReaderReaderResourceChoiceStyle secondary = TerminalReaderReaderResourceChoiceStyle._('secondary');

static const List<TerminalReaderReaderResourceChoiceStyle> values = [primary, secondary];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TerminalReaderReaderResourceChoiceStyle && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TerminalReaderReaderResourceChoiceStyle($value)'; } 
 }
/// Choice to be selected on a Reader
@immutable final class TerminalReaderReaderResourceChoice {const TerminalReaderReaderResourceChoice({required this.text, this.id = const Omittable.absent(), this.style = const Omittable.absent(), });

factory TerminalReaderReaderResourceChoice.fromJson(Map<String, dynamic> json) { return TerminalReaderReaderResourceChoice(
  id: json.containsKey('id') ? Omittable(json['id'] as String?) : const Omittable.absent(),
  style: json.containsKey('style') ? Omittable(json['style'] != null ? TerminalReaderReaderResourceChoiceStyle.fromJson(json['style'] as String) : null) : const Omittable.absent(),
  text: json['text'] as String,
); }

/// The identifier for the selected choice. Maximum 50 characters.
final Omittable<String?> id;

/// The button style for the choice. Can be `primary` or `secondary`.
final Omittable<TerminalReaderReaderResourceChoiceStyle?> style;

/// The text to be selected. Maximum 30 characters.
final String text;

Map<String, dynamic> toJson() { return {
  if (id.isPresent) 'id': id.value,
  if (style.isPresent) 'style': style.value?.toJson(),
  'text': text,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('text') && json['text'] is String; } 
TerminalReaderReaderResourceChoice copyWith({Omittable<String?>? id, Omittable<TerminalReaderReaderResourceChoiceStyle?>? style, String? text, }) { return TerminalReaderReaderResourceChoice(
  id: id ?? this.id,
  style: style ?? this.style,
  text: text ?? this.text,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TerminalReaderReaderResourceChoice &&
          id == other.id &&
          style == other.style &&
          text == other.text; } 
@override int get hashCode { return Object.hash(id, style, text); } 
@override String toString() { return 'TerminalReaderReaderResourceChoice(id: $id, style: $style, text: $text)'; } 
 }
