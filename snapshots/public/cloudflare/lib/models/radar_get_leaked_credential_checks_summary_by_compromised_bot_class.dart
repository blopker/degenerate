// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetLeakedCredentialChecksSummaryByCompromisedBotClass {const RadarGetLeakedCredentialChecksSummaryByCompromisedBotClass._(this.value);

factory RadarGetLeakedCredentialChecksSummaryByCompromisedBotClass.fromJson(String json) { return switch (json) {
  'LIKELY_AUTOMATED' => likelyAutomated,
  'LIKELY_HUMAN' => likelyHuman,
  _ => RadarGetLeakedCredentialChecksSummaryByCompromisedBotClass._(json),
}; }

static const RadarGetLeakedCredentialChecksSummaryByCompromisedBotClass likelyAutomated = RadarGetLeakedCredentialChecksSummaryByCompromisedBotClass._('LIKELY_AUTOMATED');

static const RadarGetLeakedCredentialChecksSummaryByCompromisedBotClass likelyHuman = RadarGetLeakedCredentialChecksSummaryByCompromisedBotClass._('LIKELY_HUMAN');

static const List<RadarGetLeakedCredentialChecksSummaryByCompromisedBotClass> values = [likelyAutomated, likelyHuman];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetLeakedCredentialChecksSummaryByCompromisedBotClass && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetLeakedCredentialChecksSummaryByCompromisedBotClass($value)'; } 
 }
