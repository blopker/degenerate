// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The kind parameter (optional) is used to differentiate between Logpush and Edge Log Delivery jobs (when supported by the dataset).
@immutable final class LogpushKind {const LogpushKind._(this.value);

factory LogpushKind.fromJson(String json) { return switch (json) {
  '' => $empty,
  'edge' => edge,
  _ => LogpushKind._(json),
}; }

static const LogpushKind $empty = LogpushKind._('');

static const LogpushKind edge = LogpushKind._('edge');

static const List<LogpushKind> values = [$empty, edge];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is LogpushKind && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'LogpushKind($value)'; } 
 }
