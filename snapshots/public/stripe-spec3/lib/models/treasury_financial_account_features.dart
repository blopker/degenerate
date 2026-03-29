// GENERATED CODE - DO NOT MODIFY BY HAND

import 'treasury_financial_accounts_resource_financial_addresses_features.dart';import 'treasury_financial_accounts_resource_inbound_transfers.dart';import 'treasury_financial_accounts_resource_outbound_payments.dart';import 'treasury_financial_accounts_resource_outbound_transfers.dart';import 'treasury_financial_accounts_resource_toggle_settings.dart';/// String representing the object's type. Objects of the same type share the same value.
final class TreasuryFinancialAccountFeaturesObject {const TreasuryFinancialAccountFeaturesObject._(this.value);

factory TreasuryFinancialAccountFeaturesObject.fromJson(String json) { return switch (json) {
  'treasury.financial_account_features' => treasuryFinancialAccountFeatures,
  _ => TreasuryFinancialAccountFeaturesObject._(json),
}; }

static const TreasuryFinancialAccountFeaturesObject treasuryFinancialAccountFeatures = TreasuryFinancialAccountFeaturesObject._('treasury.financial_account_features');

static const List<TreasuryFinancialAccountFeaturesObject> values = [treasuryFinancialAccountFeatures];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TreasuryFinancialAccountFeaturesObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TreasuryFinancialAccountFeaturesObject($value)'; } 
 }
/// Encodes whether a FinancialAccount has access to a particular Feature, with a `status` enum and associated `status_details`.
/// Stripe or the platform can control Features via the requested field.
final class TreasuryFinancialAccountFeatures {const TreasuryFinancialAccountFeatures({this.cardIssuing, this.depositInsurance, this.financialAddresses, this.inboundTransfers, this.intraStripeFlows, required this.object, this.outboundPayments, this.outboundTransfers, });

factory TreasuryFinancialAccountFeatures.fromJson(Map<String, dynamic> json) { return TreasuryFinancialAccountFeatures(
  cardIssuing: json['card_issuing'] != null ? TreasuryFinancialAccountsResourceToggleSettings.fromJson(json['card_issuing'] as Map<String, dynamic>) : null,
  depositInsurance: json['deposit_insurance'] != null ? TreasuryFinancialAccountsResourceToggleSettings.fromJson(json['deposit_insurance'] as Map<String, dynamic>) : null,
  financialAddresses: json['financial_addresses'] != null ? TreasuryFinancialAccountsResourceFinancialAddressesFeatures.fromJson(json['financial_addresses'] as Map<String, dynamic>) : null,
  inboundTransfers: json['inbound_transfers'] != null ? TreasuryFinancialAccountsResourceInboundTransfers.fromJson(json['inbound_transfers'] as Map<String, dynamic>) : null,
  intraStripeFlows: json['intra_stripe_flows'] != null ? TreasuryFinancialAccountsResourceToggleSettings.fromJson(json['intra_stripe_flows'] as Map<String, dynamic>) : null,
  object: TreasuryFinancialAccountFeaturesObject.fromJson(json['object'] as String),
  outboundPayments: json['outbound_payments'] != null ? TreasuryFinancialAccountsResourceOutboundPayments.fromJson(json['outbound_payments'] as Map<String, dynamic>) : null,
  outboundTransfers: json['outbound_transfers'] != null ? TreasuryFinancialAccountsResourceOutboundTransfers.fromJson(json['outbound_transfers'] as Map<String, dynamic>) : null,
); }

final TreasuryFinancialAccountsResourceToggleSettings? cardIssuing;

final TreasuryFinancialAccountsResourceToggleSettings? depositInsurance;

final TreasuryFinancialAccountsResourceFinancialAddressesFeatures? financialAddresses;

final TreasuryFinancialAccountsResourceInboundTransfers? inboundTransfers;

final TreasuryFinancialAccountsResourceToggleSettings? intraStripeFlows;

/// String representing the object's type. Objects of the same type share the same value.
final TreasuryFinancialAccountFeaturesObject object;

final TreasuryFinancialAccountsResourceOutboundPayments? outboundPayments;

final TreasuryFinancialAccountsResourceOutboundTransfers? outboundTransfers;

Map<String, dynamic> toJson() { return {
  if (cardIssuing != null) 'card_issuing': cardIssuing?.toJson(),
  if (depositInsurance != null) 'deposit_insurance': depositInsurance?.toJson(),
  if (financialAddresses != null) 'financial_addresses': financialAddresses?.toJson(),
  if (inboundTransfers != null) 'inbound_transfers': inboundTransfers?.toJson(),
  if (intraStripeFlows != null) 'intra_stripe_flows': intraStripeFlows?.toJson(),
  'object': object.toJson(),
  if (outboundPayments != null) 'outbound_payments': outboundPayments?.toJson(),
  if (outboundTransfers != null) 'outbound_transfers': outboundTransfers?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('object'); } 
TreasuryFinancialAccountFeatures copyWith({TreasuryFinancialAccountsResourceToggleSettings Function()? cardIssuing, TreasuryFinancialAccountsResourceToggleSettings Function()? depositInsurance, TreasuryFinancialAccountsResourceFinancialAddressesFeatures Function()? financialAddresses, TreasuryFinancialAccountsResourceInboundTransfers Function()? inboundTransfers, TreasuryFinancialAccountsResourceToggleSettings Function()? intraStripeFlows, TreasuryFinancialAccountFeaturesObject? object, TreasuryFinancialAccountsResourceOutboundPayments Function()? outboundPayments, TreasuryFinancialAccountsResourceOutboundTransfers Function()? outboundTransfers, }) { return TreasuryFinancialAccountFeatures(
  cardIssuing: cardIssuing != null ? cardIssuing() : this.cardIssuing,
  depositInsurance: depositInsurance != null ? depositInsurance() : this.depositInsurance,
  financialAddresses: financialAddresses != null ? financialAddresses() : this.financialAddresses,
  inboundTransfers: inboundTransfers != null ? inboundTransfers() : this.inboundTransfers,
  intraStripeFlows: intraStripeFlows != null ? intraStripeFlows() : this.intraStripeFlows,
  object: object ?? this.object,
  outboundPayments: outboundPayments != null ? outboundPayments() : this.outboundPayments,
  outboundTransfers: outboundTransfers != null ? outboundTransfers() : this.outboundTransfers,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TreasuryFinancialAccountFeatures &&
          cardIssuing == other.cardIssuing &&
          depositInsurance == other.depositInsurance &&
          financialAddresses == other.financialAddresses &&
          inboundTransfers == other.inboundTransfers &&
          intraStripeFlows == other.intraStripeFlows &&
          object == other.object &&
          outboundPayments == other.outboundPayments &&
          outboundTransfers == other.outboundTransfers; } 
@override int get hashCode { return Object.hash(cardIssuing, depositInsurance, financialAddresses, inboundTransfers, intraStripeFlows, object, outboundPayments, outboundTransfers); } 
@override String toString() { return 'TreasuryFinancialAccountFeatures(cardIssuing: $cardIssuing, depositInsurance: $depositInsurance, financialAddresses: $financialAddresses, inboundTransfers: $inboundTransfers, intraStripeFlows: $intraStripeFlows, object: $object, outboundPayments: $outboundPayments, outboundTransfers: $outboundTransfers)'; } 
 }
