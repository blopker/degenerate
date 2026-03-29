// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'treasury_received_credit_reversal_details.dart';import 'treasury_received_credit_transaction.dart';import 'treasury_received_credits_resource_linked_flows.dart';import 'treasury_shared_resource_initiating_payment_method_details_initiating_payment_method_details.dart';import 'treasury_transaction.dart';/// Reason for the failure. A ReceivedCredit might fail because the receiving FinancialAccount is closed or frozen.
final class TreasuryReceivedCreditFailureCode {const TreasuryReceivedCreditFailureCode._(this.value);

factory TreasuryReceivedCreditFailureCode.fromJson(String json) { return switch (json) {
  'account_closed' => accountClosed,
  'account_frozen' => accountFrozen,
  'international_transaction' => internationalTransaction,
  'other' => $other,
  _ => TreasuryReceivedCreditFailureCode._(json),
}; }

static const TreasuryReceivedCreditFailureCode accountClosed = TreasuryReceivedCreditFailureCode._('account_closed');

static const TreasuryReceivedCreditFailureCode accountFrozen = TreasuryReceivedCreditFailureCode._('account_frozen');

static const TreasuryReceivedCreditFailureCode internationalTransaction = TreasuryReceivedCreditFailureCode._('international_transaction');

static const TreasuryReceivedCreditFailureCode $other = TreasuryReceivedCreditFailureCode._('other');

static const List<TreasuryReceivedCreditFailureCode> values = [accountClosed, accountFrozen, internationalTransaction, $other];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TreasuryReceivedCreditFailureCode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TreasuryReceivedCreditFailureCode($value)'; } 
 }
/// The rails used to send the funds.
final class TreasuryReceivedCreditNetwork {const TreasuryReceivedCreditNetwork._(this.value);

factory TreasuryReceivedCreditNetwork.fromJson(String json) { return switch (json) {
  'ach' => ach,
  'card' => card,
  'stripe' => stripe,
  'us_domestic_wire' => usDomesticWire,
  _ => TreasuryReceivedCreditNetwork._(json),
}; }

static const TreasuryReceivedCreditNetwork ach = TreasuryReceivedCreditNetwork._('ach');

static const TreasuryReceivedCreditNetwork card = TreasuryReceivedCreditNetwork._('card');

static const TreasuryReceivedCreditNetwork stripe = TreasuryReceivedCreditNetwork._('stripe');

static const TreasuryReceivedCreditNetwork usDomesticWire = TreasuryReceivedCreditNetwork._('us_domestic_wire');

static const List<TreasuryReceivedCreditNetwork> values = [ach, card, stripe, usDomesticWire];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TreasuryReceivedCreditNetwork && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TreasuryReceivedCreditNetwork($value)'; } 
 }
/// String representing the object's type. Objects of the same type share the same value.
final class TreasuryReceivedCreditObject {const TreasuryReceivedCreditObject._(this.value);

factory TreasuryReceivedCreditObject.fromJson(String json) { return switch (json) {
  'treasury.received_credit' => treasuryReceivedCredit,
  _ => TreasuryReceivedCreditObject._(json),
}; }

static const TreasuryReceivedCreditObject treasuryReceivedCredit = TreasuryReceivedCreditObject._('treasury.received_credit');

static const List<TreasuryReceivedCreditObject> values = [treasuryReceivedCredit];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TreasuryReceivedCreditObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TreasuryReceivedCreditObject($value)'; } 
 }
/// Status of the ReceivedCredit. ReceivedCredits are created either `succeeded` (approved) or `failed` (declined). If a ReceivedCredit is declined, the failure reason can be found in the `failure_code` field.
final class TreasuryReceivedCreditStatus {const TreasuryReceivedCreditStatus._(this.value);

factory TreasuryReceivedCreditStatus.fromJson(String json) { return switch (json) {
  'failed' => failed,
  'succeeded' => succeeded,
  _ => TreasuryReceivedCreditStatus._(json),
}; }

static const TreasuryReceivedCreditStatus failed = TreasuryReceivedCreditStatus._('failed');

static const TreasuryReceivedCreditStatus succeeded = TreasuryReceivedCreditStatus._('succeeded');

static const List<TreasuryReceivedCreditStatus> values = [failed, succeeded];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TreasuryReceivedCreditStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TreasuryReceivedCreditStatus($value)'; } 
 }
