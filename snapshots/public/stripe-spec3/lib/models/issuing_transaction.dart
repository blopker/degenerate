// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'balance_transaction.dart';import 'issuing_authorization.dart';import 'issuing_authorization_merchant_data.dart';import 'issuing_card.dart';import 'issuing_cardholder.dart';import 'issuing_dispute.dart';import 'issuing_token.dart';import 'issuing_transaction_amount_details.dart';import 'issuing_transaction_authorization.dart';import 'issuing_transaction_balance_transaction.dart';import 'issuing_transaction_card.dart';import 'issuing_transaction_cardholder.dart';import 'issuing_transaction_dispute.dart';import 'issuing_transaction_network_data.dart';import 'issuing_transaction_purchase_details.dart';import 'issuing_transaction_token.dart';import 'issuing_transaction_treasury.dart';/// String representing the object's type. Objects of the same type share the same value.
@immutable final class IssuingTransactionObject {const IssuingTransactionObject._(this.value);

factory IssuingTransactionObject.fromJson(String json) { return switch (json) {
  'issuing.transaction' => issuingTransaction,
  _ => IssuingTransactionObject._(json),
}; }

static const IssuingTransactionObject issuingTransaction = IssuingTransactionObject._('issuing.transaction');

static const List<IssuingTransactionObject> values = [issuingTransaction];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuingTransactionObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IssuingTransactionObject($value)'; } 
 }
/// The nature of the transaction.
@immutable final class IssuingTransactionType {const IssuingTransactionType._(this.value);

factory IssuingTransactionType.fromJson(String json) { return switch (json) {
  'capture' => capture,
  'refund' => refund,
  _ => IssuingTransactionType._(json),
}; }

static const IssuingTransactionType capture = IssuingTransactionType._('capture');

static const IssuingTransactionType refund = IssuingTransactionType._('refund');

static const List<IssuingTransactionType> values = [capture, refund];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuingTransactionType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IssuingTransactionType($value)'; } 
 }
/// The digital wallet used for this transaction. One of `apple_pay`, `google_pay`, or `samsung_pay`.
@immutable final class IssuingTransactionWallet {const IssuingTransactionWallet._(this.value);

factory IssuingTransactionWallet.fromJson(String json) { return switch (json) {
  'apple_pay' => applePay,
  'google_pay' => googlePay,
  'samsung_pay' => samsungPay,
  _ => IssuingTransactionWallet._(json),
}; }

static const IssuingTransactionWallet applePay = IssuingTransactionWallet._('apple_pay');

static const IssuingTransactionWallet googlePay = IssuingTransactionWallet._('google_pay');

static const IssuingTransactionWallet samsungPay = IssuingTransactionWallet._('samsung_pay');

static const List<IssuingTransactionWallet> values = [applePay, googlePay, samsungPay];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuingTransactionWallet && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IssuingTransactionWallet($value)'; } 
 }
