// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class GcsSourceResponseSchemaVendor {const GcsSourceResponseSchemaVendor._(this.value);

factory GcsSourceResponseSchemaVendor.fromJson(String json) { return switch (json) {
  'gcs' => gcs,
  _ => GcsSourceResponseSchemaVendor._(json),
}; }

static const GcsSourceResponseSchemaVendor gcs = GcsSourceResponseSchemaVendor._('gcs');

static const List<GcsSourceResponseSchemaVendor> values = [gcs];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GcsSourceResponseSchemaVendor && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GcsSourceResponseSchemaVendor($value)'; } 
 }
@immutable final class GcsSourceResponseSchema {const GcsSourceResponseSchema({this.bucket, this.keys = const Omittable.absent(), this.pathPrefix = const Omittable.absent(), this.vendor, });

factory GcsSourceResponseSchema.fromJson(Map<String, dynamic> json) { return GcsSourceResponseSchema(
  bucket: json['bucket'] as String?,
  keys: json.containsKey('keys') ? Omittable((json['keys'] as List<dynamic>?)?.map((e) => e as String).toList()) : const Omittable.absent(),
  pathPrefix: json.containsKey('pathPrefix') ? Omittable(json['pathPrefix'] as String?) : const Omittable.absent(),
  vendor: json['vendor'] != null ? GcsSourceResponseSchemaVendor.fromJson(json['vendor'] as String) : null,
); }

final String? bucket;

final Omittable<List<String>?> keys;

final Omittable<String?> pathPrefix;

final GcsSourceResponseSchemaVendor? vendor;

Map<String, dynamic> toJson() { return {
  'bucket': ?bucket,
  if (keys.isPresent) 'keys': keys.value,
  if (pathPrefix.isPresent) 'pathPrefix': pathPrefix.value,
  if (vendor != null) 'vendor': vendor?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'bucket', 'keys', 'pathPrefix', 'vendor'}.contains(key)); } 
GcsSourceResponseSchema copyWith({String? Function()? bucket, Omittable<List<String>?>? keys, Omittable<String?>? pathPrefix, GcsSourceResponseSchemaVendor? Function()? vendor, }) { return GcsSourceResponseSchema(
  bucket: bucket != null ? bucket() : this.bucket,
  keys: keys ?? this.keys,
  pathPrefix: pathPrefix ?? this.pathPrefix,
  vendor: vendor != null ? vendor() : this.vendor,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GcsSourceResponseSchema &&
          bucket == other.bucket &&
          keys.isPresent == other.keys.isPresent &&
          listEquals(keys.value, other.keys.value) &&
          pathPrefix == other.pathPrefix &&
          vendor == other.vendor; } 
@override int get hashCode { return Object.hash(bucket, Object.hashAll(keys.value ?? const []), pathPrefix, vendor); } 
@override String toString() { return 'GcsSourceResponseSchema(bucket: $bucket, keys: $keys, pathPrefix: $pathPrefix, vendor: $vendor)'; } 
 }
