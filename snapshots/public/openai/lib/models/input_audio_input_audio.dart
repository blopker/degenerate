// GENERATED CODE - DO NOT MODIFY BY HAND

/// The format of the audio data. Currently supported formats are `mp3` and
/// `wav`.
/// 
final class InputAudioInputAudioFormat {const InputAudioInputAudioFormat._(this.value);

factory InputAudioInputAudioFormat.fromJson(String json) { return switch (json) {
  'mp3' => mp3,
  'wav' => wav,
  _ => InputAudioInputAudioFormat._(json),
}; }

static const InputAudioInputAudioFormat mp3 = InputAudioInputAudioFormat._('mp3');

static const InputAudioInputAudioFormat wav = InputAudioInputAudioFormat._('wav');

static const List<InputAudioInputAudioFormat> values = [mp3, wav];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InputAudioInputAudioFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InputAudioInputAudioFormat($value)'; } 
 }
final class InputAudioInputAudio {const InputAudioInputAudio({required this.data, required this.format, });

factory InputAudioInputAudio.fromJson(Map<String, dynamic> json) { return InputAudioInputAudio(
  data: json['data'] as String,
  format: InputAudioInputAudioFormat.fromJson(json['format'] as String),
); }

/// Base64-encoded audio data.
/// 
final String data;

/// The format of the audio data. Currently supported formats are `mp3` and
/// `wav`.
/// 
final InputAudioInputAudioFormat format;

Map<String, dynamic> toJson() { return {
  'data': data,
  'format': format.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('data') && json['data'] is String &&
      json.containsKey('format'); } 
InputAudioInputAudio copyWith({String? data, InputAudioInputAudioFormat? format, }) { return InputAudioInputAudio(
  data: data ?? this.data,
  format: format ?? this.format,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InputAudioInputAudio &&
          data == other.data &&
          format == other.format; } 
@override int get hashCode { return Object.hash(data, format); } 
@override String toString() { return 'InputAudioInputAudio(data: $data, format: $format)'; } 
 }
