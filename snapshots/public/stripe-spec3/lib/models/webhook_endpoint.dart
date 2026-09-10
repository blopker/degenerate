// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// String representing the object's type. Objects of the same type share the same value.
@immutable final class WebhookEndpointObject {const WebhookEndpointObject._(this.value);

factory WebhookEndpointObject.fromJson(String json) { return switch (json) {
  'webhook_endpoint' => webhookEndpoint,
  _ => WebhookEndpointObject._(json),
}; }

static const WebhookEndpointObject webhookEndpoint = WebhookEndpointObject._('webhook_endpoint');

static const List<WebhookEndpointObject> values = [webhookEndpoint];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookEndpointObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookEndpointObject($value)'; } 
 }
/// You can configure [webhook endpoints](https://docs.stripe.com/webhooks/) via the API to be
/// notified about events that happen in your Stripe account or connected
/// accounts.
/// 
/// Most users configure webhooks from [the dashboard](https://dashboard.stripe.com/webhooks), which provides a user interface for registering and testing your webhook endpoints.
/// 
/// Related guide: [Setting up webhooks](https://docs.stripe.com/webhooks/configure)
@immutable final class WebhookEndpoint {const WebhookEndpoint({required this.created, required this.enabledEvents, required this.id, required this.livemode, required this.metadata, required this.object, required this.status, required this.url, this.apiVersion = const Omittable.absent(), this.application = const Omittable.absent(), this.description = const Omittable.absent(), this.secret, });

factory WebhookEndpoint.fromJson(Map<String, dynamic> json) { return WebhookEndpoint(
  apiVersion: json.containsKey('api_version') ? Omittable(json['api_version'] as String?) : const Omittable.absent(),
  application: json.containsKey('application') ? Omittable(json['application'] as String?) : const Omittable.absent(),
  created: (json['created'] as num).toInt(),
  description: json.containsKey('description') ? Omittable(json['description'] as String?) : const Omittable.absent(),
  enabledEvents: (json['enabled_events'] as List<dynamic>).map((e) => e as String).toList(),
  id: json['id'] as String,
  livemode: json['livemode'] as bool,
  metadata: (json['metadata'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String)),
  object: WebhookEndpointObject.fromJson(json['object'] as String),
  secret: json['secret'] as String?,
  status: json['status'] as String,
  url: json['url'] as String,
); }

/// The API version events are rendered as for this webhook endpoint.
final Omittable<String?> apiVersion;

/// The ID of the associated Connect application.
final Omittable<String?> application;

/// Time at which the object was created. Measured in seconds since the Unix epoch.
final int created;

/// An optional description of what the webhook is used for.
final Omittable<String?> description;

/// The list of events to enable for this endpoint. `['*']` indicates that all events are enabled, except those that require explicit selection.
final List<String> enabledEvents;

/// Unique identifier for the object.
final String id;

/// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
final bool livemode;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
final Map<String,String> metadata;

/// String representing the object's type. Objects of the same type share the same value.
final WebhookEndpointObject object;

/// The endpoint's secret, used to generate [webhook signatures](https://docs.stripe.com/webhooks/signatures). Only returned at creation.
final String? secret;

/// The status of the webhook. It can be `enabled` or `disabled`.
final String status;

/// The URL of the webhook endpoint.
final String url;

Map<String, dynamic> toJson() { return {
  if (apiVersion.isPresent) 'api_version': apiVersion.value,
  if (application.isPresent) 'application': application.value,
  'created': created,
  if (description.isPresent) 'description': description.value,
  'enabled_events': enabledEvents,
  'id': id,
  'livemode': livemode,
  'metadata': metadata,
  'object': object.toJson(),
  'secret': ?secret,
  'status': status,
  'url': url,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('created') && json['created'] is num &&
      json.containsKey('enabled_events') &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('livemode') && json['livemode'] is bool &&
      json.containsKey('metadata') &&
      json.containsKey('object') &&
      json.containsKey('status') && json['status'] is String &&
      json.containsKey('url') && json['url'] is String; } 
WebhookEndpoint copyWith({Omittable<String?>? apiVersion, Omittable<String?>? application, int? created, Omittable<String?>? description, List<String>? enabledEvents, String? id, bool? livemode, Map<String,String>? metadata, WebhookEndpointObject? object, String? Function()? secret, String? status, String? url, }) { return WebhookEndpoint(
  apiVersion: apiVersion ?? this.apiVersion,
  application: application ?? this.application,
  created: created ?? this.created,
  description: description ?? this.description,
  enabledEvents: enabledEvents ?? this.enabledEvents,
  id: id ?? this.id,
  livemode: livemode ?? this.livemode,
  metadata: metadata ?? this.metadata,
  object: object ?? this.object,
  secret: secret != null ? secret() : this.secret,
  status: status ?? this.status,
  url: url ?? this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookEndpoint &&
          apiVersion == other.apiVersion &&
          application == other.application &&
          created == other.created &&
          description == other.description &&
          listEquals(enabledEvents, other.enabledEvents) &&
          id == other.id &&
          livemode == other.livemode &&
          metadata == other.metadata &&
          object == other.object &&
          secret == other.secret &&
          status == other.status &&
          url == other.url; } 
@override int get hashCode { return Object.hash(apiVersion, application, created, description, Object.hashAll(enabledEvents), id, livemode, metadata, object, secret, status, url); } 
@override String toString() { return 'WebhookEndpoint(apiVersion: $apiVersion, application: $application, created: $created, description: $description, enabledEvents: $enabledEvents, id: $id, livemode: $livemode, metadata: $metadata, object: $object, secret: $secret, status: $status, url: $url)'; } 
 }
