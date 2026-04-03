// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Reason for canceling this PaymentIntent. Possible values are: `duplicate`, `fraudulent`, `requested_by_customer`, or `abandoned`
@immutable final class PostPaymentIntentsIntentCancelRequestCancellationReason {const PostPaymentIntentsIntentCancelRequestCancellationReason._(this.value);

factory PostPaymentIntentsIntentCancelRequestCancellationReason.fromJson(String json) { return switch (json) {
  'abandoned' => abandoned,
  'duplicate' => duplicate,
  'fraudulent' => fraudulent,
  'requested_by_customer' => requestedByCustomer,
  _ => PostPaymentIntentsIntentCancelRequestCancellationReason._(json),
}; }

static const PostPaymentIntentsIntentCancelRequestCancellationReason abandoned = PostPaymentIntentsIntentCancelRequestCancellationReason._('abandoned');

static const PostPaymentIntentsIntentCancelRequestCancellationReason duplicate = PostPaymentIntentsIntentCancelRequestCancellationReason._('duplicate');

static const PostPaymentIntentsIntentCancelRequestCancellationReason fraudulent = PostPaymentIntentsIntentCancelRequestCancellationReason._('fraudulent');

static const PostPaymentIntentsIntentCancelRequestCancellationReason requestedByCustomer = PostPaymentIntentsIntentCancelRequestCancellationReason._('requested_by_customer');

static const List<PostPaymentIntentsIntentCancelRequestCancellationReason> values = [abandoned, duplicate, fraudulent, requestedByCustomer];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentCancelRequestCancellationReason && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentCancelRequestCancellationReason($value)'; } 
 }
@immutable final class PostPaymentIntentsIntentCancelRequest {const PostPaymentIntentsIntentCancelRequest({this.cancellationReason, this.expand, });

factory PostPaymentIntentsIntentCancelRequest.fromJson(Map<String, dynamic> json) { return PostPaymentIntentsIntentCancelRequest(
  cancellationReason: json['cancellation_reason'] != null ? PostPaymentIntentsIntentCancelRequestCancellationReason.fromJson(json['cancellation_reason'] as String) : null,
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

/// Reason for canceling this PaymentIntent. Possible values are: `duplicate`, `fraudulent`, `requested_by_customer`, or `abandoned`
final PostPaymentIntentsIntentCancelRequestCancellationReason? cancellationReason;

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

Map<String, dynamic> toJson() { return {
  if (cancellationReason != null) 'cancellation_reason': cancellationReason?.toJson(),
  'expand': ?expand,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'cancellation_reason', 'expand'}.contains(key)); } 
PostPaymentIntentsIntentCancelRequest copyWith({PostPaymentIntentsIntentCancelRequestCancellationReason Function()? cancellationReason, List<String> Function()? expand, }) { return PostPaymentIntentsIntentCancelRequest(
  cancellationReason: cancellationReason != null ? cancellationReason() : this.cancellationReason,
  expand: expand != null ? expand() : this.expand,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentIntentsIntentCancelRequest &&
          cancellationReason == other.cancellationReason &&
          listEquals(expand, other.expand); } 
@override int get hashCode { return Object.hash(cancellationReason, Object.hashAll(expand ?? const [])); } 
@override String toString() { return 'PostPaymentIntentsIntentCancelRequest(cancellationReason: $cancellationReason, expand: $expand)'; } 
 }
