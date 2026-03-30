// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'account.dart';import 'application.dart';import 'application_fee_account.dart';import 'application_fee_application.dart';import 'application_fee_balance_transaction.dart';import 'application_fee_charge.dart';import 'application_fee_originating_transaction.dart';import 'application_fee_refunds.dart';import 'balance_transaction.dart';import 'charge.dart';import 'platform_earning_fee_source.dart';/// String representing the object's type. Objects of the same type share the same value.
final class ApplicationFeeObject {const ApplicationFeeObject._(this.value);

factory ApplicationFeeObject.fromJson(String json) { return switch (json) {
  'application_fee' => applicationFee,
  _ => ApplicationFeeObject._(json),
}; }

static const ApplicationFeeObject applicationFee = ApplicationFeeObject._('application_fee');

static const List<ApplicationFeeObject> values = [applicationFee];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ApplicationFeeObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ApplicationFeeObject($value)'; } 
 }
/// 
final class ApplicationFee {const ApplicationFee({required this.account, required this.amount, required this.amountRefunded, required this.application, this.balanceTransaction, required this.charge, required this.created, required this.currency, this.feeSource, required this.id, required this.livemode, required this.object, this.originatingTransaction, required this.refunded, required this.refunds, });

factory ApplicationFee.fromJson(Map<String, dynamic> json) { return ApplicationFee(
  account: OneOf2.parse(json['account'], fromA: (v) => v as String, fromB: (v) => Account.fromJson(v as Map<String, dynamic>),),
  amount: (json['amount'] as num).toInt(),
  amountRefunded: (json['amount_refunded'] as num).toInt(),
  application: OneOf2.parse(json['application'], fromA: (v) => v as String, fromB: (v) => Application.fromJson(v as Map<String, dynamic>),),
  balanceTransaction: json['balance_transaction'] != null ? OneOf2.parse(json['balance_transaction'], fromA: (v) => v as String, fromB: (v) => BalanceTransaction.fromJson(v as Map<String, dynamic>),) : null,
  charge: OneOf2.parse(json['charge'], fromA: (v) => v as String, fromB: (v) => Charge.fromJson(v as Map<String, dynamic>),),
  created: (json['created'] as num).toInt(),
  currency: json['currency'] as String,
  feeSource: json['fee_source'] != null ? PlatformEarningFeeSource.fromJson(json['fee_source'] as Map<String, dynamic>) : null,
  id: json['id'] as String,
  livemode: json['livemode'] as bool,
  object: ApplicationFeeObject.fromJson(json['object'] as String),
  originatingTransaction: json['originating_transaction'] != null ? OneOf2.parse(json['originating_transaction'], fromA: (v) => v as String, fromB: (v) => Charge.fromJson(v as Map<String, dynamic>),) : null,
  refunded: json['refunded'] as bool,
  refunds: ApplicationFeeRefunds.fromJson(json['refunds'] as Map<String, dynamic>),
); }

/// ID of the Stripe account this fee was taken from.
final ApplicationFeeAccount account;

/// Amount earned, in cents (or local equivalent).
final int amount;

/// Amount in cents (or local equivalent) refunded (can be less than the amount attribute on the fee if a partial refund was issued)
final int amountRefunded;

/// ID of the Connect application that earned the fee.
final ApplicationFeeApplication application;

/// Balance transaction that describes the impact of this collected application fee on your account balance (not including refunds).
final ApplicationFeeBalanceTransaction? balanceTransaction;

/// ID of the charge that the application fee was taken from.
final ApplicationFeeCharge charge;

/// Time at which the object was created. Measured in seconds since the Unix epoch.
final int created;

/// Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
final String currency;

/// Polymorphic source of the application fee. Includes the ID of the object the application fee was created from.
final PlatformEarningFeeSource? feeSource;

/// Unique identifier for the object.
final String id;

/// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
final bool livemode;

/// String representing the object's type. Objects of the same type share the same value.
final ApplicationFeeObject object;

/// ID of the corresponding charge on the platform account, if this fee was the result of a charge using the `destination` parameter.
final ApplicationFeeOriginatingTransaction? originatingTransaction;

/// Whether the fee has been fully refunded. If the fee is only partially refunded, this attribute will still be false.
final bool refunded;

/// A list of refunds that have been applied to the fee.
final ApplicationFeeRefunds refunds;

Map<String, dynamic> toJson() { return {
  'account': account.toJson(),
  'amount': amount,
  'amount_refunded': amountRefunded,
  'application': application.toJson(),
  if (balanceTransaction != null) 'balance_transaction': balanceTransaction?.toJson(),
  'charge': charge.toJson(),
  'created': created,
  'currency': currency,
  if (feeSource != null) 'fee_source': feeSource?.toJson(),
  'id': id,
  'livemode': livemode,
  'object': object.toJson(),
  if (originatingTransaction != null) 'originating_transaction': originatingTransaction?.toJson(),
  'refunded': refunded,
  'refunds': refunds.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('account') &&
      json.containsKey('amount') && json['amount'] is num &&
      json.containsKey('amount_refunded') && json['amount_refunded'] is num &&
      json.containsKey('application') &&
      json.containsKey('charge') &&
      json.containsKey('created') && json['created'] is num &&
      json.containsKey('currency') && json['currency'] is String &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('livemode') && json['livemode'] is bool &&
      json.containsKey('object') &&
      json.containsKey('refunded') && json['refunded'] is bool &&
      json.containsKey('refunds'); } 
ApplicationFee copyWith({ApplicationFeeAccount? account, int? amount, int? amountRefunded, ApplicationFeeApplication? application, ApplicationFeeBalanceTransaction? Function()? balanceTransaction, ApplicationFeeCharge? charge, int? created, String? currency, PlatformEarningFeeSource? Function()? feeSource, String? id, bool? livemode, ApplicationFeeObject? object, ApplicationFeeOriginatingTransaction? Function()? originatingTransaction, bool? refunded, ApplicationFeeRefunds? refunds, }) { return ApplicationFee(
  account: account ?? this.account,
  amount: amount ?? this.amount,
  amountRefunded: amountRefunded ?? this.amountRefunded,
  application: application ?? this.application,
  balanceTransaction: balanceTransaction != null ? balanceTransaction() : this.balanceTransaction,
  charge: charge ?? this.charge,
  created: created ?? this.created,
  currency: currency ?? this.currency,
  feeSource: feeSource != null ? feeSource() : this.feeSource,
  id: id ?? this.id,
  livemode: livemode ?? this.livemode,
  object: object ?? this.object,
  originatingTransaction: originatingTransaction != null ? originatingTransaction() : this.originatingTransaction,
  refunded: refunded ?? this.refunded,
  refunds: refunds ?? this.refunds,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ApplicationFee &&
          account == other.account &&
          amount == other.amount &&
          amountRefunded == other.amountRefunded &&
          application == other.application &&
          balanceTransaction == other.balanceTransaction &&
          charge == other.charge &&
          created == other.created &&
          currency == other.currency &&
          feeSource == other.feeSource &&
          id == other.id &&
          livemode == other.livemode &&
          object == other.object &&
          originatingTransaction == other.originatingTransaction &&
          refunded == other.refunded &&
          refunds == other.refunds; } 
@override int get hashCode { return Object.hash(account, amount, amountRefunded, application, balanceTransaction, charge, created, currency, feeSource, id, livemode, object, originatingTransaction, refunded, refunds); } 
@override String toString() { return 'ApplicationFee(account: $account, amount: $amount, amountRefunded: $amountRefunded, application: $application, balanceTransaction: $balanceTransaction, charge: $charge, created: $created, currency: $currency, feeSource: $feeSource, id: $id, livemode: $livemode, object: $object, originatingTransaction: $originatingTransaction, refunded: $refunded, refunds: $refunds)'; } 
 }
