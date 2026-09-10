// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The status of the Message. Possible values: `accepted`, `scheduled`, `canceled`, `queued`, `sending`, `sent`, `failed`, `delivered`, `undelivered`, `receiving`, `received`, or `read` (WhatsApp only). For more information, See [detailed descriptions](https://www.twilio.com/docs/sms/api/message-resource#message-status-values).
@immutable final class MessageEnumStatus {const MessageEnumStatus._(this.value);

factory MessageEnumStatus.fromJson(String json) { return switch (json) {
  'queued' => queued,
  'sending' => sending,
  'sent' => sent,
  'failed' => failed,
  'delivered' => delivered,
  'undelivered' => undelivered,
  'receiving' => receiving,
  'received' => received,
  'accepted' => accepted,
  'scheduled' => scheduled,
  'read' => read,
  'partially_delivered' => partiallyDelivered,
  'canceled' => canceled,
  _ => MessageEnumStatus._(json),
}; }

static const MessageEnumStatus queued = MessageEnumStatus._('queued');

static const MessageEnumStatus sending = MessageEnumStatus._('sending');

static const MessageEnumStatus sent = MessageEnumStatus._('sent');

static const MessageEnumStatus failed = MessageEnumStatus._('failed');

static const MessageEnumStatus delivered = MessageEnumStatus._('delivered');

static const MessageEnumStatus undelivered = MessageEnumStatus._('undelivered');

static const MessageEnumStatus receiving = MessageEnumStatus._('receiving');

static const MessageEnumStatus received = MessageEnumStatus._('received');

static const MessageEnumStatus accepted = MessageEnumStatus._('accepted');

static const MessageEnumStatus scheduled = MessageEnumStatus._('scheduled');

static const MessageEnumStatus read = MessageEnumStatus._('read');

static const MessageEnumStatus partiallyDelivered = MessageEnumStatus._('partially_delivered');

static const MessageEnumStatus canceled = MessageEnumStatus._('canceled');

static const List<MessageEnumStatus> values = [queued, sending, sent, failed, delivered, undelivered, receiving, received, accepted, scheduled, read, partiallyDelivered, canceled];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MessageEnumStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MessageEnumStatus($value)'; } 
 }
/// The direction of the message. Can be: `inbound` for incoming messages, `outbound-api` for messages created by the REST API, `outbound-call` for messages created during a call, or `outbound-reply` for messages created in response to an incoming message.
@immutable final class MessageEnumDirection {const MessageEnumDirection._(this.value);

factory MessageEnumDirection.fromJson(String json) { return switch (json) {
  'inbound' => inbound,
  'outbound-api' => outboundApi,
  'outbound-call' => outboundCall,
  'outbound-reply' => outboundReply,
  _ => MessageEnumDirection._(json),
}; }

static const MessageEnumDirection inbound = MessageEnumDirection._('inbound');

static const MessageEnumDirection outboundApi = MessageEnumDirection._('outbound-api');

static const MessageEnumDirection outboundCall = MessageEnumDirection._('outbound-call');

static const MessageEnumDirection outboundReply = MessageEnumDirection._('outbound-reply');

static const List<MessageEnumDirection> values = [inbound, outboundApi, outboundCall, outboundReply];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MessageEnumDirection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MessageEnumDirection($value)'; } 
 }
