// GENERATED CODE - DO NOT MODIFY BY HAND

import 'cloudflare_pipelines_json_format.dart';import 'cloudflare_pipelines_parquet_format.dart';sealed class CloudflarePipelinesFormat {const CloudflarePipelinesFormat();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory CloudflarePipelinesFormat.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'Json' => CloudflarePipelinesFormatJson.fromJson(json),
  'Parquet' => CloudflarePipelinesFormatParquet.fromJson(json),
  _ => CloudflarePipelinesFormat$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is CloudflarePipelinesFormat$Unknown; } 
 }
final class CloudflarePipelinesFormatJson extends CloudflarePipelinesFormat {const CloudflarePipelinesFormatJson(this.cloudflarePipelinesJsonFormat);

factory CloudflarePipelinesFormatJson.fromJson(Map<String, dynamic> json) { return CloudflarePipelinesFormatJson(CloudflarePipelinesJsonFormat.fromJson(json)); }

final CloudflarePipelinesJsonFormat cloudflarePipelinesJsonFormat;

@override String get type { return 'Json'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...cloudflarePipelinesJsonFormat.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CloudflarePipelinesFormatJson && cloudflarePipelinesJsonFormat == other.cloudflarePipelinesJsonFormat; } 
@override int get hashCode { return cloudflarePipelinesJsonFormat.hashCode; } 
@override String toString() { return 'CloudflarePipelinesFormatJson(cloudflarePipelinesJsonFormat: $cloudflarePipelinesJsonFormat)'; } 
 }
final class CloudflarePipelinesFormatParquet extends CloudflarePipelinesFormat {const CloudflarePipelinesFormatParquet(this.cloudflarePipelinesParquetFormat);

factory CloudflarePipelinesFormatParquet.fromJson(Map<String, dynamic> json) { return CloudflarePipelinesFormatParquet(CloudflarePipelinesParquetFormat.fromJson(json)); }

final CloudflarePipelinesParquetFormat cloudflarePipelinesParquetFormat;

@override String get type { return 'Parquet'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...cloudflarePipelinesParquetFormat.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CloudflarePipelinesFormatParquet && cloudflarePipelinesParquetFormat == other.cloudflarePipelinesParquetFormat; } 
@override int get hashCode { return cloudflarePipelinesParquetFormat.hashCode; } 
@override String toString() { return 'CloudflarePipelinesFormatParquet(cloudflarePipelinesParquetFormat: $cloudflarePipelinesParquetFormat)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
final class CloudflarePipelinesFormat$Unknown extends CloudflarePipelinesFormat {const CloudflarePipelinesFormat$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CloudflarePipelinesFormat$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'CloudflarePipelinesFormat.unknown($json)'; } 
 }
