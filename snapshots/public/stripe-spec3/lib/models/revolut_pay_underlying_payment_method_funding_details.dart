// GENERATED CODE - DO NOT MODIFY BY HAND

import 'payment_method_details_passthrough_card.dart';/// funding type of the underlying payment method.
final class RevolutPayUnderlyingPaymentMethodFundingDetailsType {const RevolutPayUnderlyingPaymentMethodFundingDetailsType._(this.value);

factory RevolutPayUnderlyingPaymentMethodFundingDetailsType.fromJson(String json) { return switch (json) {
  'card' => card,
  _ => RevolutPayUnderlyingPaymentMethodFundingDetailsType._(json),
}; }

static const RevolutPayUnderlyingPaymentMethodFundingDetailsType card = RevolutPayUnderlyingPaymentMethodFundingDetailsType._('card');

static const List<RevolutPayUnderlyingPaymentMethodFundingDetailsType> values = [card];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RevolutPayUnderlyingPaymentMethodFundingDetailsType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RevolutPayUnderlyingPaymentMethodFundingDetailsType($value)'; } 
 }
/// 
final class RevolutPayUnderlyingPaymentMethodFundingDetails {const RevolutPayUnderlyingPaymentMethodFundingDetails({this.card, this.type, });

factory RevolutPayUnderlyingPaymentMethodFundingDetails.fromJson(Map<String, dynamic> json) { return RevolutPayUnderlyingPaymentMethodFundingDetails(
  card: json['card'] != null ? PaymentMethodDetailsPassthroughCard.fromJson(json['card'] as Map<String, dynamic>) : null,
  type: json['type'] != null ? RevolutPayUnderlyingPaymentMethodFundingDetailsType.fromJson(json['type'] as String) : null,
); }

final PaymentMethodDetailsPassthroughCard? card;

/// funding type of the underlying payment method.
final RevolutPayUnderlyingPaymentMethodFundingDetailsType? type;

Map<String, dynamic> toJson() { return {
  if (card != null) 'card': card?.toJson(),
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'card', 'type'}.contains(key)); } 
RevolutPayUnderlyingPaymentMethodFundingDetails copyWith({PaymentMethodDetailsPassthroughCard Function()? card, RevolutPayUnderlyingPaymentMethodFundingDetailsType? Function()? type, }) { return RevolutPayUnderlyingPaymentMethodFundingDetails(
  card: card != null ? card() : this.card,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RevolutPayUnderlyingPaymentMethodFundingDetails &&
          card == other.card &&
          type == other.type; } 
@override int get hashCode { return Object.hash(card, type); } 
@override String toString() { return 'RevolutPayUnderlyingPaymentMethodFundingDetails(card: $card, type: $type)'; } 
 }
