// GENERATED CODE - DO NOT MODIFY BY HAND

final class R2EnableSippyAwsSourceProvider {const R2EnableSippyAwsSourceProvider._(this.value);

factory R2EnableSippyAwsSourceProvider.fromJson(String json) { return switch (json) {
  'aws' => aws,
  _ => R2EnableSippyAwsSourceProvider._(json),
}; }

static const R2EnableSippyAwsSourceProvider aws = R2EnableSippyAwsSourceProvider._('aws');

static const List<R2EnableSippyAwsSourceProvider> values = [aws];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is R2EnableSippyAwsSourceProvider && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'R2EnableSippyAwsSourceProvider($value)'; } 
 }
/// AWS S3 bucket to copy objects from.
final class R2EnableSippyAwsSource {const R2EnableSippyAwsSource({this.accessKeyId, this.bucket, this.provider, this.region, this.secretAccessKey, });

factory R2EnableSippyAwsSource.fromJson(Map<String, dynamic> json) { return R2EnableSippyAwsSource(
  accessKeyId: json['accessKeyId'] as String?,
  bucket: json['bucket'] as String?,
  provider: json['provider'] != null ? R2EnableSippyAwsSourceProvider.fromJson(json['provider'] as String) : null,
  region: json['region'] as String?,
  secretAccessKey: json['secretAccessKey'] as String?,
); }

/// Access Key ID of an IAM credential (ideally scoped to a single S3 bucket).
final String? accessKeyId;

/// Name of the AWS S3 bucket.
final String? bucket;

final R2EnableSippyAwsSourceProvider? provider;

/// Name of the AWS availability zone.
final String? region;

/// Secret Access Key of an IAM credential (ideally scoped to a single S3 bucket).
final String? secretAccessKey;

Map<String, dynamic> toJson() { return {
  'accessKeyId': ?accessKeyId,
  'bucket': ?bucket,
  if (provider != null) 'provider': provider?.toJson(),
  'region': ?region,
  'secretAccessKey': ?secretAccessKey,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
R2EnableSippyAwsSource copyWith({String Function()? accessKeyId, String Function()? bucket, R2EnableSippyAwsSourceProvider Function()? provider, String Function()? region, String Function()? secretAccessKey, }) { return R2EnableSippyAwsSource(
  accessKeyId: accessKeyId != null ? accessKeyId() : this.accessKeyId,
  bucket: bucket != null ? bucket() : this.bucket,
  provider: provider != null ? provider() : this.provider,
  region: region != null ? region() : this.region,
  secretAccessKey: secretAccessKey != null ? secretAccessKey() : this.secretAccessKey,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is R2EnableSippyAwsSource &&
          accessKeyId == other.accessKeyId &&
          bucket == other.bucket &&
          provider == other.provider &&
          region == other.region &&
          secretAccessKey == other.secretAccessKey; } 
@override int get hashCode { return Object.hash(accessKeyId, bucket, provider, region, secretAccessKey); } 
@override String toString() { return 'R2EnableSippyAwsSource(accessKeyId: $accessKeyId, bucket: $bucket, provider: $provider, region: $region, secretAccessKey: $secretAccessKey)'; } 
 }
