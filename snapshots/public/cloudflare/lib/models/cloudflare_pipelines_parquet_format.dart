// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cloudflare_pipelines_parquet_compression.dart';@immutable final class CloudflarePipelinesParquetFormat {const CloudflarePipelinesParquetFormat({this.compression, this.rowGroupBytes, });

factory CloudflarePipelinesParquetFormat.fromJson(Map<String, dynamic> json) { return CloudflarePipelinesParquetFormat(
  compression: json['compression'] != null ? CloudflarePipelinesParquetCompression.fromJson(json['compression'] as String) : null,
  rowGroupBytes: json['row_group_bytes'] != null ? (json['row_group_bytes'] as num).toInt() : null,
); }

final CloudflarePipelinesParquetCompression? compression;

final int? rowGroupBytes;

Map<String, dynamic> toJson() { return {
  if (compression != null) 'compression': compression?.toJson(),
  'row_group_bytes': ?rowGroupBytes,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'compression', 'row_group_bytes'}.contains(key)); } 
CloudflarePipelinesParquetFormat copyWith({CloudflarePipelinesParquetCompression Function()? compression, int? Function()? rowGroupBytes, }) { return CloudflarePipelinesParquetFormat(
  compression: compression != null ? compression() : this.compression,
  rowGroupBytes: rowGroupBytes != null ? rowGroupBytes() : this.rowGroupBytes,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CloudflarePipelinesParquetFormat &&
          compression == other.compression &&
          rowGroupBytes == other.rowGroupBytes; } 
@override int get hashCode { return Object.hash(compression, rowGroupBytes); } 
@override String toString() { return 'CloudflarePipelinesParquetFormat(compression: $compression, rowGroupBytes: $rowGroupBytes)'; } 
 }
