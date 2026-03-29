// GENERATED CODE - DO NOT MODIFY BY HAND

final class R2EnableSippyGcsDestinationProvider {const R2EnableSippyGcsDestinationProvider._(this.value);

factory R2EnableSippyGcsDestinationProvider.fromJson(String json) { return switch (json) {
  'r2' => r2,
  _ => R2EnableSippyGcsDestinationProvider._(json),
}; }

static const R2EnableSippyGcsDestinationProvider r2 = R2EnableSippyGcsDestinationProvider._('r2');

static const List<R2EnableSippyGcsDestinationProvider> values = [r2];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is R2EnableSippyGcsDestinationProvider && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'R2EnableSippyGcsDestinationProvider($value)'; } 
 }
/// R2 bucket to copy objects to.
final class R2EnableSippyGcsDestination {const R2EnableSippyGcsDestination({this.accessKeyId, this.provider, this.secretAccessKey, });

factory R2EnableSippyGcsDestination.fromJson(Map<String, dynamic> json) { return R2EnableSippyGcsDestination(
  accessKeyId: json['accessKeyId'] as String?,
  provider: json['provider'] != null ? R2EnableSippyGcsDestinationProvider.fromJson(json['provider'] as String) : null,
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

final R2EnableSippyGcsDestinationProvider? provider;

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
R2EnableSippyGcsDestination copyWith({String Function()? accessKeyId, R2EnableSippyGcsDestinationProvider Function()? provider, String Function()? secretAccessKey, }) { return R2EnableSippyGcsDestination(
  accessKeyId: accessKeyId != null ? accessKeyId() : this.accessKeyId,
  provider: provider != null ? provider() : this.provider,
  secretAccessKey: secretAccessKey != null ? secretAccessKey() : this.secretAccessKey,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is R2EnableSippyGcsDestination &&
          accessKeyId == other.accessKeyId &&
          provider == other.provider &&
          secretAccessKey == other.secretAccessKey; } 
@override int get hashCode { return Object.hash(accessKeyId, provider, secretAccessKey); } 
@override String toString() { return 'R2EnableSippyGcsDestination(accessKeyId: $accessKeyId, provider: $provider, secretAccessKey: $secretAccessKey)'; } 
 }
