// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetLeakedCredentialChecksTimeseriesGroupCheckResult {const RadarGetLeakedCredentialChecksTimeseriesGroupCheckResult._(this.value);

factory RadarGetLeakedCredentialChecksTimeseriesGroupCheckResult.fromJson(String json) { return switch (json) {
  'CLEAN' => clean,
  'USERNAME_LEAKED' => usernameLeaked,
  'USERNAME_PASSWORD_SIMILAR' => usernamePasswordSimilar,
  'USERNAME_AND_PASSWORD_LEAKED' => usernameAndPasswordLeaked,
  'PASSWORD_LEAKED' => passwordLeaked,
  _ => RadarGetLeakedCredentialChecksTimeseriesGroupCheckResult._(json),
}; }

static const RadarGetLeakedCredentialChecksTimeseriesGroupCheckResult clean = RadarGetLeakedCredentialChecksTimeseriesGroupCheckResult._('CLEAN');

static const RadarGetLeakedCredentialChecksTimeseriesGroupCheckResult usernameLeaked = RadarGetLeakedCredentialChecksTimeseriesGroupCheckResult._('USERNAME_LEAKED');

static const RadarGetLeakedCredentialChecksTimeseriesGroupCheckResult usernamePasswordSimilar = RadarGetLeakedCredentialChecksTimeseriesGroupCheckResult._('USERNAME_PASSWORD_SIMILAR');

static const RadarGetLeakedCredentialChecksTimeseriesGroupCheckResult usernameAndPasswordLeaked = RadarGetLeakedCredentialChecksTimeseriesGroupCheckResult._('USERNAME_AND_PASSWORD_LEAKED');

static const RadarGetLeakedCredentialChecksTimeseriesGroupCheckResult passwordLeaked = RadarGetLeakedCredentialChecksTimeseriesGroupCheckResult._('PASSWORD_LEAKED');

static const List<RadarGetLeakedCredentialChecksTimeseriesGroupCheckResult> values = [clean, usernameLeaked, usernamePasswordSimilar, usernameAndPasswordLeaked, passwordLeaked];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetLeakedCredentialChecksTimeseriesGroupCheckResult && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetLeakedCredentialChecksTimeseriesGroupCheckResult($value)'; } 
 }
