// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetAiBotsSummaryContentType {const RadarGetAiBotsSummaryContentType._(this.value);

factory RadarGetAiBotsSummaryContentType.fromJson(String json) { return switch (json) {
  'HTML' => html,
  'IMAGES' => images,
  'JSON' => $json,
  'JAVASCRIPT' => javascript,
  'CSS' => css,
  'PLAIN_TEXT' => plainText,
  'FONTS' => fonts,
  'XML' => xml,
  'YAML' => yaml,
  'VIDEO' => video,
  'AUDIO' => audio,
  'MARKDOWN' => markdown,
  'DOCUMENTS' => documents,
  'BINARY' => binary,
  'SERIALIZATION' => serialization,
  'OTHER' => $other,
  _ => RadarGetAiBotsSummaryContentType._(json),
}; }

static const RadarGetAiBotsSummaryContentType html = RadarGetAiBotsSummaryContentType._('HTML');

static const RadarGetAiBotsSummaryContentType images = RadarGetAiBotsSummaryContentType._('IMAGES');

static const RadarGetAiBotsSummaryContentType $json = RadarGetAiBotsSummaryContentType._('JSON');

static const RadarGetAiBotsSummaryContentType javascript = RadarGetAiBotsSummaryContentType._('JAVASCRIPT');

static const RadarGetAiBotsSummaryContentType css = RadarGetAiBotsSummaryContentType._('CSS');

static const RadarGetAiBotsSummaryContentType plainText = RadarGetAiBotsSummaryContentType._('PLAIN_TEXT');

static const RadarGetAiBotsSummaryContentType fonts = RadarGetAiBotsSummaryContentType._('FONTS');

static const RadarGetAiBotsSummaryContentType xml = RadarGetAiBotsSummaryContentType._('XML');

static const RadarGetAiBotsSummaryContentType yaml = RadarGetAiBotsSummaryContentType._('YAML');

static const RadarGetAiBotsSummaryContentType video = RadarGetAiBotsSummaryContentType._('VIDEO');

static const RadarGetAiBotsSummaryContentType audio = RadarGetAiBotsSummaryContentType._('AUDIO');

static const RadarGetAiBotsSummaryContentType markdown = RadarGetAiBotsSummaryContentType._('MARKDOWN');

static const RadarGetAiBotsSummaryContentType documents = RadarGetAiBotsSummaryContentType._('DOCUMENTS');

static const RadarGetAiBotsSummaryContentType binary = RadarGetAiBotsSummaryContentType._('BINARY');

static const RadarGetAiBotsSummaryContentType serialization = RadarGetAiBotsSummaryContentType._('SERIALIZATION');

static const RadarGetAiBotsSummaryContentType $other = RadarGetAiBotsSummaryContentType._('OTHER');

static const List<RadarGetAiBotsSummaryContentType> values = [html, images, $json, javascript, css, plainText, fonts, xml, yaml, video, audio, markdown, documents, binary, serialization, $other];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAiBotsSummaryContentType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAiBotsSummaryContentType($value)'; } 
 }
