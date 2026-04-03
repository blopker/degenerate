// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetCertificateAuthorityDetailsFormat {const RadarGetCertificateAuthorityDetailsFormat._(this.value);

factory RadarGetCertificateAuthorityDetailsFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetCertificateAuthorityDetailsFormat._(json),
}; }

static const RadarGetCertificateAuthorityDetailsFormat $json = RadarGetCertificateAuthorityDetailsFormat._('JSON');

static const RadarGetCertificateAuthorityDetailsFormat csv = RadarGetCertificateAuthorityDetailsFormat._('CSV');

static const List<RadarGetCertificateAuthorityDetailsFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetCertificateAuthorityDetailsFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetCertificateAuthorityDetailsFormat($value)'; } 
 }
