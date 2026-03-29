// GENERATED CODE - DO NOT MODIFY BY HAND

final class Messages51MessagesUserContentVariant2InputAudioFormat {const Messages51MessagesUserContentVariant2InputAudioFormat._(this.value);

factory Messages51MessagesUserContentVariant2InputAudioFormat.fromJson(String json) { return switch (json) {
  'wav' => wav,
  'mp3' => mp3,
  _ => Messages51MessagesUserContentVariant2InputAudioFormat._(json),
}; }

static const Messages51MessagesUserContentVariant2InputAudioFormat wav = Messages51MessagesUserContentVariant2InputAudioFormat._('wav');

static const Messages51MessagesUserContentVariant2InputAudioFormat mp3 = Messages51MessagesUserContentVariant2InputAudioFormat._('mp3');

static const List<Messages51MessagesUserContentVariant2InputAudioFormat> values = [wav, mp3];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Messages51MessagesUserContentVariant2InputAudioFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Messages51MessagesUserContentVariant2InputAudioFormat($value)'; } 
 }
final class Messages51MessagesUserContentVariant2InputAudio {const Messages51MessagesUserContentVariant2InputAudio({this.data, this.format, });

factory Messages51MessagesUserContentVariant2InputAudio.fromJson(Map<String, dynamic> json) { return Messages51MessagesUserContentVariant2InputAudio(
  data: json['data'] as String?,
  format: json['format'] != null ? Messages51MessagesUserContentVariant2InputAudioFormat.fromJson(json['format'] as String) : null,
); }

final String? data;

final Messages51MessagesUserContentVariant2InputAudioFormat? format;

Map<String, dynamic> toJson() { return {
  'data': ?data,
  if (format != null) 'format': format?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'data', 'format'}.contains(key)); } 
Messages51MessagesUserContentVariant2InputAudio copyWith({String Function()? data, Messages51MessagesUserContentVariant2InputAudioFormat Function()? format, }) { return Messages51MessagesUserContentVariant2InputAudio(
  data: data != null ? data() : this.data,
  format: format != null ? format() : this.format,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages51MessagesUserContentVariant2InputAudio &&
          data == other.data &&
          format == other.format; } 
@override int get hashCode { return Object.hash(data, format); } 
@override String toString() { return 'Messages51MessagesUserContentVariant2InputAudio(data: $data, format: $format)'; } 
 }
