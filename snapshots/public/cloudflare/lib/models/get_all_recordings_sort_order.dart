// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class GetAllRecordingsSortOrder {const GetAllRecordingsSortOrder._(this.value);

factory GetAllRecordingsSortOrder.fromJson(String json) { return switch (json) {
  'ASC' => asc,
  'DESC' => desc,
  _ => GetAllRecordingsSortOrder._(json),
}; }

static const GetAllRecordingsSortOrder asc = GetAllRecordingsSortOrder._('ASC');

static const GetAllRecordingsSortOrder desc = GetAllRecordingsSortOrder._('DESC');

static const List<GetAllRecordingsSortOrder> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetAllRecordingsSortOrder && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GetAllRecordingsSortOrder($value)'; } 
 }
