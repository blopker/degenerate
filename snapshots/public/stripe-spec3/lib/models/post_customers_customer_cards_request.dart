// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'customer_payment_source_bank_account3.dart';import 'customer_payment_source_card4.dart';import 'post_customers_customer_cards_request_bank_account.dart';import 'post_customers_customer_cards_request_card.dart';final class PostCustomersCustomerCardsRequest {const PostCustomersCustomerCardsRequest({this.alipayAccount, this.bankAccount, this.card, this.expand, this.metadata, this.source, });

factory PostCustomersCustomerCardsRequest.fromJson(Map<String, dynamic> json) { return PostCustomersCustomerCardsRequest(
  alipayAccount: json['alipay_account'] as String?,
  bankAccount: json['bank_account'] != null ? OneOf2.parse(json['bank_account'], fromA: (v) => CustomerPaymentSourceBankAccount3.fromJson(v as Map<String, dynamic>), fromB: (v) => v as String,) : null,
  card: json['card'] != null ? OneOf2.parse(json['card'], fromA: (v) => CustomerPaymentSourceCard4.fromJson(v as Map<String, dynamic>), fromB: (v) => v as String,) : null,
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
  metadata: (json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
  source: json['source'] as String?,
); }

/// A token returned by [Stripe.js](https://stripe.com/docs/js) representing the user’s Alipay account details.
final String? alipayAccount;

/// Either a token, like the ones returned by [Stripe.js](https://stripe.com/docs/js), or a dictionary containing a user's bank account details.
final PostCustomersCustomerCardsRequestBankAccount? bankAccount;

/// A token, like the ones returned by [Stripe.js](https://stripe.com/docs/js).
final PostCustomersCustomerCardsRequestCard? card;

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
final Map<String,String>? metadata;

/// Please refer to full [documentation](https://api.stripe.com) instead.
final String? source;

Map<String, dynamic> toJson() { return {
  'alipay_account': ?alipayAccount,
  if (bankAccount != null) 'bank_account': bankAccount?.toJson(),
  if (card != null) 'card': card?.toJson(),
  'expand': ?expand,
  'metadata': ?metadata,
  'source': ?source,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostCustomersCustomerCardsRequest copyWith({String Function()? alipayAccount, PostCustomersCustomerCardsRequestBankAccount Function()? bankAccount, PostCustomersCustomerCardsRequestCard Function()? card, List<String> Function()? expand, Map<String, String> Function()? metadata, String Function()? source, }) { return PostCustomersCustomerCardsRequest(
  alipayAccount: alipayAccount != null ? alipayAccount() : this.alipayAccount,
  bankAccount: bankAccount != null ? bankAccount() : this.bankAccount,
  card: card != null ? card() : this.card,
  expand: expand != null ? expand() : this.expand,
  metadata: metadata != null ? metadata() : this.metadata,
  source: source != null ? source() : this.source,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCustomersCustomerCardsRequest &&
          alipayAccount == other.alipayAccount &&
          bankAccount == other.bankAccount &&
          card == other.card &&
          listEquals(expand, other.expand) &&
          metadata == other.metadata &&
          source == other.source; } 
@override int get hashCode { return Object.hash(alipayAccount, bankAccount, card, Object.hashAll(expand ?? const []), metadata, source); } 
@override String toString() { return 'PostCustomersCustomerCardsRequest(alipayAccount: $alipayAccount, bankAccount: $bankAccount, card: $card, expand: $expand, metadata: $metadata, source: $source)'; } 
 }
