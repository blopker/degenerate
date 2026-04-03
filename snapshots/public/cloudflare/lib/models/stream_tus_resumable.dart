// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Specifies the TUS protocol version. This value must be included in every upload request.
/// Notes: The only supported version of TUS protocol is 1.0.0.
@immutable final class StreamTusResumable {const StreamTusResumable._(this.value);

factory StreamTusResumable.fromJson(String json) { return switch (json) {
  '1.0.0' => $100,
  _ => StreamTusResumable._(json),
}; }

static const StreamTusResumable $100 = StreamTusResumable._('1.0.0');

static const List<StreamTusResumable> values = [$100];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is StreamTusResumable && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'StreamTusResumable($value)'; } 
 }
