// GENERATED CODE - DO NOT MODIFY BY HAND

import 'cloudflare_pipelines_decimal_encoding.dart';import 'cloudflare_pipelines_timestamp_format.dart';final class Json2Type {const Json2Type._(this.value);

factory Json2Type.fromJson(String json) { return switch (json) {
  'json' => $json,
  _ => Json2Type._(json),
}; }

static const Json2Type $json = Json2Type._('json');

static const List<Json2Type> values = [$json];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Json2Type && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Json2Type($value)'; } 
 }
final class Json2 {const Json2({this.decimalEncoding, this.timestampFormat, this.unstructured, required this.type, });

factory Json2.fromJson(Map<String, dynamic> json) { return Json2(
  decimalEncoding: json['decimal_encoding'] != null ? CloudflarePipelinesDecimalEncoding.fromJson(json['decimal_encoding'] as String) : null,
  timestampFormat: json['timestamp_format'] != null ? CloudflarePipelinesTimestampFormat.fromJson(json['timestamp_format'] as String) : null,
  unstructured: json['unstructured'] as bool?,
  type: Json2Type.fromJson(json['type'] as String),
); }

final CloudflarePipelinesDecimalEncoding? decimalEncoding;

final CloudflarePipelinesTimestampFormat? timestampFormat;

final bool? unstructured;

final Json2Type type;

Map<String, dynamic> toJson() { return {
  if (decimalEncoding != null) 'decimal_encoding': decimalEncoding?.toJson(),
  if (timestampFormat != null) 'timestamp_format': timestampFormat?.toJson(),
  'unstructured': ?unstructured,
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
Json2 copyWith({CloudflarePipelinesDecimalEncoding Function()? decimalEncoding, CloudflarePipelinesTimestampFormat Function()? timestampFormat, bool Function()? unstructured, Json2Type? type, }) { return Json2(
  decimalEncoding: decimalEncoding != null ? decimalEncoding() : this.decimalEncoding,
  timestampFormat: timestampFormat != null ? timestampFormat() : this.timestampFormat,
  unstructured: unstructured != null ? unstructured() : this.unstructured,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Json2 &&
          decimalEncoding == other.decimalEncoding &&
          timestampFormat == other.timestampFormat &&
          unstructured == other.unstructured &&
          type == other.type; } 
@override int get hashCode { return Object.hash(decimalEncoding, timestampFormat, unstructured, type); } 
@override String toString() { return 'Json2(decimalEncoding: $decimalEncoding, timestampFormat: $timestampFormat, unstructured: $unstructured, type: $type)'; } 
 }
