// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'r2_slurper_gcs_like_creds_schema.dart';@immutable final class R2SlurperGcsSourceSchemaVendor {const R2SlurperGcsSourceSchemaVendor._(this.value);

factory R2SlurperGcsSourceSchemaVendor.fromJson(String json) { return switch (json) {
  'gcs' => gcs,
  _ => R2SlurperGcsSourceSchemaVendor._(json),
}; }

static const R2SlurperGcsSourceSchemaVendor gcs = R2SlurperGcsSourceSchemaVendor._('gcs');

static const List<R2SlurperGcsSourceSchemaVendor> values = [gcs];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is R2SlurperGcsSourceSchemaVendor && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'R2SlurperGcsSourceSchemaVendor($value)'; } 
 }
@immutable final class R2SlurperGcsSourceSchema {const R2SlurperGcsSourceSchema({required this.bucket, required this.secret, required this.vendor, this.keys = const Omittable.absent(), this.pathPrefix = const Omittable.absent(), });

factory R2SlurperGcsSourceSchema.fromJson(Map<String, dynamic> json) { return R2SlurperGcsSourceSchema(
  bucket: json['bucket'] as String,
  keys: json.containsKey('keys') ? Omittable((json['keys'] as List<dynamic>?)?.map((e) => e as String).toList()) : const Omittable.absent(),
  pathPrefix: json.containsKey('pathPrefix') ? Omittable(json['pathPrefix'] as String?) : const Omittable.absent(),
  secret: R2SlurperGcsLikeCredsSchema.fromJson(json['secret'] as Map<String, dynamic>),
  vendor: R2SlurperGcsSourceSchemaVendor.fromJson(json['vendor'] as String),
); }

final String bucket;

final Omittable<List<String>?> keys;

final Omittable<String?> pathPrefix;

final R2SlurperGcsLikeCredsSchema secret;

final R2SlurperGcsSourceSchemaVendor vendor;

Map<String, dynamic> toJson() { return {
  'bucket': bucket,
  if (keys.isPresent) 'keys': keys.value,
  if (pathPrefix.isPresent) 'pathPrefix': pathPrefix.value,
  'secret': secret.toJson(),
  'vendor': vendor.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('bucket') && json['bucket'] is String &&
      json.containsKey('secret') &&
      json.containsKey('vendor'); } 
R2SlurperGcsSourceSchema copyWith({String? bucket, Omittable<List<String>?>? keys, Omittable<String?>? pathPrefix, R2SlurperGcsLikeCredsSchema? secret, R2SlurperGcsSourceSchemaVendor? vendor, }) { return R2SlurperGcsSourceSchema(
  bucket: bucket ?? this.bucket,
  keys: keys ?? this.keys,
  pathPrefix: pathPrefix ?? this.pathPrefix,
  secret: secret ?? this.secret,
  vendor: vendor ?? this.vendor,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is R2SlurperGcsSourceSchema &&
          bucket == other.bucket &&
          keys.isPresent == other.keys.isPresent &&
          listEquals(keys.value, other.keys.value) &&
          pathPrefix == other.pathPrefix &&
          secret == other.secret &&
          vendor == other.vendor; } 
@override int get hashCode { return Object.hash(bucket, Object.hashAll(keys.value ?? const []), pathPrefix, secret, vendor); } 
@override String toString() { return 'R2SlurperGcsSourceSchema(bucket: $bucket, keys: $keys, pathPrefix: $pathPrefix, secret: $secret, vendor: $vendor)'; } 
 }
