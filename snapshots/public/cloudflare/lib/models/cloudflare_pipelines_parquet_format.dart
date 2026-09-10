// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cloudflare_pipelines_parquet_compression.dart';@immutable final class CloudflarePipelinesParquetFormat {const CloudflarePipelinesParquetFormat({this.compression, this.rowGroupBytes = const Omittable.absent(), });

factory CloudflarePipelinesParquetFormat.fromJson(Map<String, dynamic> json) { return CloudflarePipelinesParquetFormat(
  compression: json['compression'] != null ? CloudflarePipelinesParquetCompression.fromJson(json['compression'] as String) : null,
  rowGroupBytes: json.containsKey('row_group_bytes') ? Omittable(json['row_group_bytes'] != null ? (json['row_group_bytes'] as num).toInt() : null) : const Omittable.absent(),
); }

final CloudflarePipelinesParquetCompression? compression;

final Omittable<int?> rowGroupBytes;

Map<String, dynamic> toJson() { return {
  if (compression != null) 'compression': compression?.toJson(),
  if (rowGroupBytes.isPresent) 'row_group_bytes': rowGroupBytes.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'compression', 'row_group_bytes'}.contains(key)); } 
CloudflarePipelinesParquetFormat copyWith({CloudflarePipelinesParquetCompression? Function()? compression, Omittable<int?>? rowGroupBytes, }) { return CloudflarePipelinesParquetFormat(
  compression: compression != null ? compression() : this.compression,
  rowGroupBytes: rowGroupBytes ?? this.rowGroupBytes,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CloudflarePipelinesParquetFormat &&
          compression == other.compression &&
          rowGroupBytes == other.rowGroupBytes; } 
@override int get hashCode { return Object.hash(compression, rowGroupBytes); } 
@override String toString() { return 'CloudflarePipelinesParquetFormat(compression: $compression, rowGroupBytes: $rowGroupBytes)'; } 
 }
