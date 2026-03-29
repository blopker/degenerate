// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'r2_slurper_jurisdiction.dart';final class R2SourceResponseSchemaVendor {const R2SourceResponseSchemaVendor._(this.value);

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
final class R2SourceResponseSchema {const R2SourceResponseSchema({this.bucket, this.jurisdiction, this.keys, this.pathPrefix, this.vendor, });

factory R2SourceResponseSchema.fromJson(Map<String, dynamic> json) { return R2SourceResponseSchema(
  bucket: json['bucket'] as String?,
  jurisdiction: json['jurisdiction'] != null ? R2SlurperJurisdiction.fromJson(json['jurisdiction'] as String) : null,
  keys: (json['keys'] as List<dynamic>?)?.map((e) => e as String).toList(),
  pathPrefix: json['pathPrefix'] as String?,
  vendor: json['vendor'] != null ? R2SourceResponseSchemaVendor.fromJson(json['vendor'] as String) : null,
); }

final String? bucket;

final R2SlurperJurisdiction? jurisdiction;

final List<String>? keys;

final String? pathPrefix;

final R2SourceResponseSchemaVendor? vendor;

Map<String, dynamic> toJson() { return {
  'bucket': ?bucket,
  if (jurisdiction != null) 'jurisdiction': jurisdiction?.toJson(),
  'keys': ?keys,
  'pathPrefix': ?pathPrefix,
  if (vendor != null) 'vendor': vendor?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
R2SourceResponseSchema copyWith({String Function()? bucket, R2SlurperJurisdiction Function()? jurisdiction, List<String>? Function()? keys, String? Function()? pathPrefix, R2SourceResponseSchemaVendor Function()? vendor, }) { return R2SourceResponseSchema(
  bucket: bucket != null ? bucket() : this.bucket,
  jurisdiction: jurisdiction != null ? jurisdiction() : this.jurisdiction,
  keys: keys != null ? keys() : this.keys,
  pathPrefix: pathPrefix != null ? pathPrefix() : this.pathPrefix,
  vendor: vendor != null ? vendor() : this.vendor,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is R2SourceResponseSchema &&
          bucket == other.bucket &&
          jurisdiction == other.jurisdiction &&
          listEquals(keys, other.keys) &&
          pathPrefix == other.pathPrefix &&
          vendor == other.vendor; } 
@override int get hashCode { return Object.hash(bucket, jurisdiction, Object.hashAll(keys ?? const []), pathPrefix, vendor); } 
@override String toString() { return 'R2SourceResponseSchema(bucket: $bucket, jurisdiction: $jurisdiction, keys: $keys, pathPrefix: $pathPrefix, vendor: $vendor)'; } 
 }
