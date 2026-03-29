// GENERATED CODE - DO NOT MODIFY BY HAND

final class R2EnableSippyAwsDestinationProvider {const R2EnableSippyAwsDestinationProvider._(this.value);

factory R2EnableSippyAwsDestinationProvider.fromJson(String json) { return switch (json) {
  'r2' => r2,
  _ => R2EnableSippyAwsDestinationProvider._(json),
}; }

static const R2EnableSippyAwsDestinationProvider r2 = R2EnableSippyAwsDestinationProvider._('r2');

static const List<R2EnableSippyAwsDestinationProvider> values = [r2];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is R2EnableSippyAwsDestinationProvider && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'R2EnableSippyAwsDestinationProvider($value)'; } 
 }
/// R2 bucket to copy objects to.
final class R2EnableSippyAwsDestination {const R2EnableSippyAwsDestination({this.accessKeyId, this.provider, this.secretAccessKey, });

factory R2EnableSippyAwsDestination.fromJson(Map<String, dynamic> json) { return R2EnableSippyAwsDestination(
  accessKeyId: json['accessKeyId'] as String?,
  provider: json['provider'] != null ? R2EnableSippyAwsDestinationProvider.fromJson(json['provider'] as String) : null,
  secretAccessKey: json['secretAccessKey'] as String?,
); }

/// ID of a Cloudflare API token.
/// This is the value labelled "Access Key ID" when creating an API.
/// token from the [R2 dashboard](https://dash.cloudflare.com/?to=/:account/r2/api-tokens).
/// 
/// Sippy will use this token when writing objects to R2, so it is
/// best to scope this token to the bucket you're enabling Sippy for.
/// 
final String? accessKeyId;

final R2EnableSippyAwsDestinationProvider? provider;

/// Value of a Cloudflare API token.
/// This is the value labelled "Secret Access Key" when creating an API.
/// token from the [R2 dashboard](https://dash.cloudflare.com/?to=/:account/r2/api-tokens).
/// 
/// Sippy will use this token when writing objects to R2, so it is
/// best to scope this token to the bucket you're enabling Sippy for.
/// 
final String? secretAccessKey;

Map<String, dynamic> toJson() { return {
  'accessKeyId': ?accessKeyId,
  if (provider != null) 'provider': provider?.toJson(),
  'secretAccessKey': ?secretAccessKey,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
R2EnableSippyAwsDestination copyWith({String Function()? accessKeyId, R2EnableSippyAwsDestinationProvider Function()? provider, String Function()? secretAccessKey, }) { return R2EnableSippyAwsDestination(
  accessKeyId: accessKeyId != null ? accessKeyId() : this.accessKeyId,
  provider: provider != null ? provider() : this.provider,
  secretAccessKey: secretAccessKey != null ? secretAccessKey() : this.secretAccessKey,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is R2EnableSippyAwsDestination &&
          accessKeyId == other.accessKeyId &&
          provider == other.provider &&
          secretAccessKey == other.secretAccessKey; } 
@override int get hashCode { return Object.hash(accessKeyId, provider, secretAccessKey); } 
@override String toString() { return 'R2EnableSippyAwsDestination(accessKeyId: $accessKeyId, provider: $provider, secretAccessKey: $secretAccessKey)'; } 
 }
