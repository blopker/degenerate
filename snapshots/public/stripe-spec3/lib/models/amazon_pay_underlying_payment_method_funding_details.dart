// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_details_passthrough_card.dart';/// funding type of the underlying payment method.
@immutable final class AmazonPayUnderlyingPaymentMethodFundingDetailsType {const AmazonPayUnderlyingPaymentMethodFundingDetailsType._(this.value);

factory AmazonPayUnderlyingPaymentMethodFundingDetailsType.fromJson(String json) { return switch (json) {
  'card' => card,
  _ => AmazonPayUnderlyingPaymentMethodFundingDetailsType._(json),
}; }

static const AmazonPayUnderlyingPaymentMethodFundingDetailsType card = AmazonPayUnderlyingPaymentMethodFundingDetailsType._('card');

static const List<AmazonPayUnderlyingPaymentMethodFundingDetailsType> values = [card];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AmazonPayUnderlyingPaymentMethodFundingDetailsType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AmazonPayUnderlyingPaymentMethodFundingDetailsType($value)'; } 
 }
/// 
@immutable final class AmazonPayUnderlyingPaymentMethodFundingDetails {const AmazonPayUnderlyingPaymentMethodFundingDetails({this.card, this.type = const Omittable.absent(), });

factory AmazonPayUnderlyingPaymentMethodFundingDetails.fromJson(Map<String, dynamic> json) { return AmazonPayUnderlyingPaymentMethodFundingDetails(
  card: json['card'] != null ? PaymentMethodDetailsPassthroughCard.fromJson(json['card'] as Map<String, dynamic>) : null,
  type: json.containsKey('type') ? Omittable(json['type'] != null ? AmazonPayUnderlyingPaymentMethodFundingDetailsType.fromJson(json['type'] as String) : null) : const Omittable.absent(),
); }

final PaymentMethodDetailsPassthroughCard? card;

/// funding type of the underlying payment method.
final Omittable<AmazonPayUnderlyingPaymentMethodFundingDetailsType?> type;

Map<String, dynamic> toJson() { return {
  if (card != null) 'card': card?.toJson(),
  if (type.isPresent) 'type': type.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'card', 'type'}.contains(key)); } 
AmazonPayUnderlyingPaymentMethodFundingDetails copyWith({PaymentMethodDetailsPassthroughCard? Function()? card, Omittable<AmazonPayUnderlyingPaymentMethodFundingDetailsType?>? type, }) { return AmazonPayUnderlyingPaymentMethodFundingDetails(
  card: card != null ? card() : this.card,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AmazonPayUnderlyingPaymentMethodFundingDetails &&
          card == other.card &&
          type == other.type; } 
@override int get hashCode { return Object.hash(card, type); } 
@override String toString() { return 'AmazonPayUnderlyingPaymentMethodFundingDetails(card: $card, type: $type)'; } 
 }
