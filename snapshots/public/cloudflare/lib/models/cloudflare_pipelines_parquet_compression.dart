// GENERATED CODE - DO NOT MODIFY BY HAND

final class CloudflarePipelinesParquetCompression {const CloudflarePipelinesParquetCompression._(this.value);

factory CloudflarePipelinesParquetCompression.fromJson(String json) { return switch (json) {
  'uncompressed' => uncompressed,
  'snappy' => snappy,
  'gzip' => gzip,
  'zstd' => zstd,
  'lz4' => lz4,
  _ => CloudflarePipelinesParquetCompression._(json),
}; }

static const CloudflarePipelinesParquetCompression uncompressed = CloudflarePipelinesParquetCompression._('uncompressed');

static const CloudflarePipelinesParquetCompression snappy = CloudflarePipelinesParquetCompression._('snappy');

static const CloudflarePipelinesParquetCompression gzip = CloudflarePipelinesParquetCompression._('gzip');

static const CloudflarePipelinesParquetCompression zstd = CloudflarePipelinesParquetCompression._('zstd');

static const CloudflarePipelinesParquetCompression lz4 = CloudflarePipelinesParquetCompression._('lz4');

static const List<CloudflarePipelinesParquetCompression> values = [uncompressed, snappy, gzip, zstd, lz4];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CloudflarePipelinesParquetCompression && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CloudflarePipelinesParquetCompression($value)'; } 
 }
