// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The category of the bot.
@immutable final class RadarGetBotsTimeseriesBotVerificationStatus {const RadarGetBotsTimeseriesBotVerificationStatus._(this.value);

factory RadarGetBotsTimeseriesBotVerificationStatus.fromJson(String json) { return switch (json) {
  'VERIFIED' => verified,
  _ => RadarGetBotsTimeseriesBotVerificationStatus._(json),
}; }

static const RadarGetBotsTimeseriesBotVerificationStatus verified = RadarGetBotsTimeseriesBotVerificationStatus._('VERIFIED');

static const List<RadarGetBotsTimeseriesBotVerificationStatus> values = [verified];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetBotsTimeseriesBotVerificationStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetBotsTimeseriesBotVerificationStatus($value)'; } 
 }
