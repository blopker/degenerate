// GENERATED CODE - DO NOT MODIFY BY HAND

import 'cloudflare_pipelines_decimal_encoding.dart';import 'cloudflare_pipelines_timestamp_format.dart';final class CloudflarePipelinesJsonFormat {const CloudflarePipelinesJsonFormat({this.decimalEncoding, this.timestampFormat, this.unstructured, });

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
