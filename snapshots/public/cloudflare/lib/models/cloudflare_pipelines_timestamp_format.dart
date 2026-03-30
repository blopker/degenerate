// GENERATED CODE - DO NOT MODIFY BY HAND

final class CloudflarePipelinesTimestampFormat {const CloudflarePipelinesTimestampFormat._(this.value);

factory CloudflarePipelinesTimestampFormat.fromJson(String json) { return switch (json) {
  'rfc3339' => rfc3339,
  'unix_millis' => unixMillis,
  _ => CloudflarePipelinesTimestampFormat._(json),
}; }

static const CloudflarePipelinesTimestampFormat rfc3339 = CloudflarePipelinesTimestampFormat._('rfc3339');

static const CloudflarePipelinesTimestampFormat unixMillis = CloudflarePipelinesTimestampFormat._('unix_millis');

static const List<CloudflarePipelinesTimestampFormat> values = [rfc3339, unixMillis];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CloudflarePipelinesTimestampFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CloudflarePipelinesTimestampFormat($value)'; } 
 }