/// Any use of an [issued card](https://docs.stripe.com/issuing) that results in funds entering or leaving
/// your Stripe account, such as a completed purchase or refund, is represented by an Issuing
/// `Transaction` object.
/// 
/// Related guide: [Issued card transactions](https://docs.stripe.com/issuing/purchases/transactions)
@immutable final class IssuingTransaction {const IssuingTransaction({required this.amount, required this.card, required this.created, required this.currency, required this.id, required this.livemode, required this.merchantAmount, required this.merchantCurrency, required this.merchantData, required this.metadata, required this.object, required this.type, this.amountDetails = const Omittable.absent(), this.authorization = const Omittable.absent(), this.balanceTransaction = const Omittable.absent(), this.cardholder = const Omittable.absent(), this.dispute = const Omittable.absent(), this.networkData = const Omittable.absent(), this.purchaseDetails = const Omittable.absent(), this.token = const Omittable.absent(), this.treasury = const Omittable.absent(), this.wallet = const Omittable.absent(), });

factory IssuingTransaction.fromJson(Map<String, dynamic> json) { return IssuingTransaction(
  amount: (json['amount'] as num).toInt(),
  amountDetails: json.containsKey('amount_details') ? Omittable(json['amount_details'] != null ? IssuingTransactionAmountDetails.fromJson(json['amount_details'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  authorization: json.containsKey('authorization') ? Omittable(json['authorization'] != null ? OneOf2.parse(json['authorization'], fromA: (v) => v as String, fromB: (v) => IssuingAuthorization.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  balanceTransaction: json.containsKey('balance_transaction') ? Omittable(json['balance_transaction'] != null ? OneOf2.parse(json['balance_transaction'], fromA: (v) => v as String, fromB: (v) => BalanceTransaction.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  card: OneOf2.parse(json['card'], fromA: (v) => v as String, fromB: (v) => IssuingCard.fromJson(v as Map<String, dynamic>),),
  cardholder: json.containsKey('cardholder') ? Omittable(json['cardholder'] != null ? OneOf2.parse(json['cardholder'], fromA: (v) => v as String, fromB: (v) => IssuingCardholder.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  created: (json['created'] as num).toInt(),
  currency: json['currency'] as String,
  dispute: json.containsKey('dispute') ? Omittable(json['dispute'] != null ? OneOf2.parse(json['dispute'], fromA: (v) => v as String, fromB: (v) => IssuingDispute.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  id: json['id'] as String,
  livemode: json['livemode'] as bool,
  merchantAmount: (json['merchant_amount'] as num).toInt(),
  merchantCurrency: json['merchant_currency'] as String,
  merchantData: IssuingAuthorizationMerchantData.fromJson(json['merchant_data'] as Map<String, dynamic>),
  metadata: (json['metadata'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String)),
  networkData: json.containsKey('network_data') ? Omittable(json['network_data'] != null ? IssuingTransactionNetworkData.fromJson(json['network_data'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  object: IssuingTransactionObject.fromJson(json['object'] as String),
  purchaseDetails: json.containsKey('purchase_details') ? Omittable(json['purchase_details'] != null ? IssuingTransactionPurchaseDetails.fromJson(json['purchase_details'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  token: json.containsKey('token') ? Omittable(json['token'] != null ? OneOf2.parse(json['token'], fromA: (v) => v as String, fromB: (v) => IssuingToken.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  treasury: json.containsKey('treasury') ? Omittable(json['treasury'] != null ? IssuingTransactionTreasury.fromJson(json['treasury'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  type: IssuingTransactionType.fromJson(json['type'] as String),
  wallet: json.containsKey('wallet') ? Omittable(json['wallet'] != null ? IssuingTransactionWallet.fromJson(json['wallet'] as String) : null) : const Omittable.absent(),
); }

/// The transaction amount, which will be reflected in your balance. This amount is in your currency and in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal).
final int amount;

/// Detailed breakdown of amount components. These amounts are denominated in `currency` and in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal).
final Omittable<IssuingTransactionAmountDetails?> amountDetails;

/// The `Authorization` object that led to this transaction.
final Omittable<IssuingTransactionAuthorization?> authorization;

/// ID of the [balance transaction](https://docs.stripe.com/api/balance_transactions) associated with this transaction.
final Omittable<IssuingTransactionBalanceTransaction?> balanceTransaction;

/// The card used to make this transaction.
final IssuingTransactionCard card;

/// The cardholder to whom this transaction belongs.
final Omittable<IssuingTransactionCardholder?> cardholder;

/// Time at which the object was created. Measured in seconds since the Unix epoch.
final int created;

/// Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
final String currency;

/// If you've disputed the transaction, the ID of the dispute.
final Omittable<IssuingTransactionDispute?> dispute;

/// Unique identifier for the object.
final String id;

/// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
final bool livemode;

/// The amount that the merchant will receive, denominated in `merchant_currency` and in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal). It will be different from `amount` if the merchant is taking payment in a different currency.
final int merchantAmount;

/// The currency with which the merchant is taking payment.
final String merchantCurrency;

final IssuingAuthorizationMerchantData merchantData;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
final Map<String,String> metadata;

/// Details about the transaction, such as processing dates, set by the card network.
final Omittable<IssuingTransactionNetworkData?> networkData;

/// String representing the object's type. Objects of the same type share the same value.
final IssuingTransactionObject object;

/// Additional purchase information that is optionally provided by the merchant.
final Omittable<IssuingTransactionPurchaseDetails?> purchaseDetails;

/// [Token](https://docs.stripe.com/api/issuing/tokens/object) object used for this transaction. If a network token was not used for this transaction, this field will be null.
final Omittable<IssuingTransactionToken?> token;

/// [Treasury](https://docs.stripe.com/api/treasury) details related to this transaction if it was created on a [FinancialAccount](/docs/api/treasury/financial_accounts
final Omittable<IssuingTransactionTreasury?> treasury;

/// The nature of the transaction.
final IssuingTransactionType type;

/// The digital wallet used for this transaction. One of `apple_pay`, `google_pay`, or `samsung_pay`.
final Omittable<IssuingTransactionWallet?> wallet;

Map<String, dynamic> toJson() { return {
  'amount': amount,
  if (amountDetails.isPresent) 'amount_details': amountDetails.value?.toJson(),
  if (authorization.isPresent) 'authorization': authorization.value?.toJson(),
  if (balanceTransaction.isPresent) 'balance_transaction': balanceTransaction.value?.toJson(),
  'card': card.toJson(),
  if (cardholder.isPresent) 'cardholder': cardholder.value?.toJson(),
  'created': created,
  'currency': currency,
  if (dispute.isPresent) 'dispute': dispute.value?.toJson(),
  'id': id,
  'livemode': livemode,
  'merchant_amount': merchantAmount,
  'merchant_currency': merchantCurrency,
  'merchant_data': merchantData.toJson(),
  'metadata': metadata,
  if (networkData.isPresent) 'network_data': networkData.value?.toJson(),
  'object': object.toJson(),
  if (purchaseDetails.isPresent) 'purchase_details': purchaseDetails.value?.toJson(),
  if (token.isPresent) 'token': token.value?.toJson(),
  if (treasury.isPresent) 'treasury': treasury.value?.toJson(),
  'type': type.toJson(),
  if (wallet.isPresent) 'wallet': wallet.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('amount') && json['amount'] is num &&
      json.containsKey('card') &&
      json.containsKey('created') && json['created'] is num &&
      json.containsKey('currency') && json['currency'] is String &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('livemode') && json['livemode'] is bool &&
      json.containsKey('merchant_amount') && json['merchant_amount'] is num &&
      json.containsKey('merchant_currency') && json['merchant_currency'] is String &&
      json.containsKey('merchant_data') &&
      json.containsKey('metadata') &&
      json.containsKey('object') &&
      json.containsKey('type'); } 
IssuingTransaction copyWith({int? amount, Omittable<IssuingTransactionAmountDetails?>? amountDetails, Omittable<IssuingTransactionAuthorization?>? authorization, Omittable<IssuingTransactionBalanceTransaction?>? balanceTransaction, IssuingTransactionCard? card, Omittable<IssuingTransactionCardholder?>? cardholder, int? created, String? currency, Omittable<IssuingTransactionDispute?>? dispute, String? id, bool? livemode, int? merchantAmount, String? merchantCurrency, IssuingAuthorizationMerchantData? merchantData, Map<String,String>? metadata, Omittable<IssuingTransactionNetworkData?>? networkData, IssuingTransactionObject? object, Omittable<IssuingTransactionPurchaseDetails?>? purchaseDetails, Omittable<IssuingTransactionToken?>? token, Omittable<IssuingTransactionTreasury?>? treasury, IssuingTransactionType? type, Omittable<IssuingTransactionWallet?>? wallet, }) { return IssuingTransaction(
  amount: amount ?? this.amount,
  amountDetails: amountDetails ?? this.amountDetails,
  authorization: authorization ?? this.authorization,
  balanceTransaction: balanceTransaction ?? this.balanceTransaction,
  card: card ?? this.card,
  cardholder: cardholder ?? this.cardholder,
  created: created ?? this.created,
  currency: currency ?? this.currency,
  dispute: dispute ?? this.dispute,
  id: id ?? this.id,
  livemode: livemode ?? this.livemode,
  merchantAmount: merchantAmount ?? this.merchantAmount,
  merchantCurrency: merchantCurrency ?? this.merchantCurrency,
  merchantData: merchantData ?? this.merchantData,
  metadata: metadata ?? this.metadata,
  networkData: networkData ?? this.networkData,
  object: object ?? this.object,
  purchaseDetails: purchaseDetails ?? this.purchaseDetails,
  token: token ?? this.token,
  treasury: treasury ?? this.treasury,
  type: type ?? this.type,
  wallet: wallet ?? this.wallet,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingTransaction &&
          amount == other.amount &&
          amountDetails == other.amountDetails &&
          authorization == other.authorization &&
          balanceTransaction == other.balanceTransaction &&
          card == other.card &&
          cardholder == other.cardholder &&
          created == other.created &&
          currency == other.currency &&
          dispute == other.dispute &&
          id == other.id &&
          livemode == other.livemode &&
          merchantAmount == other.merchantAmount &&
          merchantCurrency == other.merchantCurrency &&
          merchantData == other.merchantData &&
          metadata == other.metadata &&
          networkData == other.networkData &&
          object == other.object &&
          purchaseDetails == other.purchaseDetails &&
          token == other.token &&
          treasury == other.treasury &&
          type == other.type &&
          wallet == other.wallet; } 
@override int get hashCode { return Object.hashAll([amount, amountDetails, authorization, balanceTransaction, card, cardholder, created, currency, dispute, id, livemode, merchantAmount, merchantCurrency, merchantData, metadata, networkData, object, purchaseDetails, token, treasury, type, wallet]); } 
@override String toString() { return 'IssuingTransaction(amount: $amount, amountDetails: $amountDetails, authorization: $authorization, balanceTransaction: $balanceTransaction, card: $card, cardholder: $cardholder, created: $created, currency: $currency, dispute: $dispute, id: $id, livemode: $livemode, merchantAmount: $merchantAmount, merchantCurrency: $merchantCurrency, merchantData: $merchantData, metadata: $metadata, networkData: $networkData, object: $object, purchaseDetails: $purchaseDetails, token: $token, treasury: $treasury, type: $type, wallet: $wallet)'; } 
 }
