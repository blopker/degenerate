// GENERATED CODE - DO NOT MODIFY BY HAND

/// Filters results by bot verification status.
final class RadarGetBotsBotVerificationStatus {const RadarGetBotsBotVerificationStatus._(this.value);

factory RadarGetBotsBotVerificationStatus.fromJson(String json) { return switch (json) {
  'VERIFIED' => verified,
  _ => RadarGetBotsBotVerificationStatus._(json),
}; }

static const RadarGetBotsBotVerificationStatus verified = RadarGetBotsBotVerificationStatus._('VERIFIED');

static const List<RadarGetBotsBotVerificationStatus> values = [verified];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetBotsBotVerificationStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetBotsBotVerificationStatus($value)'; } 
 }
