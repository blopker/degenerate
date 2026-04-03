// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CloudflarePipelinesDecimalEncoding {const CloudflarePipelinesDecimalEncoding._(this.value);

factory CloudflarePipelinesDecimalEncoding.fromJson(String json) { return switch (json) {
  'number' => number,
  'string' => string,
  'bytes' => bytes,
  _ => CloudflarePipelinesDecimalEncoding._(json),
}; }

static const CloudflarePipelinesDecimalEncoding number = CloudflarePipelinesDecimalEncoding._('number');

static const CloudflarePipelinesDecimalEncoding string = CloudflarePipelinesDecimalEncoding._('string');

static const CloudflarePipelinesDecimalEncoding bytes = CloudflarePipelinesDecimalEncoding._('bytes');

static const List<CloudflarePipelinesDecimalEncoding> values = [number, string, bytes];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CloudflarePipelinesDecimalEncoding && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CloudflarePipelinesDecimalEncoding($value)'; } 
 }
