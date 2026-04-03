// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetLeakedCredentialChecksSummaryBotClass {const RadarGetLeakedCredentialChecksSummaryBotClass._(this.value);

factory RadarGetLeakedCredentialChecksSummaryBotClass.fromJson(String json) { return switch (json) {
  'LIKELY_AUTOMATED' => likelyAutomated,
  'LIKELY_HUMAN' => likelyHuman,
  _ => RadarGetLeakedCredentialChecksSummaryBotClass._(json),
}; }

static const RadarGetLeakedCredentialChecksSummaryBotClass likelyAutomated = RadarGetLeakedCredentialChecksSummaryBotClass._('LIKELY_AUTOMATED');

static const RadarGetLeakedCredentialChecksSummaryBotClass likelyHuman = RadarGetLeakedCredentialChecksSummaryBotClass._('LIKELY_HUMAN');

static const List<RadarGetLeakedCredentialChecksSummaryBotClass> values = [likelyAutomated, likelyHuman];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetLeakedCredentialChecksSummaryBotClass && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetLeakedCredentialChecksSummaryBotClass($value)'; } 
 }