/// ReceivedCredits represent funds sent to a [FinancialAccount](https://api.stripe.com#financial_accounts) (for example, via ACH or wire). These money movements are not initiated from the FinancialAccount.
final class TreasuryReceivedCredit {const TreasuryReceivedCredit({required this.amount, required this.created, required this.currency, required this.description, this.failureCode, this.financialAccount, this.hostedRegulatoryReceiptUrl, required this.id, required this.initiatingPaymentMethodDetails, required this.linkedFlows, required this.livemode, required this.network, required this.object, this.reversalDetails, required this.status, this.transaction, });

factory TreasuryReceivedCredit.fromJson(Map<String, dynamic> json) { return TreasuryReceivedCredit(
  amount: (json['amount'] as num).toInt(),
  created: (json['created'] as num).toInt(),
  currency: json['currency'] as String,
  description: json['description'] as String,
  failureCode: json['failure_code'] != null ? TreasuryReceivedCreditFailureCode.fromJson(json['failure_code'] as String) : null,
  financialAccount: json['financial_account'] as String?,
  hostedRegulatoryReceiptUrl: json['hosted_regulatory_receipt_url'] as String?,
  id: json['id'] as String,
  initiatingPaymentMethodDetails: TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetails.fromJson(json['initiating_payment_method_details'] as Map<String, dynamic>),
  linkedFlows: TreasuryReceivedCreditsResourceLinkedFlows.fromJson(json['linked_flows'] as Map<String, dynamic>),
  livemode: json['livemode'] as bool,
  network: TreasuryReceivedCreditNetwork.fromJson(json['network'] as String),
  object: TreasuryReceivedCreditObject.fromJson(json['object'] as String),
  reversalDetails: json['reversal_details'] != null ? TreasuryReceivedCreditReversalDetails.fromJson(json['reversal_details'] as Map<String, dynamic>) : null,
  status: TreasuryReceivedCreditStatus.fromJson(json['status'] as String),
  transaction: json['transaction'] != null ? OneOf2.parse(json['transaction'], fromA: (v) => v as String, fromB: (v) => TreasuryTransaction.fromJson(v as Map<String, dynamic>),) : null,
); }

/// Amount (in cents) transferred.
final int amount;

/// Time at which the object was created. Measured in seconds since the Unix epoch.
final int created;

/// Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
final String currency;

/// An arbitrary string attached to the object. Often useful for displaying to users.
final String description;

/// Reason for the failure. A ReceivedCredit might fail because the receiving FinancialAccount is closed or frozen.
final TreasuryReceivedCreditFailureCode? failureCode;

/// The FinancialAccount that received the funds.
final String? financialAccount;

/// A [hosted transaction receipt](https://docs.stripe.com/treasury/moving-money/regulatory-receipts) URL that is provided when money movement is considered regulated under Stripe's money transmission licenses.
final String? hostedRegulatoryReceiptUrl;

/// Unique identifier for the object.
final String id;

final TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetails initiatingPaymentMethodDetails;

final TreasuryReceivedCreditsResourceLinkedFlows linkedFlows;

/// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
final bool livemode;

/// The rails used to send the funds.
final TreasuryReceivedCreditNetwork network;

/// String representing the object's type. Objects of the same type share the same value.
final TreasuryReceivedCreditObject object;

/// Details describing when a ReceivedCredit may be reversed.
final TreasuryReceivedCreditReversalDetails? reversalDetails;

/// Status of the ReceivedCredit. ReceivedCredits are created either `succeeded` (approved) or `failed` (declined). If a ReceivedCredit is declined, the failure reason can be found in the `failure_code` field.
final TreasuryReceivedCreditStatus status;

/// The Transaction associated with this object.
final TreasuryReceivedCreditTransaction? transaction;

Map<String, dynamic> toJson() { return {
  'amount': amount,
  'created': created,
  'currency': currency,
  'description': description,
  if (failureCode != null) 'failure_code': failureCode?.toJson(),
  'financial_account': ?financialAccount,
  'hosted_regulatory_receipt_url': ?hostedRegulatoryReceiptUrl,
  'id': id,
  'initiating_payment_method_details': initiatingPaymentMethodDetails.toJson(),
  'linked_flows': linkedFlows.toJson(),
  'livemode': livemode,
  'network': network.toJson(),
  'object': object.toJson(),
  if (reversalDetails != null) 'reversal_details': reversalDetails?.toJson(),
  'status': status.toJson(),
  if (transaction != null) 'transaction': transaction?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('amount') && json['amount'] is num &&
      json.containsKey('created') && json['created'] is num &&
      json.containsKey('currency') && json['currency'] is String &&
      json.containsKey('description') && json['description'] is String &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('initiating_payment_method_details') &&
      json.containsKey('linked_flows') &&
      json.containsKey('livemode') && json['livemode'] is bool &&
      json.containsKey('network') &&
      json.containsKey('object') &&
      json.containsKey('status'); } 
TreasuryReceivedCredit copyWith({int? amount, int? created, String? currency, String? description, TreasuryReceivedCreditFailureCode? Function()? failureCode, String? Function()? financialAccount, String? Function()? hostedRegulatoryReceiptUrl, String? id, TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetails? initiatingPaymentMethodDetails, TreasuryReceivedCreditsResourceLinkedFlows? linkedFlows, bool? livemode, TreasuryReceivedCreditNetwork? network, TreasuryReceivedCreditObject? object, TreasuryReceivedCreditReversalDetails? Function()? reversalDetails, TreasuryReceivedCreditStatus? status, TreasuryReceivedCreditTransaction? Function()? transaction, }) { return TreasuryReceivedCredit(
  amount: amount ?? this.amount,
  created: created ?? this.created,
  currency: currency ?? this.currency,
  description: description ?? this.description,
  failureCode: failureCode != null ? failureCode() : this.failureCode,
  financialAccount: financialAccount != null ? financialAccount() : this.financialAccount,
  hostedRegulatoryReceiptUrl: hostedRegulatoryReceiptUrl != null ? hostedRegulatoryReceiptUrl() : this.hostedRegulatoryReceiptUrl,
  id: id ?? this.id,
  initiatingPaymentMethodDetails: initiatingPaymentMethodDetails ?? this.initiatingPaymentMethodDetails,
  linkedFlows: linkedFlows ?? this.linkedFlows,
  livemode: livemode ?? this.livemode,
  network: network ?? this.network,
  object: object ?? this.object,
  reversalDetails: reversalDetails != null ? reversalDetails() : this.reversalDetails,
  status: status ?? this.status,
  transaction: transaction != null ? transaction() : this.transaction,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TreasuryReceivedCredit &&
          amount == other.amount &&
          created == other.created &&
          currency == other.currency &&
          description == other.description &&
          failureCode == other.failureCode &&
          financialAccount == other.financialAccount &&
          hostedRegulatoryReceiptUrl == other.hostedRegulatoryReceiptUrl &&
          id == other.id &&
          initiatingPaymentMethodDetails == other.initiatingPaymentMethodDetails &&
          linkedFlows == other.linkedFlows &&
          livemode == other.livemode &&
          network == other.network &&
          object == other.object &&
          reversalDetails == other.reversalDetails &&
          status == other.status &&
          transaction == other.transaction; } 
@override int get hashCode { return Object.hash(amount, created, currency, description, failureCode, financialAccount, hostedRegulatoryReceiptUrl, id, initiatingPaymentMethodDetails, linkedFlows, livemode, network, object, reversalDetails, status, transaction); } 
@override String toString() { return 'TreasuryReceivedCredit(amount: $amount, created: $created, currency: $currency, description: $description, failureCode: $failureCode, financialAccount: $financialAccount, hostedRegulatoryReceiptUrl: $hostedRegulatoryReceiptUrl, id: $id, initiatingPaymentMethodDetails: $initiatingPaymentMethodDetails, linkedFlows: $linkedFlows, livemode: $livemode, network: $network, object: $object, reversalDetails: $reversalDetails, status: $status, transaction: $transaction)'; } 
 }
