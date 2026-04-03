// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetEmailSecurityTopTldsByMessagesFormat {const RadarGetEmailSecurityTopTldsByMessagesFormat._(this.value);

factory RadarGetEmailSecurityTopTldsByMessagesFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetEmailSecurityTopTldsByMessagesFormat._(json),
}; }

static const RadarGetEmailSecurityTopTldsByMessagesFormat $json = RadarGetEmailSecurityTopTldsByMessagesFormat._('JSON');

static const RadarGetEmailSecurityTopTldsByMessagesFormat csv = RadarGetEmailSecurityTopTldsByMessagesFormat._('CSV');

static const List<RadarGetEmailSecurityTopTldsByMessagesFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecurityTopTldsByMessagesFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecurityTopTldsByMessagesFormat($value)'; } 
 }
