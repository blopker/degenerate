// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'notification_event_data.dart';import 'notification_event_request.dart';/// String representing the object's type. Objects of the same type share the same value.
@immutable final class EventObject {const EventObject._(this.value);

factory EventObject.fromJson(String json) { return switch (json) {
  'event' => event,
  _ => EventObject._(json),
}; }

static const EventObject event = EventObject._('event');

static const List<EventObject> values = [event];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EventObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'EventObject($value)'; } 
 }
/// Snapshot events allow you to track and react to activity in your Stripe integration. When
/// the state of another API resource changes, Stripe creates an `Event` object that contains
/// all the relevant information associated with that action, including the affected API
/// resource. For example, a successful payment triggers a `charge.succeeded` event, which
/// contains the `Charge` in the event's data property. Some actions trigger multiple events.
/// For example, if you create a new subscription for a customer, it triggers both a
/// `customer.subscription.created` event and a `charge.succeeded` event.
/// 
/// Configure an event destination in your account to listen for events that represent actions
/// your integration needs to respond to. Additionally, you can retrieve an individual event or
/// a list of events from the API.
/// 
/// [Connect](https://docs.stripe.com/connect) platforms can also receive event notifications
/// that occur in their connected accounts. These events include an account attribute that
/// identifies the relevant connected account.
/// 
/// You can access events through the [Retrieve Event API](https://docs.stripe.com/api/events#retrieve_event)
/// for 30 days.
@immutable final class Event {const Event({required this.created, required this.data, required this.id, required this.livemode, required this.object, required this.pendingWebhooks, required this.type, this.account, this.apiVersion, this.context, this.request, });

factory Event.fromJson(Map<String, dynamic> json) { return Event(
  account: json['account'] as String?,
  apiVersion: json['api_version'] as String?,
  context: json['context'] as String?,
  created: (json['created'] as num).toInt(),
  data: NotificationEventData.fromJson(json['data'] as Map<String, dynamic>),
  id: json['id'] as String,
  livemode: json['livemode'] as bool,
  object: EventObject.fromJson(json['object'] as String),
  pendingWebhooks: (json['pending_webhooks'] as num).toInt(),
  request: json['request'] != null ? NotificationEventRequest.fromJson(json['request'] as Map<String, dynamic>) : null,
  type: json['type'] as String,
); }

/// The connected account that originates the event.
final String? account;

/// The Stripe API version used to render `data` when the event was created. The contents of `data` never change, so this value remains static regardless of the API version currently in use. This property is populated only for events created on or after October 31, 2014.
final String? apiVersion;

/// Authentication context needed to fetch the event or related object.
final String? context;

/// Time at which the object was created. Measured in seconds since the Unix epoch.
final int created;

final NotificationEventData data;

/// Unique identifier for the object.
final String id;

/// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
final bool livemode;

/// String representing the object's type. Objects of the same type share the same value.
final EventObject object;

/// Number of webhooks that haven't been successfully delivered (for example, to return a 20x response) to the URLs you specify.
final int pendingWebhooks;

/// Information on the API request that triggers the event.
final NotificationEventRequest? request;

/// Description of the event (for example, `invoice.created` or `charge.refunded`).
final String type;

Map<String, dynamic> toJson() { return {
  'account': ?account,
  'api_version': ?apiVersion,
  'context': ?context,
  'created': created,
  'data': data.toJson(),
  'id': id,
  'livemode': livemode,
  'object': object.toJson(),
  'pending_webhooks': pendingWebhooks,
  if (request != null) 'request': request?.toJson(),
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('created') && json['created'] is num &&
      json.containsKey('data') &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('livemode') && json['livemode'] is bool &&
      json.containsKey('object') &&
      json.containsKey('pending_webhooks') && json['pending_webhooks'] is num &&
      json.containsKey('type') && json['type'] is String; } 
Event copyWith({String Function()? account, String? Function()? apiVersion, String Function()? context, int? created, NotificationEventData? data, String? id, bool? livemode, EventObject? object, int? pendingWebhooks, NotificationEventRequest? Function()? request, String? type, }) { return Event(
  account: account != null ? account() : this.account,
  apiVersion: apiVersion != null ? apiVersion() : this.apiVersion,
  context: context != null ? context() : this.context,
  created: created ?? this.created,
  data: data ?? this.data,
  id: id ?? this.id,
  livemode: livemode ?? this.livemode,
  object: object ?? this.object,
  pendingWebhooks: pendingWebhooks ?? this.pendingWebhooks,
  request: request != null ? request() : this.request,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Event &&
          account == other.account &&
          apiVersion == other.apiVersion &&
          context == other.context &&
          created == other.created &&
          data == other.data &&
          id == other.id &&
          livemode == other.livemode &&
          object == other.object &&
          pendingWebhooks == other.pendingWebhooks &&
          request == other.request &&
          type == other.type; } 
@override int get hashCode { return Object.hash(account, apiVersion, context, created, data, id, livemode, object, pendingWebhooks, request, type); } 
@override String toString() { return 'Event(account: $account, apiVersion: $apiVersion, context: $context, created: $created, data: $data, id: $id, livemode: $livemode, object: $object, pendingWebhooks: $pendingWebhooks, request: $request, type: $type)'; } 
 }
