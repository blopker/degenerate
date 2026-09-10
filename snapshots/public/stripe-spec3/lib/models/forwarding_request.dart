// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'forwarded_request_context.dart';import 'forwarded_request_details.dart';import 'forwarded_response_details.dart';/// String representing the object's type. Objects of the same type share the same value.
@immutable final class ForwardingRequestObject {const ForwardingRequestObject._(this.value);

factory ForwardingRequestObject.fromJson(String json) { return switch (json) {
  'forwarding.request' => forwardingRequest,
  _ => ForwardingRequestObject._(json),
}; }

static const ForwardingRequestObject forwardingRequest = ForwardingRequestObject._('forwarding.request');

static const List<ForwardingRequestObject> values = [forwardingRequest];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ForwardingRequestObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ForwardingRequestObject($value)'; } 
 }
@immutable final class ForwardingRequestReplacements {const ForwardingRequestReplacements._(this.value);

factory ForwardingRequestReplacements.fromJson(String json) { return switch (json) {
  'card_cvc' => cardCvc,
  'card_expiry' => cardExpiry,
  'card_number' => cardNumber,
  'cardholder_name' => cardholderName,
  'request_signature' => requestSignature,
  _ => ForwardingRequestReplacements._(json),
}; }

static const ForwardingRequestReplacements cardCvc = ForwardingRequestReplacements._('card_cvc');

static const ForwardingRequestReplacements cardExpiry = ForwardingRequestReplacements._('card_expiry');

static const ForwardingRequestReplacements cardNumber = ForwardingRequestReplacements._('card_number');

static const ForwardingRequestReplacements cardholderName = ForwardingRequestReplacements._('cardholder_name');

static const ForwardingRequestReplacements requestSignature = ForwardingRequestReplacements._('request_signature');

static const List<ForwardingRequestReplacements> values = [cardCvc, cardExpiry, cardNumber, cardholderName, requestSignature];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ForwardingRequestReplacements && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ForwardingRequestReplacements($value)'; } 
 }
