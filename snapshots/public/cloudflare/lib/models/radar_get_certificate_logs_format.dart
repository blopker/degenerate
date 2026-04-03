// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetCertificateLogsFormat {const RadarGetCertificateLogsFormat._(this.value);

factory RadarGetCertificateLogsFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetCertificateLogsFormat._(json),
}; }

static const RadarGetCertificateLogsFormat $json = RadarGetCertificateLogsFormat._('JSON');

static const RadarGetCertificateLogsFormat csv = RadarGetCertificateLogsFormat._('CSV');

static const List<RadarGetCertificateLogsFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetCertificateLogsFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetCertificateLogsFormat($value)'; } 
 }
