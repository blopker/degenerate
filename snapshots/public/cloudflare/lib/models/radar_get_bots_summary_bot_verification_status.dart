// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The category of the bot.
@immutable final class RadarGetBotsSummaryBotVerificationStatus {const RadarGetBotsSummaryBotVerificationStatus._(this.value);

factory RadarGetBotsSummaryBotVerificationStatus.fromJson(String json) { return switch (json) {
  'VERIFIED' => verified,
  _ => RadarGetBotsSummaryBotVerificationStatus._(json),
}; }

static const RadarGetBotsSummaryBotVerificationStatus verified = RadarGetBotsSummaryBotVerificationStatus._('VERIFIED');

static const List<RadarGetBotsSummaryBotVerificationStatus> values = [verified];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetBotsSummaryBotVerificationStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetBotsSummaryBotVerificationStatus($value)'; } 
 }