/// Instructs Stripe to make a request on your behalf using the destination URL. The destination URL
/// is activated by Stripe at the time of onboarding. Stripe verifies requests with your credentials
/// provided during onboarding, and injects card details from the payment_method into the request.
/// 
/// Stripe redacts all sensitive fields and headers, including authentication credentials and card numbers,
/// before storing the request and response data in the forwarding Request object, which are subject to a
/// 30-day retention period.
/// 
/// You can provide a Stripe idempotency key to make sure that requests with the same key result in only one
/// outbound request. The Stripe idempotency key provided should be unique and different from any idempotency
/// keys provided on the underlying third-party request.
/// 
/// Forwarding Requests are synchronous requests that return a response or time out according to
/// Stripe’s limits.
/// 
/// Related guide: [Forward card details to third-party API endpoints](https://docs.stripe.com/payments/forwarding).
@immutable final class ForwardingRequest {const ForwardingRequest({required this.created, required this.id, required this.livemode, required this.object, required this.paymentMethod, required this.replacements, this.metadata = const Omittable.absent(), this.requestContext = const Omittable.absent(), this.requestDetails = const Omittable.absent(), this.responseDetails = const Omittable.absent(), this.url = const Omittable.absent(), });

factory ForwardingRequest.fromJson(Map<String, dynamic> json) { return ForwardingRequest(
  created: (json['created'] as num).toInt(),
  id: json['id'] as String,
  livemode: json['livemode'] as bool,
  metadata: json.containsKey('metadata') ? Omittable((json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String))) : const Omittable.absent(),
  object: ForwardingRequestObject.fromJson(json['object'] as String),
  paymentMethod: json['payment_method'] as String,
  replacements: (json['replacements'] as List<dynamic>).map((e) => ForwardingRequestReplacements.fromJson(e as String)).toList(),
  requestContext: json.containsKey('request_context') ? Omittable(json['request_context'] != null ? ForwardedRequestContext.fromJson(json['request_context'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  requestDetails: json.containsKey('request_details') ? Omittable(json['request_details'] != null ? ForwardedRequestDetails.fromJson(json['request_details'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  responseDetails: json.containsKey('response_details') ? Omittable(json['response_details'] != null ? ForwardedResponseDetails.fromJson(json['response_details'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  url: json.containsKey('url') ? Omittable(json['url'] as String?) : const Omittable.absent(),
); }

/// Time at which the object was created. Measured in seconds since the Unix epoch.
final int created;

/// Unique identifier for the object.
final String id;

/// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
final bool livemode;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
final Omittable<Map<String,String>?> metadata;

/// String representing the object's type. Objects of the same type share the same value.
final ForwardingRequestObject object;

/// The PaymentMethod to insert into the forwarded request. Forwarding previously consumed PaymentMethods is allowed.
final String paymentMethod;

/// The field kinds to be replaced in the forwarded request.
final List<ForwardingRequestReplacements> replacements;

/// Context about the request from Stripe's servers to the destination endpoint.
final Omittable<ForwardedRequestContext?> requestContext;

/// The request that was sent to the destination endpoint. We redact any sensitive fields.
final Omittable<ForwardedRequestDetails?> requestDetails;

/// The response that the destination endpoint returned to us. We redact any sensitive fields.
final Omittable<ForwardedResponseDetails?> responseDetails;

/// The destination URL for the forwarded request. Must be supported by the config.
final Omittable<String?> url;

Map<String, dynamic> toJson() { return {
  'created': created,
  'id': id,
  'livemode': livemode,
  if (metadata.isPresent) 'metadata': metadata.value,
  'object': object.toJson(),
  'payment_method': paymentMethod,
  'replacements': replacements.map((e) => e.toJson()).toList(),
  if (requestContext.isPresent) 'request_context': requestContext.value?.toJson(),
  if (requestDetails.isPresent) 'request_details': requestDetails.value?.toJson(),
  if (responseDetails.isPresent) 'response_details': responseDetails.value?.toJson(),
  if (url.isPresent) 'url': url.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('created') && json['created'] is num &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('livemode') && json['livemode'] is bool &&
      json.containsKey('object') &&
      json.containsKey('payment_method') && json['payment_method'] is String &&
      json.containsKey('replacements'); } 
ForwardingRequest copyWith({int? created, String? id, bool? livemode, Omittable<Map<String,String>?>? metadata, ForwardingRequestObject? object, String? paymentMethod, List<ForwardingRequestReplacements>? replacements, Omittable<ForwardedRequestContext?>? requestContext, Omittable<ForwardedRequestDetails?>? requestDetails, Omittable<ForwardedResponseDetails?>? responseDetails, Omittable<String?>? url, }) { return ForwardingRequest(
  created: created ?? this.created,
  id: id ?? this.id,
  livemode: livemode ?? this.livemode,
  metadata: metadata ?? this.metadata,
  object: object ?? this.object,
  paymentMethod: paymentMethod ?? this.paymentMethod,
  replacements: replacements ?? this.replacements,
  requestContext: requestContext ?? this.requestContext,
  requestDetails: requestDetails ?? this.requestDetails,
  responseDetails: responseDetails ?? this.responseDetails,
  url: url ?? this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ForwardingRequest &&
          created == other.created &&
          id == other.id &&
          livemode == other.livemode &&
          metadata == other.metadata &&
          object == other.object &&
          paymentMethod == other.paymentMethod &&
          listEquals(replacements, other.replacements) &&
          requestContext == other.requestContext &&
          requestDetails == other.requestDetails &&
          responseDetails == other.responseDetails &&
          url == other.url; } 
@override int get hashCode { return Object.hash(created, id, livemode, metadata, object, paymentMethod, Object.hashAll(replacements), requestContext, requestDetails, responseDetails, url); } 
@override String toString() { return 'ForwardingRequest(created: $created, id: $id, livemode: $livemode, metadata: $metadata, object: $object, paymentMethod: $paymentMethod, replacements: $replacements, requestContext: $requestContext, requestDetails: $requestDetails, responseDetails: $responseDetails, url: $url)'; } 
 }