@immutable final class AccountMessage {const AccountMessage({this.body = const Omittable.absent(), this.numSegments = const Omittable.absent(), this.direction, this.from = const Omittable.absent(), this.to = const Omittable.absent(), this.dateUpdated = const Omittable.absent(), this.price = const Omittable.absent(), this.errorMessage = const Omittable.absent(), this.uri = const Omittable.absent(), this.accountSid = const Omittable.absent(), this.numMedia = const Omittable.absent(), this.status, this.messagingServiceSid = const Omittable.absent(), this.sid = const Omittable.absent(), this.dateSent = const Omittable.absent(), this.dateCreated = const Omittable.absent(), this.errorCode = const Omittable.absent(), this.priceUnit = const Omittable.absent(), this.apiVersion = const Omittable.absent(), this.subresourceUris = const Omittable.absent(), });

factory AccountMessage.fromJson(Map<String, dynamic> json) { return AccountMessage(
  body: json.containsKey('body') ? Omittable(json['body'] as String?) : const Omittable.absent(),
  numSegments: json.containsKey('num_segments') ? Omittable(json['num_segments'] as String?) : const Omittable.absent(),
  direction: json['direction'] != null ? MessageEnumDirection.fromJson(json['direction'] as String) : null,
  from: json.containsKey('from') ? Omittable(json['from'] as String?) : const Omittable.absent(),
  to: json.containsKey('to') ? Omittable(json['to'] as String?) : const Omittable.absent(),
  dateUpdated: json.containsKey('date_updated') ? Omittable(json['date_updated'] as String?) : const Omittable.absent(),
  price: json.containsKey('price') ? Omittable(json['price'] as String?) : const Omittable.absent(),
  errorMessage: json.containsKey('error_message') ? Omittable(json['error_message'] as String?) : const Omittable.absent(),
  uri: json.containsKey('uri') ? Omittable(json['uri'] as String?) : const Omittable.absent(),
  accountSid: json.containsKey('account_sid') ? Omittable(json['account_sid'] as String?) : const Omittable.absent(),
  numMedia: json.containsKey('num_media') ? Omittable(json['num_media'] as String?) : const Omittable.absent(),
  status: json['status'] != null ? MessageEnumStatus.fromJson(json['status'] as String) : null,
  messagingServiceSid: json.containsKey('messaging_service_sid') ? Omittable(json['messaging_service_sid'] as String?) : const Omittable.absent(),
  sid: json.containsKey('sid') ? Omittable(json['sid'] as String?) : const Omittable.absent(),
  dateSent: json.containsKey('date_sent') ? Omittable(json['date_sent'] as String?) : const Omittable.absent(),
  dateCreated: json.containsKey('date_created') ? Omittable(json['date_created'] as String?) : const Omittable.absent(),
  errorCode: json.containsKey('error_code') ? Omittable(json['error_code'] != null ? (json['error_code'] as num).toInt() : null) : const Omittable.absent(),
  priceUnit: json.containsKey('price_unit') ? Omittable(json['price_unit'] as String?) : const Omittable.absent(),
  apiVersion: json.containsKey('api_version') ? Omittable(json['api_version'] as String?) : const Omittable.absent(),
  subresourceUris: json.containsKey('subresource_uris') ? Omittable(json['subresource_uris'] as Map<String, dynamic>?) : const Omittable.absent(),
); }

/// The text content of the message
final Omittable<String?> body;

/// The number of segments that make up the complete message. SMS message bodies that exceed the [character limit](https://www.twilio.com/docs/glossary/what-sms-character-limit) are segmented and charged as multiple messages. Note: For messages sent via a Messaging Service, `num_segments` is initially `0`, since a sender hasn't yet been assigned.
final Omittable<String?> numSegments;

final MessageEnumDirection? direction;

/// The sender's phone number (in [E.164](https://en.wikipedia.org/wiki/E.164) format), [alphanumeric sender ID](https://www.twilio.com/docs/sms/quickstart), [Wireless SIM](https://www.twilio.com/docs/iot/wireless/programmable-wireless-send-machine-machine-sms-commands), [short code](https://www.twilio.com/en-us/messaging/channels/sms/short-codes), or  [channel address](https://www.twilio.com/docs/messaging/channels) (e.g., `whatsapp:+15554449999`). For incoming messages, this is the number or channel address of the sender. For outgoing messages, this value is a Twilio phone number, alphanumeric sender ID, short code, or channel address from which the message is sent.
final Omittable<String?> from;

/// The recipient's phone number (in [E.164](https://en.wikipedia.org/wiki/E.164) format) or [channel address](https://www.twilio.com/docs/messaging/channels) (e.g. `whatsapp:+15552229999`)
final Omittable<String?> to;

/// The [RFC 2822](https://datatracker.ietf.org/doc/html/rfc2822#section-3.3) timestamp (in GMT) of when the Message resource was last updated
final Omittable<String?> dateUpdated;

/// The amount billed for the message in the currency specified by `price_unit`. The `price` is populated after the message has been sent/received, and may not be immediately availalble. View the [Pricing page](https://www.twilio.com/en-us/pricing) for more details.
final Omittable<String?> price;

/// The description of the `error_code` if the Message `status` is `failed` or `undelivered`. If no error was encountered, the value is `null`. The value returned in this field for a specific error cause is subject to change as Twilio improves errors. Users should not use the `error_code` and `error_message` fields programmatically.
final Omittable<String?> errorMessage;

/// The URI of the Message resource, relative to `https://api.twilio.com`.
final Omittable<String?> uri;

/// The SID of the [Account](https://www.twilio.com/docs/iam/api/account) associated with the Message resource
final Omittable<String?> accountSid;

/// The number of media files associated with the Message resource.
final Omittable<String?> numMedia;

final MessageEnumStatus? status;

/// The SID of the [Messaging Service](https://www.twilio.com/docs/messaging/api/service-resource) associated with the Message resource. A unique default value is assigned if a Messaging Service is not used.
final Omittable<String?> messagingServiceSid;

/// The unique, Twilio-provided string that identifies the Message resource.
final Omittable<String?> sid;

/// The [RFC 2822](https://datatracker.ietf.org/doc/html/rfc2822#section-3.3) timestamp (in GMT) of when the Message was sent. For an outgoing message, this is when Twilio sent the message. For an incoming message, this is when Twilio sent the HTTP request to your incoming message webhook URL.
final Omittable<String?> dateSent;

/// The [RFC 2822](https://datatracker.ietf.org/doc/html/rfc2822#section-3.3) timestamp (in GMT) of when the Message resource was created
final Omittable<String?> dateCreated;

/// The [error code](https://www.twilio.com/docs/api/errors) returned if the Message `status` is `failed` or `undelivered`. If no error was encountered, the value is `null`. The value returned in this field for a specific error cause is subject to change as Twilio improves errors. Users should not use the `error_code` and `error_message` fields programmatically.
final Omittable<int?> errorCode;

/// The currency in which `price` is measured, in [ISO 4127](https://www.iso.org/iso/home/standards/currency_codes.htm) format (e.g. `usd`, `eur`, `jpy`).
final Omittable<String?> priceUnit;

/// The API version used to process the Message
final Omittable<String?> apiVersion;

/// A list of related resources identified by their URIs relative to `https://api.twilio.com`
final Omittable<Map<String,dynamic>?> subresourceUris;

Map<String, dynamic> toJson() { return {
  if (body.isPresent) 'body': body.value,
  if (numSegments.isPresent) 'num_segments': numSegments.value,
  if (direction != null) 'direction': direction?.toJson(),
  if (from.isPresent) 'from': from.value,
  if (to.isPresent) 'to': to.value,
  if (dateUpdated.isPresent) 'date_updated': dateUpdated.value,
  if (price.isPresent) 'price': price.value,
  if (errorMessage.isPresent) 'error_message': errorMessage.value,
  if (uri.isPresent) 'uri': uri.value,
  if (accountSid.isPresent) 'account_sid': accountSid.value,
  if (numMedia.isPresent) 'num_media': numMedia.value,
  if (status != null) 'status': status?.toJson(),
  if (messagingServiceSid.isPresent) 'messaging_service_sid': messagingServiceSid.value,
  if (sid.isPresent) 'sid': sid.value,
  if (dateSent.isPresent) 'date_sent': dateSent.value,
  if (dateCreated.isPresent) 'date_created': dateCreated.value,
  if (errorCode.isPresent) 'error_code': errorCode.value,
  if (priceUnit.isPresent) 'price_unit': priceUnit.value,
  if (apiVersion.isPresent) 'api_version': apiVersion.value,
  if (subresourceUris.isPresent) 'subresource_uris': subresourceUris.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'body', 'num_segments', 'direction', 'from', 'to', 'date_updated', 'price', 'error_message', 'uri', 'account_sid', 'num_media', 'status', 'messaging_service_sid', 'sid', 'date_sent', 'date_created', 'error_code', 'price_unit', 'api_version', 'subresource_uris'}.contains(key)); } 
