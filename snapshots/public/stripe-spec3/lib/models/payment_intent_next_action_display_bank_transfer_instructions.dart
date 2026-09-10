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
@immutable final class PaymentIntentNextActionDisplayBankTransferInstructions {const PaymentIntentNextActionDisplayBankTransferInstructions({required this.type, this.amountRemaining = const Omittable.absent(), this.currency = const Omittable.absent(), this.financialAddresses, this.hostedInstructionsUrl = const Omittable.absent(), this.reference = const Omittable.absent(), });

factory PaymentIntentNextActionDisplayBankTransferInstructions.fromJson(Map<String, dynamic> json) { return PaymentIntentNextActionDisplayBankTransferInstructions(
  amountRemaining: json.containsKey('amount_remaining') ? Omittable(json['amount_remaining'] != null ? (json['amount_remaining'] as num).toInt() : null) : const Omittable.absent(),
  currency: json.containsKey('currency') ? Omittable(json['currency'] as String?) : const Omittable.absent(),
  financialAddresses: (json['financial_addresses'] as List<dynamic>?)?.map((e) => FundingInstructionsBankTransferFinancialAddress.fromJson(e as Map<String, dynamic>)).toList(),
  hostedInstructionsUrl: json.containsKey('hosted_instructions_url') ? Omittable(json['hosted_instructions_url'] as String?) : const Omittable.absent(),
  reference: json.containsKey('reference') ? Omittable(json['reference'] as String?) : const Omittable.absent(),
  type: PaymentIntentNextActionDisplayBankTransferInstructionsType.fromJson(json['type'] as String),
); }

/// The remaining amount that needs to be transferred to complete the payment.
final Omittable<int?> amountRemaining;

/// Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
final Omittable<String?> currency;

/// A list of financial addresses that can be used to fund the customer balance
final List<FundingInstructionsBankTransferFinancialAddress>? financialAddresses;

/// A link to a hosted page that guides your customer through completing the transfer.
final Omittable<String?> hostedInstructionsUrl;

/// A string identifying this payment. Instruct your customer to include this code in the reference or memo field of their bank transfer.
final Omittable<String?> reference;

/// Type of bank transfer
final PaymentIntentNextActionDisplayBankTransferInstructionsType type;

Map<String, dynamic> toJson() { return {
  if (amountRemaining.isPresent) 'amount_remaining': amountRemaining.value,
  if (currency.isPresent) 'currency': currency.value,
  if (financialAddresses != null) 'financial_addresses': financialAddresses?.map((e) => e.toJson()).toList(),
  if (hostedInstructionsUrl.isPresent) 'hosted_instructions_url': hostedInstructionsUrl.value,
  if (reference.isPresent) 'reference': reference.value,
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PaymentIntentNextActionDisplayBankTransferInstructions copyWith({Omittable<int?>? amountRemaining, Omittable<String?>? currency, List<FundingInstructionsBankTransferFinancialAddress>? Function()? financialAddresses, Omittable<String?>? hostedInstructionsUrl, Omittable<String?>? reference, PaymentIntentNextActionDisplayBankTransferInstructionsType? type, }) { return PaymentIntentNextActionDisplayBankTransferInstructions(
  amountRemaining: amountRemaining ?? this.amountRemaining,
  currency: currency ?? this.currency,
  financialAddresses: financialAddresses != null ? financialAddresses() : this.financialAddresses,
  hostedInstructionsUrl: hostedInstructionsUrl ?? this.hostedInstructionsUrl,
  reference: reference ?? this.reference,
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
