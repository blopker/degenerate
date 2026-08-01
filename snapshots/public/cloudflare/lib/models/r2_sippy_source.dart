// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class R2SippySourceProvider {const R2SippySourceProvider._(this.value);

factory R2SippySourceProvider.fromJson(String json) { return switch (json) {
  'aws' => aws,
  'gcs' => gcs,
  's3' => s3,
  _ => R2SippySourceProvider._(json),
}; }

static const R2SippySourceProvider aws = R2SippySourceProvider._('aws');

static const R2SippySourceProvider gcs = R2SippySourceProvider._('gcs');

static const R2SippySourceProvider s3 = R2SippySourceProvider._('s3');

static const List<R2SippySourceProvider> values = [aws, gcs, s3];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is R2SippySourceProvider && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'R2SippySourceProvider($value)'; } 
 }
/// Details about the configured source bucket.
@immutable final class R2SippySource {const R2SippySource({this.bucket = const Omittable.absent(), this.bucketUrl = const Omittable.absent(), this.provider, this.region = const Omittable.absent(), });

factory R2SippySource.fromJson(Map<String, dynamic> json) { return R2SippySource(
  bucket: json.containsKey('bucket') ? Omittable(json['bucket'] as String?) : const Omittable.absent(),
  bucketUrl: json.containsKey('bucketUrl') ? Omittable(json['bucketUrl'] as String?) : const Omittable.absent(),
  provider: json['provider'] != null ? R2SippySourceProvider.fromJson(json['provider'] as String) : null,
  region: json.containsKey('region') ? Omittable(json['region'] as String?) : const Omittable.absent(),
); }

/// Name of the bucket on the provider (AWS, GCS only).
final Omittable<String?> bucket;

/// S3-compatible URL (Generic S3-compatible providers only).
final Omittable<String?> bucketUrl;

final R2SippySourceProvider? provider;

/// Region where the bucket resides (AWS only).
final Omittable<String?> region;

Map<String, dynamic> toJson() { return {
  if (bucket.isPresent) 'bucket': bucket.value,
  if (bucketUrl.isPresent) 'bucketUrl': bucketUrl.value,
  if (provider != null) 'provider': provider?.toJson(),
  if (region.isPresent) 'region': region.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'bucket', 'bucketUrl', 'provider', 'region'}.contains(key)); } 
R2SippySource copyWith({Omittable<String?>? bucket, Omittable<String?>? bucketUrl, R2SippySourceProvider? Function()? provider, Omittable<String?>? region, }) { return R2SippySource(
  bucket: bucket ?? this.bucket,
  bucketUrl: bucketUrl ?? this.bucketUrl,
  provider: provider != null ? provider() : this.provider,
  region: region ?? this.region,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is R2SippySource &&
          bucket == other.bucket &&
          bucketUrl == other.bucketUrl &&
          provider == other.provider &&
          region == other.region; } 
@override int get hashCode { return Object.hash(bucket, bucketUrl, provider, region); } 
@override String toString() { return 'R2SippySource(bucket: $bucket, bucketUrl: $bucketUrl, provider: $provider, region: $region)'; } 
 }
