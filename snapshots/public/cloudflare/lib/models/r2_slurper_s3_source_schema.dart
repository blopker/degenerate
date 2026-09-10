// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'r2_slurper_s3_like_creds_schema.dart';@immutable final class R2SlurperS3SourceSchemaVendor {const R2SlurperS3SourceSchemaVendor._(this.value);

factory R2SlurperS3SourceSchemaVendor.fromJson(String json) { return switch (json) {
  's3' => s3,
  _ => R2SlurperS3SourceSchemaVendor._(json),
}; }

static const R2SlurperS3SourceSchemaVendor s3 = R2SlurperS3SourceSchemaVendor._('s3');

static const List<R2SlurperS3SourceSchemaVendor> values = [s3];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is R2SlurperS3SourceSchemaVendor && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'R2SlurperS3SourceSchemaVendor($value)'; } 
 }
@immutable final class R2SlurperS3SourceSchema {const R2SlurperS3SourceSchema({required this.bucket, required this.secret, required this.vendor, this.endpoint = const Omittable.absent(), this.keys = const Omittable.absent(), this.pathPrefix = const Omittable.absent(), this.region = const Omittable.absent(), });

factory R2SlurperS3SourceSchema.fromJson(Map<String, dynamic> json) { return R2SlurperS3SourceSchema(
  bucket: json['bucket'] as String,
  endpoint: json.containsKey('endpoint') ? Omittable(json['endpoint'] as String?) : const Omittable.absent(),
  keys: json.containsKey('keys') ? Omittable((json['keys'] as List<dynamic>?)?.map((e) => e as String).toList()) : const Omittable.absent(),
  pathPrefix: json.containsKey('pathPrefix') ? Omittable(json['pathPrefix'] as String?) : const Omittable.absent(),
  region: json.containsKey('region') ? Omittable(json['region'] as String?) : const Omittable.absent(),
  secret: R2SlurperS3LikeCredsSchema.fromJson(json['secret'] as Map<String, dynamic>),
  vendor: R2SlurperS3SourceSchemaVendor.fromJson(json['vendor'] as String),
); }

final String bucket;

final Omittable<String?> endpoint;

final Omittable<List<String>?> keys;

final Omittable<String?> pathPrefix;

final Omittable<String?> region;

final R2SlurperS3LikeCredsSchema secret;

final R2SlurperS3SourceSchemaVendor vendor;

Map<String, dynamic> toJson() { return {
  'bucket': bucket,
  if (endpoint.isPresent) 'endpoint': endpoint.value,
  if (keys.isPresent) 'keys': keys.value,
  if (pathPrefix.isPresent) 'pathPrefix': pathPrefix.value,
  if (region.isPresent) 'region': region.value,
  'secret': secret.toJson(),
  'vendor': vendor.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('bucket') && json['bucket'] is String &&
      json.containsKey('secret') &&
      json.containsKey('vendor'); } 
R2SlurperS3SourceSchema copyWith({String? bucket, Omittable<String?>? endpoint, Omittable<List<String>?>? keys, Omittable<String?>? pathPrefix, Omittable<String?>? region, R2SlurperS3LikeCredsSchema? secret, R2SlurperS3SourceSchemaVendor? vendor, }) { return R2SlurperS3SourceSchema(
  bucket: bucket ?? this.bucket,
  endpoint: endpoint ?? this.endpoint,
  keys: keys ?? this.keys,
  pathPrefix: pathPrefix ?? this.pathPrefix,
  region: region ?? this.region,
  secret: secret ?? this.secret,
  vendor: vendor ?? this.vendor,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is R2SlurperS3SourceSchema &&
          bucket == other.bucket &&
          endpoint == other.endpoint &&
          keys.isPresent == other.keys.isPresent &&
          listEquals(keys.value, other.keys.value) &&
          pathPrefix == other.pathPrefix &&
          region == other.region &&
          secret == other.secret &&
          vendor == other.vendor; } 
@override int get hashCode { return Object.hash(bucket, endpoint, Object.hashAll(keys.value ?? const []), pathPrefix, region, secret, vendor); } 
@override String toString() { return 'R2SlurperS3SourceSchema(bucket: $bucket, endpoint: $endpoint, keys: $keys, pathPrefix: $pathPrefix, region: $region, secret: $secret, vendor: $vendor)'; } 
 }
