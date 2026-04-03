// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_test_helpers_issuing_transactions_create_unlinked_refund_request_merchant_data.dart';import 'post_test_helpers_issuing_transactions_create_unlinked_refund_request_purchase_details.dart';@immutable final class PostTestHelpersIssuingTransactionsCreateUnlinkedRefundRequest {const PostTestHelpersIssuingTransactionsCreateUnlinkedRefundRequest({required this.amount, required this.card, this.currency, this.expand, this.merchantData, this.purchaseDetails, });

factory PostTestHelpersIssuingTransactionsCreateUnlinkedRefundRequest.fromJson(Map<String, dynamic> json) { return PostTestHelpersIssuingTransactionsCreateUnlinkedRefundRequest(
  amount: (json['amount'] as num).toInt(),
  card: json['card'] as String,
  currency: json['currency'] as String?,
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
  merchantData: json['merchant_data'] != null ? PostTestHelpersIssuingTransactionsCreateUnlinkedRefundRequestMerchantData.fromJson(json['merchant_data'] as Map<String, dynamic>) : null,
  purchaseDetails: json['purchase_details'] != null ? PostTestHelpersIssuingTransactionsCreateUnlinkedRefundRequestPurchaseDetails.fromJson(json['purchase_details'] as Map<String, dynamic>) : null,
); }

/// The total amount to attempt to refund. This amount is in the provided currency, or defaults to the cards currency, and in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal).
final int amount;

/// Card associated with this unlinked refund transaction.
final String card;

/// The currency of the unlinked refund. If not provided, defaults to the currency of the card. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
final String? currency;

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

/// Details about the seller (grocery store, e-commerce website, etc.) where the card authorization happened.
final PostTestHelpersIssuingTransactionsCreateUnlinkedRefundRequestMerchantData? merchantData;

/// Additional purchase information that is optionally provided by the merchant.
final PostTestHelpersIssuingTransactionsCreateUnlinkedRefundRequestPurchaseDetails? purchaseDetails;

Map<String, dynamic> toJson() { return {
  'amount': amount,
  'card': card,
  'currency': ?currency,
  'expand': ?expand,
  if (merchantData != null) 'merchant_data': merchantData?.toJson(),
  if (purchaseDetails != null) 'purchase_details': purchaseDetails?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('amount') && json['amount'] is num &&
      json.containsKey('card') && json['card'] is String; } 
PostTestHelpersIssuingTransactionsCreateUnlinkedRefundRequest copyWith({int? amount, String? card, String Function()? currency, List<String> Function()? expand, PostTestHelpersIssuingTransactionsCreateUnlinkedRefundRequestMerchantData Function()? merchantData, PostTestHelpersIssuingTransactionsCreateUnlinkedRefundRequestPurchaseDetails Function()? purchaseDetails, }) { return PostTestHelpersIssuingTransactionsCreateUnlinkedRefundRequest(
  amount: amount ?? this.amount,
  card: card ?? this.card,
  currency: currency != null ? currency() : this.currency,
  expand: expand != null ? expand() : this.expand,
  merchantData: merchantData != null ? merchantData() : this.merchantData,
  purchaseDetails: purchaseDetails != null ? purchaseDetails() : this.purchaseDetails,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTestHelpersIssuingTransactionsCreateUnlinkedRefundRequest &&
          amount == other.amount &&
          card == other.card &&
          currency == other.currency &&
          listEquals(expand, other.expand) &&
          merchantData == other.merchantData &&
          purchaseDetails == other.purchaseDetails; } 
@override int get hashCode { return Object.hash(amount, card, currency, Object.hashAll(expand ?? const []), merchantData, purchaseDetails); } 
@override String toString() { return 'PostTestHelpersIssuingTransactionsCreateUnlinkedRefundRequest(amount: $amount, card: $card, currency: $currency, expand: $expand, merchantData: $merchantData, purchaseDetails: $purchaseDetails)'; } 
 }
