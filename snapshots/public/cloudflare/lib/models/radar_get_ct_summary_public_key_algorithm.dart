// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetCtSummaryPublicKeyAlgorithm {const RadarGetCtSummaryPublicKeyAlgorithm._(this.value);

factory RadarGetCtSummaryPublicKeyAlgorithm.fromJson(String json) { return switch (json) {
  'DSA' => dsa,
  'ECDSA' => ecdsa,
  'RSA' => rsa,
  _ => RadarGetCtSummaryPublicKeyAlgorithm._(json),
}; }

static const RadarGetCtSummaryPublicKeyAlgorithm dsa = RadarGetCtSummaryPublicKeyAlgorithm._('DSA');

static const RadarGetCtSummaryPublicKeyAlgorithm ecdsa = RadarGetCtSummaryPublicKeyAlgorithm._('ECDSA');

static const RadarGetCtSummaryPublicKeyAlgorithm rsa = RadarGetCtSummaryPublicKeyAlgorithm._('RSA');

static const List<RadarGetCtSummaryPublicKeyAlgorithm> values = [dsa, ecdsa, rsa];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetCtSummaryPublicKeyAlgorithm && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetCtSummaryPublicKeyAlgorithm($value)'; } 
 }
