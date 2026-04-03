// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetBgpRpkiAspaSnapshotFormat {const RadarGetBgpRpkiAspaSnapshotFormat._(this.value);

factory RadarGetBgpRpkiAspaSnapshotFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetBgpRpkiAspaSnapshotFormat._(json),
}; }

static const RadarGetBgpRpkiAspaSnapshotFormat $json = RadarGetBgpRpkiAspaSnapshotFormat._('JSON');

static const RadarGetBgpRpkiAspaSnapshotFormat csv = RadarGetBgpRpkiAspaSnapshotFormat._('CSV');

static const List<RadarGetBgpRpkiAspaSnapshotFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetBgpRpkiAspaSnapshotFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetBgpRpkiAspaSnapshotFormat($value)'; } 
 }
