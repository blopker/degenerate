// GENERATED CODE - DO NOT MODIFY BY HAND

final class CloudflarePipelinesDecimalEncoding {const CloudflarePipelinesDecimalEncoding._(this.value);

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
final class CloudflarePipelinesJsonFormat {const CloudflarePipelinesJsonFormat({this.decimalEncoding, this.timestampFormat, this.unstructured, });

factory CloudflarePipelinesJsonFormat.fromJson(Map<String, dynamic> json) { return CloudflarePipelinesJsonFormat(
  decimalEncoding: json['decimal_encoding'] != null ? CloudflarePipelinesDecimalEncoding.fromJson(json['decimal_encoding'] as String) : null,
  timestampFormat: json['timestamp_format'] != null ? CloudflarePipelinesTimestampFormat.fromJson(json['timestamp_format'] as String) : null,
  unstructured: json['unstructured'] as bool?,
); }

final CloudflarePipelinesDecimalEncoding? decimalEncoding;

final CloudflarePipelinesTimestampFormat? timestampFormat;

final bool? unstructured;

Map<String, dynamic> toJson() { return {
  if (decimalEncoding != null) 'decimal_encoding': decimalEncoding?.toJson(),
  if (timestampFormat != null) 'timestamp_format': timestampFormat?.toJson(),
  'unstructured': ?unstructured,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'decimal_encoding', 'timestamp_format', 'unstructured'}.contains(key)); } 
CloudflarePipelinesJsonFormat copyWith({CloudflarePipelinesDecimalEncoding Function()? decimalEncoding, CloudflarePipelinesTimestampFormat Function()? timestampFormat, bool Function()? unstructured, }) { return CloudflarePipelinesJsonFormat(
  decimalEncoding: decimalEncoding != null ? decimalEncoding() : this.decimalEncoding,
  timestampFormat: timestampFormat != null ? timestampFormat() : this.timestampFormat,
  unstructured: unstructured != null ? unstructured() : this.unstructured,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CloudflarePipelinesJsonFormat &&
          decimalEncoding == other.decimalEncoding &&
          timestampFormat == other.timestampFormat &&
          unstructured == other.unstructured; } 
@override int get hashCode { return Object.hash(decimalEncoding, timestampFormat, unstructured); } 
@override String toString() { return 'CloudflarePipelinesJsonFormat(decimalEncoding: $decimalEncoding, timestampFormat: $timestampFormat, unstructured: $unstructured)'; } 
 }
