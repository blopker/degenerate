// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dispute_payment_method_details_amazon_pay.dart';import 'dispute_payment_method_details_card.dart';import 'dispute_payment_method_details_klarna.dart';import 'dispute_payment_method_details_paypal.dart';/// Payment method type.
@immutable final class DisputePaymentMethodDetailsType {const DisputePaymentMethodDetailsType._(this.value);

factory DisputePaymentMethodDetailsType.fromJson(String json) { return switch (json) {
  'amazon_pay' => amazonPay,
  'card' => card,
  'klarna' => klarna,
  'paypal' => paypal,
  _ => DisputePaymentMethodDetailsType._(json),
}; }

static const DisputePaymentMethodDetailsType amazonPay = DisputePaymentMethodDetailsType._('amazon_pay');

static const DisputePaymentMethodDetailsType card = DisputePaymentMethodDetailsType._('card');

static const DisputePaymentMethodDetailsType klarna = DisputePaymentMethodDetailsType._('klarna');

static const DisputePaymentMethodDetailsType paypal = DisputePaymentMethodDetailsType._('paypal');

static const List<DisputePaymentMethodDetailsType> values = [amazonPay, card, klarna, paypal];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DisputePaymentMethodDetailsType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DisputePaymentMethodDetailsType($value)'; } 
 }
/// 
@immutable final class DisputePaymentMethodDetails {const DisputePaymentMethodDetails({required this.type, this.amazonPay, this.card, this.klarna, this.paypal, });

factory DisputePaymentMethodDetails.fromJson(Map<String, dynamic> json) { return DisputePaymentMethodDetails(
  amazonPay: json['amazon_pay'] != null ? DisputePaymentMethodDetailsAmazonPay.fromJson(json['amazon_pay'] as Map<String, dynamic>) : null,
  card: json['card'] != null ? DisputePaymentMethodDetailsCard.fromJson(json['card'] as Map<String, dynamic>) : null,
  klarna: json['klarna'] != null ? DisputePaymentMethodDetailsKlarna.fromJson(json['klarna'] as Map<String, dynamic>) : null,
  paypal: json['paypal'] != null ? DisputePaymentMethodDetailsPaypal.fromJson(json['paypal'] as Map<String, dynamic>) : null,
  type: DisputePaymentMethodDetailsType.fromJson(json['type'] as String),
); }

final DisputePaymentMethodDetailsAmazonPay? amazonPay;

final DisputePaymentMethodDetailsCard? card;

final DisputePaymentMethodDetailsKlarna? klarna;

final DisputePaymentMethodDetailsPaypal? paypal;

/// Payment method type.
final DisputePaymentMethodDetailsType type;

Map<String, dynamic> toJson() { return {
  if (amazonPay != null) 'amazon_pay': amazonPay?.toJson(),
  if (card != null) 'card': card?.toJson(),
  if (klarna != null) 'klarna': klarna?.toJson(),
  if (paypal != null) 'paypal': paypal?.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
DisputePaymentMethodDetails copyWith({DisputePaymentMethodDetailsAmazonPay Function()? amazonPay, DisputePaymentMethodDetailsCard Function()? card, DisputePaymentMethodDetailsKlarna Function()? klarna, DisputePaymentMethodDetailsPaypal Function()? paypal, DisputePaymentMethodDetailsType? type, }) { return DisputePaymentMethodDetails(
  amazonPay: amazonPay != null ? amazonPay() : this.amazonPay,
  card: card != null ? card() : this.card,
  klarna: klarna != null ? klarna() : this.klarna,
  paypal: paypal != null ? paypal() : this.paypal,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DisputePaymentMethodDetails &&
          amazonPay == other.amazonPay &&
          card == other.card &&
          klarna == other.klarna &&
          paypal == other.paypal &&
          type == other.type; } 
@override int get hashCode { return Object.hash(amazonPay, card, klarna, paypal, type); } 
@override String toString() { return 'DisputePaymentMethodDetails(amazonPay: $amazonPay, card: $card, klarna: $klarna, paypal: $paypal, type: $type)'; } 
 }
