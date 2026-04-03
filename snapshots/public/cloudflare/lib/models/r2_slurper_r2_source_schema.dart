// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'r2_slurper_jurisdiction.dart';import 'r2_slurper_s3_like_creds_schema.dart';@immutable final class R2SlurperR2SourceSchemaVendor {const R2SlurperR2SourceSchemaVendor._(this.value);

factory R2SlurperR2SourceSchemaVendor.fromJson(String json) { return switch (json) {
  'r2' => r2,
  _ => R2SlurperR2SourceSchemaVendor._(json),
}; }

static const R2SlurperR2SourceSchemaVendor r2 = R2SlurperR2SourceSchemaVendor._('r2');

static const List<R2SlurperR2SourceSchemaVendor> values = [r2];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is R2SlurperR2SourceSchemaVendor && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'R2SlurperR2SourceSchemaVendor($value)'; } 
 }
@immutable final class R2SlurperR2SourceSchema {const R2SlurperR2SourceSchema({required this.bucket, required this.secret, required this.vendor, this.jurisdiction, this.keys, this.pathPrefix, });

factory R2SlurperR2SourceSchema.fromJson(Map<String, dynamic> json) { return R2SlurperR2SourceSchema(
  bucket: json['bucket'] as String,
  jurisdiction: json['jurisdiction'] != null ? R2SlurperJurisdiction.fromJson(json['jurisdiction'] as String) : null,
  keys: (json['keys'] as List<dynamic>?)?.map((e) => e as String).toList(),
  pathPrefix: json['pathPrefix'] as String?,
  secret: R2SlurperS3LikeCredsSchema.fromJson(json['secret'] as Map<String, dynamic>),
  vendor: R2SlurperR2SourceSchemaVendor.fromJson(json['vendor'] as String),
); }

final String bucket;

final R2SlurperJurisdiction? jurisdiction;

final List<String>? keys;

final String? pathPrefix;

final R2SlurperS3LikeCredsSchema secret;

final R2SlurperR2SourceSchemaVendor vendor;

Map<String, dynamic> toJson() { return {
  'bucket': bucket,
  if (jurisdiction != null) 'jurisdiction': jurisdiction?.toJson(),
  'keys': ?keys,
  'pathPrefix': ?pathPrefix,
  'secret': secret.toJson(),
  'vendor': vendor.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('bucket') && json['bucket'] is String &&
      json.containsKey('secret') &&
      json.containsKey('vendor'); } 
R2SlurperR2SourceSchema copyWith({String? bucket, R2SlurperJurisdiction Function()? jurisdiction, List<String>? Function()? keys, String? Function()? pathPrefix, R2SlurperS3LikeCredsSchema? secret, R2SlurperR2SourceSchemaVendor? vendor, }) { return R2SlurperR2SourceSchema(
  bucket: bucket ?? this.bucket,
  jurisdiction: jurisdiction != null ? jurisdiction() : this.jurisdiction,
  keys: keys != null ? keys() : this.keys,
  pathPrefix: pathPrefix != null ? pathPrefix() : this.pathPrefix,
  secret: secret ?? this.secret,
  vendor: vendor ?? this.vendor,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is R2SlurperR2SourceSchema &&
          bucket == other.bucket &&
          jurisdiction == other.jurisdiction &&
          listEquals(keys, other.keys) &&
          pathPrefix == other.pathPrefix &&
          secret == other.secret &&
          vendor == other.vendor; } 
@override int get hashCode { return Object.hash(bucket, jurisdiction, Object.hashAll(keys ?? const []), pathPrefix, secret, vendor); } 
@override String toString() { return 'R2SlurperR2SourceSchema(bucket: $bucket, jurisdiction: $jurisdiction, keys: $keys, pathPrefix: $pathPrefix, secret: $secret, vendor: $vendor)'; } 
 }
