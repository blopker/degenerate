// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetLeakedCredentialChecksSummaryCompromised {const RadarGetLeakedCredentialChecksSummaryCompromised._(this.value);

factory RadarGetLeakedCredentialChecksSummaryCompromised.fromJson(String json) { return switch (json) {
  'CLEAN' => clean,
  'COMPROMISED' => compromised,
  _ => RadarGetLeakedCredentialChecksSummaryCompromised._(json),
}; }

static const RadarGetLeakedCredentialChecksSummaryCompromised clean = RadarGetLeakedCredentialChecksSummaryCompromised._('CLEAN');

static const RadarGetLeakedCredentialChecksSummaryCompromised compromised = RadarGetLeakedCredentialChecksSummaryCompromised._('COMPROMISED');

static const List<RadarGetLeakedCredentialChecksSummaryCompromised> values = [clean, compromised];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetLeakedCredentialChecksSummaryCompromised && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetLeakedCredentialChecksSummaryCompromised($value)'; } 
 }
