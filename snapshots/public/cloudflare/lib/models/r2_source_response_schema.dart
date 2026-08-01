// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'r2_slurper_jurisdiction.dart';@immutable final class R2SourceResponseSchemaVendor {const R2SourceResponseSchemaVendor._(this.value);

factory R2SourceResponseSchemaVendor.fromJson(String json) { return switch (json) {
  'r2' => r2,
  _ => R2SourceResponseSchemaVendor._(json),
}; }

static const R2SourceResponseSchemaVendor r2 = R2SourceResponseSchemaVendor._('r2');

static const List<R2SourceResponseSchemaVendor> values = [r2];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is R2SourceResponseSchemaVendor && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'R2SourceResponseSchemaVendor($value)'; } 
 }
@immutable final class R2SourceResponseSchema {const R2SourceResponseSchema({this.bucket, this.jurisdiction, this.keys = const Omittable.absent(), this.pathPrefix = const Omittable.absent(), this.vendor, });

factory R2SourceResponseSchema.fromJson(Map<String, dynamic> json) { return R2SourceResponseSchema(
  bucket: json['bucket'] as String?,
  jurisdiction: json['jurisdiction'] != null ? R2SlurperJurisdiction.fromJson(json['jurisdiction'] as String) : null,
  keys: json.containsKey('keys') ? Omittable((json['keys'] as List<dynamic>?)?.map((e) => e as String).toList()) : const Omittable.absent(),
  pathPrefix: json.containsKey('pathPrefix') ? Omittable(json['pathPrefix'] as String?) : const Omittable.absent(),
  vendor: json['vendor'] != null ? R2SourceResponseSchemaVendor.fromJson(json['vendor'] as String) : null,
); }

final String? bucket;

final R2SlurperJurisdiction? jurisdiction;

final Omittable<List<String>?> keys;

final Omittable<String?> pathPrefix;

final R2SourceResponseSchemaVendor? vendor;

Map<String, dynamic> toJson() { return {
  'bucket': ?bucket,
  if (jurisdiction != null) 'jurisdiction': jurisdiction?.toJson(),
  if (keys.isPresent) 'keys': keys.value,
  if (pathPrefix.isPresent) 'pathPrefix': pathPrefix.value,
  if (vendor != null) 'vendor': vendor?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'bucket', 'jurisdiction', 'keys', 'pathPrefix', 'vendor'}.contains(key)); } 
R2SourceResponseSchema copyWith({String? Function()? bucket, R2SlurperJurisdiction? Function()? jurisdiction, Omittable<List<String>?>? keys, Omittable<String?>? pathPrefix, R2SourceResponseSchemaVendor? Function()? vendor, }) { return R2SourceResponseSchema(
  bucket: bucket != null ? bucket() : this.bucket,
  jurisdiction: jurisdiction != null ? jurisdiction() : this.jurisdiction,
  keys: keys ?? this.keys,
  pathPrefix: pathPrefix ?? this.pathPrefix,
  vendor: vendor != null ? vendor() : this.vendor,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is R2SourceResponseSchema &&
          bucket == other.bucket &&
          jurisdiction == other.jurisdiction &&
          keys.isPresent == other.keys.isPresent &&
          listEquals(keys.value, other.keys.value) &&
          pathPrefix == other.pathPrefix &&
          vendor == other.vendor; } 
@override int get hashCode { return Object.hash(bucket, jurisdiction, Object.hashAll(keys.value ?? const []), pathPrefix, vendor); } 
@override String toString() { return 'R2SourceResponseSchema(bucket: $bucket, jurisdiction: $jurisdiction, keys: $keys, pathPrefix: $pathPrefix, vendor: $vendor)'; } 
 }
