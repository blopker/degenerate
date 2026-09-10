// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class S3SourceResponseSchemaVendor {const S3SourceResponseSchemaVendor._(this.value);

factory S3SourceResponseSchemaVendor.fromJson(String json) { return switch (json) {
  's3' => s3,
  _ => S3SourceResponseSchemaVendor._(json),
}; }

static const S3SourceResponseSchemaVendor s3 = S3SourceResponseSchemaVendor._('s3');

static const List<S3SourceResponseSchemaVendor> values = [s3];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is S3SourceResponseSchemaVendor && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'S3SourceResponseSchemaVendor($value)'; } 
 }
@immutable final class S3SourceResponseSchema {const S3SourceResponseSchema({this.bucket, this.endpoint = const Omittable.absent(), this.keys = const Omittable.absent(), this.pathPrefix = const Omittable.absent(), this.vendor, });

factory S3SourceResponseSchema.fromJson(Map<String, dynamic> json) { return S3SourceResponseSchema(
  bucket: json['bucket'] as String?,
  endpoint: json.containsKey('endpoint') ? Omittable(json['endpoint'] as String?) : const Omittable.absent(),
  keys: json.containsKey('keys') ? Omittable((json['keys'] as List<dynamic>?)?.map((e) => e as String).toList()) : const Omittable.absent(),
  pathPrefix: json.containsKey('pathPrefix') ? Omittable(json['pathPrefix'] as String?) : const Omittable.absent(),
  vendor: json['vendor'] != null ? S3SourceResponseSchemaVendor.fromJson(json['vendor'] as String) : null,
); }

final String? bucket;

final Omittable<String?> endpoint;

final Omittable<List<String>?> keys;

final Omittable<String?> pathPrefix;

final S3SourceResponseSchemaVendor? vendor;

Map<String, dynamic> toJson() { return {
  'bucket': ?bucket,
  if (endpoint.isPresent) 'endpoint': endpoint.value,
  if (keys.isPresent) 'keys': keys.value,
  if (pathPrefix.isPresent) 'pathPrefix': pathPrefix.value,
  if (vendor != null) 'vendor': vendor?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'bucket', 'endpoint', 'keys', 'pathPrefix', 'vendor'}.contains(key)); } 
S3SourceResponseSchema copyWith({String? Function()? bucket, Omittable<String?>? endpoint, Omittable<List<String>?>? keys, Omittable<String?>? pathPrefix, S3SourceResponseSchemaVendor? Function()? vendor, }) { return S3SourceResponseSchema(
  bucket: bucket != null ? bucket() : this.bucket,
  endpoint: endpoint ?? this.endpoint,
  keys: keys ?? this.keys,
  pathPrefix: pathPrefix ?? this.pathPrefix,
  vendor: vendor != null ? vendor() : this.vendor,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is S3SourceResponseSchema &&
          bucket == other.bucket &&
          endpoint == other.endpoint &&
          keys.isPresent == other.keys.isPresent &&
          listEquals(keys.value, other.keys.value) &&
          pathPrefix == other.pathPrefix &&
          vendor == other.vendor; } 
@override int get hashCode { return Object.hash(bucket, endpoint, Object.hashAll(keys.value ?? const []), pathPrefix, vendor); } 
@override String toString() { return 'S3SourceResponseSchema(bucket: $bucket, endpoint: $endpoint, keys: $keys, pathPrefix: $pathPrefix, vendor: $vendor)'; } 
 }
