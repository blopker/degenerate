// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'funding_instructions_bank_transfer_financial_address.dart';/// Type of bank transfer
@immutable final class PaymentIntentNextActionDisplayBankTransferInstructionsType {const PaymentIntentNextActionDisplayBankTransferInstructionsType._(this.value);

factory PaymentIntentNextActionDisplayBankTransferInstructionsType.fromJson(String json) { return switch (json) {
  'eu_bank_transfer' => euBankTransfer,
  'gb_bank_transfer' => gbBankTransfer,
  'jp_bank_transfer' => jpBankTransfer,
  'mx_bank_transfer' => mxBankTransfer,
  'us_bank_transfer' => usBankTransfer,
  _ => PaymentIntentNextActionDisplayBankTransferInstructionsType._(json),
}; }

static const PaymentIntentNextActionDisplayBankTransferInstructionsType euBankTransfer = PaymentIntentNextActionDisplayBankTransferInstructionsType._('eu_bank_transfer');

static const PaymentIntentNextActionDisplayBankTransferInstructionsType gbBankTransfer = PaymentIntentNextActionDisplayBankTransferInstructionsType._('gb_bank_transfer');

static const PaymentIntentNextActionDisplayBankTransferInstructionsType jpBankTransfer = PaymentIntentNextActionDisplayBankTransferInstructionsType._('jp_bank_transfer');

static const PaymentIntentNextActionDisplayBankTransferInstructionsType mxBankTransfer = PaymentIntentNextActionDisplayBankTransferInstructionsType._('mx_bank_transfer');

static const PaymentIntentNextActionDisplayBankTransferInstructionsType usBankTransfer = PaymentIntentNextActionDisplayBankTransferInstructionsType._('us_bank_transfer');

static const List<PaymentIntentNextActionDisplayBankTransferInstructionsType> values = [euBankTransfer, gbBankTransfer, jpBankTransfer, mxBankTransfer, usBankTransfer];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentNextActionDisplayBankTransferInstructionsType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentNextActionDisplayBankTransferInstructionsType($value)'; } 
 }
/// 
@immutable final class PaymentIntentNextActionDisplayBankTransferInstructions {const PaymentIntentNextActionDisplayBankTransferInstructions({required this.type, this.amountRemaining, this.currency, this.financialAddresses, this.hostedInstructionsUrl, this.reference, });

factory PaymentIntentNextActionDisplayBankTransferInstructions.fromJson(Map<String, dynamic> json) { return PaymentIntentNextActionDisplayBankTransferInstructions(
  amountRemaining: json['amount_remaining'] != null ? (json['amount_remaining'] as num).toInt() : null,
  currency: json['currency'] as String?,
  financialAddresses: (json['financial_addresses'] as List<dynamic>?)?.map((e) => FundingInstructionsBankTransferFinancialAddress.fromJson(e as Map<String, dynamic>)).toList(),
  hostedInstructionsUrl: json['hosted_instructions_url'] as String?,
  reference: json['reference'] as String?,
  type: PaymentIntentNextActionDisplayBankTransferInstructionsType.fromJson(json['type'] as String),
); }

/// The remaining amount that needs to be transferred to complete the payment.
final int? amountRemaining;

/// Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
final String? currency;

/// A list of financial addresses that can be used to fund the customer balance
final List<FundingInstructionsBankTransferFinancialAddress>? financialAddresses;

/// A link to a hosted page that guides your customer through completing the transfer.
final String? hostedInstructionsUrl;

/// A string identifying this payment. Instruct your customer to include this code in the reference or memo field of their bank transfer.
final String? reference;

/// Type of bank transfer
final PaymentIntentNextActionDisplayBankTransferInstructionsType type;

Map<String, dynamic> toJson() { return {
  'amount_remaining': ?amountRemaining,
  'currency': ?currency,
  if (financialAddresses != null) 'financial_addresses': financialAddresses?.map((e) => e.toJson()).toList(),
  'hosted_instructions_url': ?hostedInstructionsUrl,
  'reference': ?reference,
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PaymentIntentNextActionDisplayBankTransferInstructions copyWith({int? Function()? amountRemaining, String? Function()? currency, List<FundingInstructionsBankTransferFinancialAddress> Function()? financialAddresses, String? Function()? hostedInstructionsUrl, String? Function()? reference, PaymentIntentNextActionDisplayBankTransferInstructionsType? type, }) { return PaymentIntentNextActionDisplayBankTransferInstructions(
  amountRemaining: amountRemaining != null ? amountRemaining() : this.amountRemaining,
  currency: currency != null ? currency() : this.currency,
  financialAddresses: financialAddresses != null ? financialAddresses() : this.financialAddresses,
  hostedInstructionsUrl: hostedInstructionsUrl != null ? hostedInstructionsUrl() : this.hostedInstructionsUrl,
  reference: reference != null ? reference() : this.reference,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentIntentNextActionDisplayBankTransferInstructions &&
          amountRemaining == other.amountRemaining &&
          currency == other.currency &&
          listEquals(financialAddresses, other.financialAddresses) &&
          hostedInstructionsUrl == other.hostedInstructionsUrl &&
          reference == other.reference &&
          type == other.type; } 
@override int get hashCode { return Object.hash(amountRemaining, currency, Object.hashAll(financialAddresses ?? const []), hostedInstructionsUrl, reference, type); } 
@override String toString() { return 'PaymentIntentNextActionDisplayBankTransferInstructions(amountRemaining: $amountRemaining, currency: $currency, financialAddresses: $financialAddresses, hostedInstructionsUrl: $hostedInstructionsUrl, reference: $reference, type: $type)'; } 
 }
