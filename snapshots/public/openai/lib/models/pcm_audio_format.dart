// GENERATED CODE - DO NOT MODIFY BY HAND

/// The audio format. Always `audio/pcm`.
final class PcmAudioFormatType {const PcmAudioFormatType._(this.value);

factory PcmAudioFormatType.fromJson(String json) { return switch (json) {
  'audio/pcm' => audioPcm,
  _ => PcmAudioFormatType._(json),
}; }

static const PcmAudioFormatType audioPcm = PcmAudioFormatType._('audio/pcm');

static const List<PcmAudioFormatType> values = [audioPcm];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PcmAudioFormatType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PcmAudioFormatType($value)'; } 
 }
/// The sample rate of the audio. Always `24000`.
final class PcmAudioFormatRate {const PcmAudioFormatRate._(this.value);

factory PcmAudioFormatRate.fromJson(int json) { return switch (json) {
  24000 => $24000,
  _ => PcmAudioFormatRate._(json),
}; }

static const PcmAudioFormatRate $24000 = PcmAudioFormatRate._(24000);

static const List<PcmAudioFormatRate> values = [$24000];

final int value;

int toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PcmAudioFormatRate && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PcmAudioFormatRate($value)'; } 
 }
/// The PCM audio format. Only a 24kHz sample rate is supported.
final class PcmAudioFormat {const PcmAudioFormat({this.type, this.rate, });

factory PcmAudioFormat.fromJson(Map<String, dynamic> json) { return PcmAudioFormat(
  type: json['type'] != null ? PcmAudioFormatType.fromJson(json['type'] as String) : null,
  rate: json['rate'] != null ? PcmAudioFormatRate.fromJson((json['rate'] as num).toInt()) : null,
); }

/// The audio format. Always `audio/pcm`.
final PcmAudioFormatType? type;

/// The sample rate of the audio. Always `24000`.
final PcmAudioFormatRate? rate;

Map<String, dynamic> toJson() { return {
  if (type != null) 'type': type?.toJson(),
  if (rate != null) 'rate': rate?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'type', 'rate'}.contains(key)); } 
PcmAudioFormat copyWith({PcmAudioFormatType Function()? type, PcmAudioFormatRate Function()? rate, }) { return PcmAudioFormat(
  type: type != null ? type() : this.type,
  rate: rate != null ? rate() : this.rate,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PcmAudioFormat &&
          type == other.type &&
          rate == other.rate; } 
@override int get hashCode { return Object.hash(type, rate); } 
@override String toString() { return 'PcmAudioFormat(type: $type, rate: $rate)'; } 
 }
