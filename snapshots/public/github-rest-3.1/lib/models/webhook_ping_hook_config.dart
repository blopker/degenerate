// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'webhook_config_content_type.dart';import 'webhook_config_insecure_ssl.dart';import 'webhook_config_secret.dart';import 'webhook_config_url.dart';final class WebhookPingHookConfig {const WebhookPingHookConfig({this.contentType, this.insecureSsl, this.secret, this.url, });

factory WebhookPingHookConfig.fromJson(Map<String, dynamic> json) { return WebhookPingHookConfig(
  contentType: json['content_type'] != null ? WebhookConfigContentType.fromJson(json['content_type'] as String) : null,
  insecureSsl: json['insecure_ssl'] != null ? OneOf2.parse(json['insecure_ssl'], fromA: (v) => v as String, fromB: (v) => (v as num).toDouble(),) : null,
  secret: json['secret'] != null ? WebhookConfigSecret.fromJson(json['secret'] as String) : null,
  url: json['url'] != null ? WebhookConfigUrl.fromJson(json['url'] as String) : null,
); }

/// The media type used to serialize the payloads. Supported values include `json` and `form`. The default is `form`.
final WebhookConfigContentType? contentType;

final WebhookConfigInsecureSsl? insecureSsl;

/// If provided, the `secret` will be used as the `key` to generate the HMAC hex digest value for [delivery signature headers](https://docs.github.com/webhooks/event-payloads/#delivery-headers).
final WebhookConfigSecret? secret;

/// The URL to which the payloads will be delivered.
final WebhookConfigUrl? url;

Map<String, dynamic> toJson() { return {
  if (contentType != null) 'content_type': contentType?.toJson(),
  if (insecureSsl != null) 'insecure_ssl': insecureSsl?.toJson(),
  if (secret != null) 'secret': secret?.toJson(),
  if (url != null) 'url': url?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
WebhookPingHookConfig copyWith({WebhookConfigContentType Function()? contentType, WebhookConfigInsecureSsl Function()? insecureSsl, WebhookConfigSecret Function()? secret, WebhookConfigUrl Function()? url, }) { return WebhookPingHookConfig(
  contentType: contentType != null ? contentType() : this.contentType,
  insecureSsl: insecureSsl != null ? insecureSsl() : this.insecureSsl,
  secret: secret != null ? secret() : this.secret,
  url: url != null ? url() : this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPingHookConfig &&
          contentType == other.contentType &&
          insecureSsl == other.insecureSsl &&
          secret == other.secret &&
          url == other.url; } 
@override int get hashCode { return Object.hash(contentType, insecureSsl, secret, url); } 
@override String toString() { return 'WebhookPingHookConfig(contentType: $contentType, insecureSsl: $insecureSsl, secret: $secret, url: $url)'; } 
 }
