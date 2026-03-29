// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'webhook_config_content_type.dart';import 'webhook_config_insecure_ssl.dart';import 'webhook_config_secret.dart';import 'webhook_config_url.dart';final class ReposUpdateWebhookConfigForRepoRequest {const ReposUpdateWebhookConfigForRepoRequest({this.url, this.contentType, this.secret, this.insecureSsl, });

factory ReposUpdateWebhookConfigForRepoRequest.fromJson(Map<String, dynamic> json) { return ReposUpdateWebhookConfigForRepoRequest(
  url: json['url'] != null ? WebhookConfigUrl.fromJson(json['url'] as String) : null,
  contentType: json['content_type'] != null ? WebhookConfigContentType.fromJson(json['content_type'] as String) : null,
  secret: json['secret'] != null ? WebhookConfigSecret.fromJson(json['secret'] as String) : null,
  insecureSsl: json['insecure_ssl'] != null ? OneOf2.parse(json['insecure_ssl'], fromA: (v) => v as String, fromB: (v) => (v as num).toDouble(),) : null,
); }

/// The URL to which the payloads will be delivered.
final WebhookConfigUrl? url;

/// The media type used to serialize the payloads. Supported values include `json` and `form`. The default is `form`.
final WebhookConfigContentType? contentType;

/// If provided, the `secret` will be used as the `key` to generate the HMAC hex digest value for [delivery signature headers](https://docs.github.com/webhooks/event-payloads/#delivery-headers).
final WebhookConfigSecret? secret;

final WebhookConfigInsecureSsl? insecureSsl;

Map<String, dynamic> toJson() { return {
  if (url != null) 'url': url?.toJson(),
  if (contentType != null) 'content_type': contentType?.toJson(),
  if (secret != null) 'secret': secret?.toJson(),
  if (insecureSsl != null) 'insecure_ssl': insecureSsl?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
ReposUpdateWebhookConfigForRepoRequest copyWith({WebhookConfigUrl Function()? url, WebhookConfigContentType Function()? contentType, WebhookConfigSecret Function()? secret, WebhookConfigInsecureSsl Function()? insecureSsl, }) { return ReposUpdateWebhookConfigForRepoRequest(
  url: url != null ? url() : this.url,
  contentType: contentType != null ? contentType() : this.contentType,
  secret: secret != null ? secret() : this.secret,
  insecureSsl: insecureSsl != null ? insecureSsl() : this.insecureSsl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ReposUpdateWebhookConfigForRepoRequest &&
          url == other.url &&
          contentType == other.contentType &&
          secret == other.secret &&
          insecureSsl == other.insecureSsl; } 
@override int get hashCode { return Object.hash(url, contentType, secret, insecureSsl); } 
@override String toString() { return 'ReposUpdateWebhookConfigForRepoRequest(url: $url, contentType: $contentType, secret: $secret, insecureSsl: $insecureSsl)'; } 
 }
