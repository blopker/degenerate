// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aaa_components_schemas_name.dart';import 'aaa_secret.dart';import 'aaa_url.dart';@immutable final class NotificationWebhooksUpdateAWebhookRequest {const NotificationWebhooksUpdateAWebhookRequest({required this.name, required this.url, this.secret, });

factory NotificationWebhooksUpdateAWebhookRequest.fromJson(Map<String, dynamic> json) { return NotificationWebhooksUpdateAWebhookRequest(
  name: AaaComponentsSchemasName.fromJson(json['name'] as String),
  secret: json['secret'] != null ? AaaSecret.fromJson(json['secret'] as String) : null,
  url: AaaUrl.fromJson(json['url'] as String),
); }

/// The name of the webhook destination. This will be included in the request body when you receive a webhook notification.
final AaaComponentsSchemasName name;

/// Optional secret that will be passed in the `cf-webhook-auth` header when dispatching generic webhook notifications or formatted for supported destinations. Secrets are not returned in any API response body.
final AaaSecret? secret;

/// The POST endpoint to call when dispatching a notification.
final AaaUrl url;

Map<String, dynamic> toJson() { return {
  'name': name.toJson(),
  if (secret != null) 'secret': secret?.toJson(),
  'url': url.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') &&
      json.containsKey('url'); } 
NotificationWebhooksUpdateAWebhookRequest copyWith({AaaComponentsSchemasName? name, AaaSecret Function()? secret, AaaUrl? url, }) { return NotificationWebhooksUpdateAWebhookRequest(
  name: name ?? this.name,
  secret: secret != null ? secret() : this.secret,
  url: url ?? this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is NotificationWebhooksUpdateAWebhookRequest &&
          name == other.name &&
          secret == other.secret &&
          url == other.url; } 
@override int get hashCode { return Object.hash(name, secret, url); } 
@override String toString() { return 'NotificationWebhooksUpdateAWebhookRequest(name: $name, secret: $secret, url: $url)'; } 
 }
