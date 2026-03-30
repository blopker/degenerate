// GENERATED CODE - DO NOT MODIFY BY HAND

import 'cloudflare_pipelines_parquet_compression.dart';final class ParquetType {const ParquetType._(this.value);

factory ParquetType.fromJson(String json) { return switch (json) {
  'parquet' => parquet,
  _ => ParquetType._(json),
}; }

static const ParquetType parquet = ParquetType._('parquet');

static const List<ParquetType> values = [parquet];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ParquetType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ParquetType($value)'; } 
 }
final class Parquet {const Parquet({this.compression, this.rowGroupBytes, required this.type, });

factory Parquet.fromJson(Map<String, dynamic> json) { return Parquet(
  compression: json['compression'] != null ? CloudflarePipelinesParquetCompression.fromJson(json['compression'] as String) : null,
  rowGroupBytes: json['row_group_bytes'] != null ? (json['row_group_bytes'] as num).toInt() : null,
  type: ParquetType.fromJson(json['type'] as String),
); }

final CloudflarePipelinesParquetCompression? compression;

final int? rowGroupBytes;

final ParquetType type;

Map<String, dynamic> toJson() { return {
  if (compression != null) 'compression': compression?.toJson(),
  'row_group_bytes': ?rowGroupBytes,
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
Parquet copyWith({CloudflarePipelinesParquetCompression Function()? compression, int? Function()? rowGroupBytes, ParquetType? type, }) { return Parquet(
  compression: compression != null ? compression() : this.compression,
  rowGroupBytes: rowGroupBytes != null ? rowGroupBytes() : this.rowGroupBytes,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Parquet &&
          compression == other.compression &&
          rowGroupBytes == other.rowGroupBytes &&
          type == other.type; } 
@override int get hashCode { return Object.hash(compression, rowGroupBytes, type); } 
@override String toString() { return 'Parquet(compression: $compression, rowGroupBytes: $rowGroupBytes, type: $type)'; } 
 }
