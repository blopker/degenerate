// GENERATED CODE - DO NOT MODIFY BY HAND

/// The rendering mode.
final class MarkdownRenderRequestMode {const MarkdownRenderRequestMode._(this.value);

factory MarkdownRenderRequestMode.fromJson(String json) { return switch (json) {
  'markdown' => markdown,
  'gfm' => gfm,
  _ => MarkdownRenderRequestMode._(json),
}; }

static const MarkdownRenderRequestMode markdown = MarkdownRenderRequestMode._('markdown');

static const MarkdownRenderRequestMode gfm = MarkdownRenderRequestMode._('gfm');

static const List<MarkdownRenderRequestMode> values = [markdown, gfm];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MarkdownRenderRequestMode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MarkdownRenderRequestMode($value)'; } 
 }
final class MarkdownRenderRequest {const MarkdownRenderRequest({required this.text, this.mode = MarkdownRenderRequestMode.markdown, this.context, });

factory MarkdownRenderRequest.fromJson(Map<String, dynamic> json) { return MarkdownRenderRequest(
  text: json['text'] as String,
  mode: json.containsKey('mode') ? MarkdownRenderRequestMode.fromJson(json['mode'] as String) : MarkdownRenderRequestMode.markdown,
  context: json['context'] as String?,
); }

/// The Markdown text to render in HTML.
final String text;

/// The rendering mode.
final MarkdownRenderRequestMode mode;

/// The repository context to use when creating references in `gfm` mode.  For example, setting `context` to `octo-org/octo-repo` will change the text `#42` into an HTML link to issue 42 in the `octo-org/octo-repo` repository.
final String? context;

Map<String, dynamic> toJson() { return {
  'text': text,
  'mode': mode.toJson(),
  'context': ?context,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('text') && json['text'] is String; } 
MarkdownRenderRequest copyWith({String? text, MarkdownRenderRequestMode Function()? mode, String Function()? context, }) { return MarkdownRenderRequest(
  text: text ?? this.text,
  mode: mode != null ? mode() : this.mode,
  context: context != null ? context() : this.context,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MarkdownRenderRequest &&
          text == other.text &&
          mode == other.mode &&
          context == other.context; } 
@override int get hashCode { return Object.hash(text, mode, context); } 
@override String toString() { return 'MarkdownRenderRequest(text: $text, mode: $mode, context: $context)'; } 
 }