AccountMessage copyWith({Omittable<String?>? body, Omittable<String?>? numSegments, MessageEnumDirection? Function()? direction, Omittable<String?>? from, Omittable<String?>? to, Omittable<String?>? dateUpdated, Omittable<String?>? price, Omittable<String?>? errorMessage, Omittable<String?>? uri, Omittable<String?>? accountSid, Omittable<String?>? numMedia, MessageEnumStatus? Function()? status, Omittable<String?>? messagingServiceSid, Omittable<String?>? sid, Omittable<String?>? dateSent, Omittable<String?>? dateCreated, Omittable<int?>? errorCode, Omittable<String?>? priceUnit, Omittable<String?>? apiVersion, Omittable<Map<String,dynamic>?>? subresourceUris, }) { return AccountMessage(
  body: body ?? this.body,
  numSegments: numSegments ?? this.numSegments,
  direction: direction != null ? direction() : this.direction,
  from: from ?? this.from,
  to: to ?? this.to,
  dateUpdated: dateUpdated ?? this.dateUpdated,
  price: price ?? this.price,
  errorMessage: errorMessage ?? this.errorMessage,
  uri: uri ?? this.uri,
  accountSid: accountSid ?? this.accountSid,
  numMedia: numMedia ?? this.numMedia,
  status: status != null ? status() : this.status,
  messagingServiceSid: messagingServiceSid ?? this.messagingServiceSid,
  sid: sid ?? this.sid,
  dateSent: dateSent ?? this.dateSent,
  dateCreated: dateCreated ?? this.dateCreated,
  errorCode: errorCode ?? this.errorCode,
  priceUnit: priceUnit ?? this.priceUnit,
  apiVersion: apiVersion ?? this.apiVersion,
  subresourceUris: subresourceUris ?? this.subresourceUris,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountMessage &&
          body == other.body &&
          numSegments == other.numSegments &&
          direction == other.direction &&
          from == other.from &&
          to == other.to &&
          dateUpdated == other.dateUpdated &&
          price == other.price &&
          errorMessage == other.errorMessage &&
          uri == other.uri &&
          accountSid == other.accountSid &&
          numMedia == other.numMedia &&
          status == other.status &&
          messagingServiceSid == other.messagingServiceSid &&
          sid == other.sid &&
          dateSent == other.dateSent &&
          dateCreated == other.dateCreated &&
          errorCode == other.errorCode &&
          priceUnit == other.priceUnit &&
          apiVersion == other.apiVersion &&
          subresourceUris == other.subresourceUris; } 
@override int get hashCode { return Object.hash(body, numSegments, direction, from, to, dateUpdated, price, errorMessage, uri, accountSid, numMedia, status, messagingServiceSid, sid, dateSent, dateCreated, errorCode, priceUnit, apiVersion, subresourceUris); } 
@override String toString() { return 'AccountMessage(body: $body, numSegments: $numSegments, direction: $direction, from: $from, to: $to, dateUpdated: $dateUpdated, price: $price, errorMessage: $errorMessage, uri: $uri, accountSid: $accountSid, numMedia: $numMedia, status: $status, messagingServiceSid: $messagingServiceSid, sid: $sid, dateSent: $dateSent, dateCreated: $dateCreated, errorCode: $errorCode, priceUnit: $priceUnit, apiVersion: $apiVersion, subresourceUris: $subresourceUris)'; } 
 }
