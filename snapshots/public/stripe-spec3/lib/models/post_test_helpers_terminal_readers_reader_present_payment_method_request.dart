// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_test_helpers_terminal_readers_reader_present_payment_method_request_card.dart';import 'post_test_helpers_terminal_readers_reader_present_payment_method_request_card_present.dart';import 'post_test_helpers_terminal_readers_reader_present_payment_method_request_interac_present.dart';/// Simulated payment type.
final class PostTestHelpersTerminalReadersReaderPresentPaymentMethodRequestType {const PostTestHelpersTerminalReadersReaderPresentPaymentMethodRequestType._(this.value);

factory PostTestHelpersTerminalReadersReaderPresentPaymentMethodRequestType.fromJson(String json) { return switch (json) {
  'card' => card,
  'card_present' => cardPresent,
  'interac_present' => interacPresent,
  _ => PostTestHelpersTerminalReadersReaderPresentPaymentMethodRequestType._(json),
}; }

static const PostTestHelpersTerminalReadersReaderPresentPaymentMethodRequestType card = PostTestHelpersTerminalReadersReaderPresentPaymentMethodRequestType._('card');

static const PostTestHelpersTerminalReadersReaderPresentPaymentMethodRequestType cardPresent = PostTestHelpersTerminalReadersReaderPresentPaymentMethodRequestType._('card_present');

static const PostTestHelpersTerminalReadersReaderPresentPaymentMethodRequestType interacPresent = PostTestHelpersTerminalReadersReaderPresentPaymentMethodRequestType._('interac_present');

static const List<PostTestHelpersTerminalReadersReaderPresentPaymentMethodRequestType> values = [card, cardPresent, interacPresent];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTestHelpersTerminalReadersReaderPresentPaymentMethodRequestType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTestHelpersTerminalReadersReaderPresentPaymentMethodRequestType($value)'; } 
 }
final class PostTestHelpersTerminalReadersReaderPresentPaymentMethodRequest {const PostTestHelpersTerminalReadersReaderPresentPaymentMethodRequest({this.amountTip, this.card, this.cardPresent, this.expand, this.interacPresent, this.type, });

factory PostTestHelpersTerminalReadersReaderPresentPaymentMethodRequest.fromJson(Map<String, dynamic> json) { return PostTestHelpersTerminalReadersReaderPresentPaymentMethodRequest(
  amountTip: json['amount_tip'] != null ? (json['amount_tip'] as num).toInt() : null,
  card: json['card'] != null ? PostTestHelpersTerminalReadersReaderPresentPaymentMethodRequestCard.fromJson(json['card'] as Map<String, dynamic>) : null,
  cardPresent: json['card_present'] != null ? PostTestHelpersTerminalReadersReaderPresentPaymentMethodRequestCardPresent.fromJson(json['card_present'] as Map<String, dynamic>) : null,
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
  interacPresent: json['interac_present'] != null ? PostTestHelpersTerminalReadersReaderPresentPaymentMethodRequestInteracPresent.fromJson(json['interac_present'] as Map<String, dynamic>) : null,
  type: json['type'] != null ? PostTestHelpersTerminalReadersReaderPresentPaymentMethodRequestType.fromJson(json['type'] as String) : null,
); }

/// Simulated on-reader tip amount.
final int? amountTip;

/// Simulated data for the card payment method.
final PostTestHelpersTerminalReadersReaderPresentPaymentMethodRequestCard? card;

/// Simulated data for the card_present payment method.
final PostTestHelpersTerminalReadersReaderPresentPaymentMethodRequestCardPresent? cardPresent;

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

/// Simulated data for the interac_present payment method.
final PostTestHelpersTerminalReadersReaderPresentPaymentMethodRequestInteracPresent? interacPresent;

/// Simulated payment type.
final PostTestHelpersTerminalReadersReaderPresentPaymentMethodRequestType? type;

Map<String, dynamic> toJson() { return {
  'amount_tip': ?amountTip,
  if (card != null) 'card': card?.toJson(),
  if (cardPresent != null) 'card_present': cardPresent?.toJson(),
  'expand': ?expand,
  if (interacPresent != null) 'interac_present': interacPresent?.toJson(),
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'amount_tip', 'card', 'card_present', 'expand', 'interac_present', 'type'}.contains(key)); } 
PostTestHelpersTerminalReadersReaderPresentPaymentMethodRequest copyWith({int Function()? amountTip, PostTestHelpersTerminalReadersReaderPresentPaymentMethodRequestCard Function()? card, PostTestHelpersTerminalReadersReaderPresentPaymentMethodRequestCardPresent Function()? cardPresent, List<String> Function()? expand, PostTestHelpersTerminalReadersReaderPresentPaymentMethodRequestInteracPresent Function()? interacPresent, PostTestHelpersTerminalReadersReaderPresentPaymentMethodRequestType Function()? type, }) { return PostTestHelpersTerminalReadersReaderPresentPaymentMethodRequest(
  amountTip: amountTip != null ? amountTip() : this.amountTip,
  card: card != null ? card() : this.card,
  cardPresent: cardPresent != null ? cardPresent() : this.cardPresent,
  expand: expand != null ? expand() : this.expand,
  interacPresent: interacPresent != null ? interacPresent() : this.interacPresent,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTestHelpersTerminalReadersReaderPresentPaymentMethodRequest &&
          amountTip == other.amountTip &&
          card == other.card &&
          cardPresent == other.cardPresent &&
          listEquals(expand, other.expand) &&
          interacPresent == other.interacPresent &&
          type == other.type; } 
@override int get hashCode { return Object.hash(amountTip, card, cardPresent, Object.hashAll(expand ?? const []), interacPresent, type); } 
@override String toString() { return 'PostTestHelpersTerminalReadersReaderPresentPaymentMethodRequest(amountTip: $amountTip, card: $card, cardPresent: $cardPresent, expand: $expand, interacPresent: $interacPresent, type: $type)'; } 
 }
