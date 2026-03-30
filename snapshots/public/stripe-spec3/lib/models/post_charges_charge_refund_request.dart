// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_charges_charge_refund_request_metadata.dart';/// String indicating the reason for the refund. If set, possible values are `duplicate`, `fraudulent`, and `requested_by_customer`. If you believe the charge to be fraudulent, specifying `fraudulent` as the reason will add the associated card and email to your [block lists](https://docs.stripe.com/radar/lists), and will also help us improve our fraud detection algorithms.
final class PostChargesChargeRefundRequestReason {const PostChargesChargeRefundRequestReason._(this.value);

factory PostChargesChargeRefundRequestReason.fromJson(String json) { return switch (json) {
  'duplicate' => duplicate,
  'fraudulent' => fraudulent,
  'requested_by_customer' => requestedByCustomer,
  _ => PostChargesChargeRefundRequestReason._(json),
}; }

static const PostChargesChargeRefundRequestReason duplicate = PostChargesChargeRefundRequestReason._('duplicate');

static const PostChargesChargeRefundRequestReason fraudulent = PostChargesChargeRefundRequestReason._('fraudulent');

static const PostChargesChargeRefundRequestReason requestedByCustomer = PostChargesChargeRefundRequestReason._('requested_by_customer');

static const List<PostChargesChargeRefundRequestReason> values = [duplicate, fraudulent, requestedByCustomer];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostChargesChargeRefundRequestReason && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostChargesChargeRefundRequestReason($value)'; } 
 }
final class PostChargesChargeRefundRequest {const PostChargesChargeRefundRequest({this.amount, this.expand, this.instructionsEmail, this.metadata, this.paymentIntent, this.reason, this.refundApplicationFee, this.reverseTransfer, });

factory PostChargesChargeRefundRequest.fromJson(Map<String, dynamic> json) { return PostChargesChargeRefundRequest(
  amount: json['amount'] != null ? (json['amount'] as num).toInt() : null,
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
  instructionsEmail: json['instructions_email'] as String?,
  metadata: json['metadata'] != null ? OneOf2.parse(json['metadata'], fromA: (v) => (v as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String)), fromB: (v) => PostChargesChargeRefundRequestMetadataVariant2.fromJson(v as String),) : null,
  paymentIntent: json['payment_intent'] as String?,
  reason: json['reason'] != null ? PostChargesChargeRefundRequestReason.fromJson(json['reason'] as String) : null,
  refundApplicationFee: json['refund_application_fee'] as bool?,
  reverseTransfer: json['reverse_transfer'] as bool?,
); }

/// A positive integer in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal) representing how much of this charge to refund. Can refund only up to the remaining, unrefunded amount of the charge.
final int? amount;

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

/// For payment methods without native refund support (e.g., Konbini, PromptPay), use this email from the customer to receive refund instructions.
final String? instructionsEmail;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
final PostChargesChargeRefundRequestMetadata? metadata;

/// The identifier of the PaymentIntent to refund.
final String? paymentIntent;

/// String indicating the reason for the refund. If set, possible values are `duplicate`, `fraudulent`, and `requested_by_customer`. If you believe the charge to be fraudulent, specifying `fraudulent` as the reason will add the associated card and email to your [block lists](https://docs.stripe.com/radar/lists), and will also help us improve our fraud detection algorithms.
final PostChargesChargeRefundRequestReason? reason;

/// Boolean indicating whether the application fee should be refunded when refunding this charge. If a full charge refund is given, the full application fee will be refunded. Otherwise, the application fee will be refunded in an amount proportional to the amount of the charge refunded. An application fee can be refunded only by the application that created the charge.
final bool? refundApplicationFee;

/// Boolean indicating whether the transfer should be reversed when refunding this charge. The transfer will be reversed proportionally to the amount being refunded (either the entire or partial amount).`<br>``<br>`A transfer can be reversed only by the application that created the charge.
final bool? reverseTransfer;

Map<String, dynamic> toJson() { return {
  'amount': ?amount,
  'expand': ?expand,
  'instructions_email': ?instructionsEmail,
  if (metadata != null) 'metadata': metadata?.toJson(),
  'payment_intent': ?paymentIntent,
  if (reason != null) 'reason': reason?.toJson(),
  'refund_application_fee': ?refundApplicationFee,
  'reverse_transfer': ?reverseTransfer,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'amount', 'expand', 'instructions_email', 'metadata', 'payment_intent', 'reason', 'refund_application_fee', 'reverse_transfer'}.contains(key)); } 
PostChargesChargeRefundRequest copyWith({int Function()? amount, List<String> Function()? expand, String Function()? instructionsEmail, PostChargesChargeRefundRequestMetadata Function()? metadata, String Function()? paymentIntent, PostChargesChargeRefundRequestReason Function()? reason, bool Function()? refundApplicationFee, bool Function()? reverseTransfer, }) { return PostChargesChargeRefundRequest(
  amount: amount != null ? amount() : this.amount,
  expand: expand != null ? expand() : this.expand,
  instructionsEmail: instructionsEmail != null ? instructionsEmail() : this.instructionsEmail,
  metadata: metadata != null ? metadata() : this.metadata,
  paymentIntent: paymentIntent != null ? paymentIntent() : this.paymentIntent,
  reason: reason != null ? reason() : this.reason,
  refundApplicationFee: refundApplicationFee != null ? refundApplicationFee() : this.refundApplicationFee,
  reverseTransfer: reverseTransfer != null ? reverseTransfer() : this.reverseTransfer,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostChargesChargeRefundRequest &&
          amount == other.amount &&
          listEquals(expand, other.expand) &&
          instructionsEmail == other.instructionsEmail &&
          metadata == other.metadata &&
          paymentIntent == other.paymentIntent &&
          reason == other.reason &&
          refundApplicationFee == other.refundApplicationFee &&
          reverseTransfer == other.reverseTransfer; } 
@override int get hashCode { return Object.hash(amount, Object.hashAll(expand ?? const []), instructionsEmail, metadata, paymentIntent, reason, refundApplicationFee, reverseTransfer); } 
@override String toString() { return 'PostChargesChargeRefundRequest(amount: $amount, expand: $expand, instructionsEmail: $instructionsEmail, metadata: $metadata, paymentIntent: $paymentIntent, reason: $reason, refundApplicationFee: $refundApplicationFee, reverseTransfer: $reverseTransfer)'; } 
 }
