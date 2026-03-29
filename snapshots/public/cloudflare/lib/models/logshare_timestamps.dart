// GENERATED CODE - DO NOT MODIFY BY HAND

/// By default, timestamps in responses are returned as Unix nanosecond integers. The `?timestamps=` argument can be set to change the format in which response timestamps are returned. Possible values are: `unix`, `unixnano`, `rfc3339`. Note that `unix` and `unixnano` return timestamps as integers; `rfc3339` returns timestamps as strings.
final class LogshareTimestamps {const LogshareTimestamps._(this.value);

factory LogshareTimestamps.fromJson(String json) { return switch (json) {
  'unix' => unix,
  'unixnano' => unixnano,
  'rfc3339' => rfc3339,
  _ => LogshareTimestamps._(json),
}; }

static const LogshareTimestamps unix = LogshareTimestamps._('unix');

static const LogshareTimestamps unixnano = LogshareTimestamps._('unixnano');

static const LogshareTimestamps rfc3339 = LogshareTimestamps._('rfc3339');

static const List<LogshareTimestamps> values = [unix, unixnano, rfc3339];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is LogshareTimestamps && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'LogshareTimestamps($value)'; } 
 }
