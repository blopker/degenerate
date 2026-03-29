// GENERATED CODE - DO NOT MODIFY BY HAND

/// The button style for the choice. Can be `primary` or `secondary`.
final class TerminalReaderReaderResourceChoiceStyle {const TerminalReaderReaderResourceChoiceStyle._(this.value);

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
final class TerminalReaderReaderResourceChoice {const TerminalReaderReaderResourceChoice({this.id, this.style, required this.text, });

factory TerminalReaderReaderResourceChoice.fromJson(Map<String, dynamic> json) { return TerminalReaderReaderResourceChoice(
  id: json['id'] as String?,
  style: json['style'] != null ? TerminalReaderReaderResourceChoiceStyle.fromJson(json['style'] as String) : null,
  text: json['text'] as String,
); }

/// The identifier for the selected choice. Maximum 50 characters.
final String? id;

/// The button style for the choice. Can be `primary` or `secondary`.
final TerminalReaderReaderResourceChoiceStyle? style;

/// The text to be selected. Maximum 30 characters.
final String text;

Map<String, dynamic> toJson() { return {
  'id': ?id,
  if (style != null) 'style': style?.toJson(),
  'text': text,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('text') && json['text'] is String; } 
TerminalReaderReaderResourceChoice copyWith({String? Function()? id, TerminalReaderReaderResourceChoiceStyle? Function()? style, String? text, }) { return TerminalReaderReaderResourceChoice(
  id: id != null ? id() : this.id,
  style: style != null ? style() : this.style,
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
