// GENERATED CODE - DO NOT MODIFY BY HAND

import 'outbound_transfers_payment_method_details_financial_account.dart';import 'outbound_transfers_payment_method_details_us_bank_account.dart';import 'treasury_shared_resource_billing_details.dart';/// The type of the payment method used in the OutboundTransfer.
final class OutboundTransfersPaymentMethodDetailsType {const OutboundTransfersPaymentMethodDetailsType._(this.value);

factory OutboundTransfersPaymentMethodDetailsType.fromJson(String json) { return switch (json) {
  'financial_account' => financialAccount,
  'us_bank_account' => usBankAccount,
  _ => OutboundTransfersPaymentMethodDetailsType._(json),
}; }

static const OutboundTransfersPaymentMethodDetailsType financialAccount = OutboundTransfersPaymentMethodDetailsType._('financial_account');

static const OutboundTransfersPaymentMethodDetailsType usBankAccount = OutboundTransfersPaymentMethodDetailsType._('us_bank_account');

static const List<OutboundTransfersPaymentMethodDetailsType> values = [financialAccount, usBankAccount];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OutboundTransfersPaymentMethodDetailsType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'OutboundTransfersPaymentMethodDetailsType($value)'; } 
 }
/// 
final class OutboundTransfersPaymentMethodDetails {const OutboundTransfersPaymentMethodDetails({required this.billingDetails, this.financialAccount, required this.type, this.usBankAccount, });

factory OutboundTransfersPaymentMethodDetails.fromJson(Map<String, dynamic> json) { return OutboundTransfersPaymentMethodDetails(
  billingDetails: TreasurySharedResourceBillingDetails.fromJson(json['billing_details'] as Map<String, dynamic>),
  financialAccount: json['financial_account'] != null ? OutboundTransfersPaymentMethodDetailsFinancialAccount.fromJson(json['financial_account'] as Map<String, dynamic>) : null,
  type: OutboundTransfersPaymentMethodDetailsType.fromJson(json['type'] as String),
  usBankAccount: json['us_bank_account'] != null ? OutboundTransfersPaymentMethodDetailsUsBankAccount.fromJson(json['us_bank_account'] as Map<String, dynamic>) : null,
); }

final TreasurySharedResourceBillingDetails billingDetails;

final OutboundTransfersPaymentMethodDetailsFinancialAccount? financialAccount;

/// The type of the payment method used in the OutboundTransfer.
final OutboundTransfersPaymentMethodDetailsType type;

final OutboundTransfersPaymentMethodDetailsUsBankAccount? usBankAccount;

Map<String, dynamic> toJson() { return {
  'billing_details': billingDetails.toJson(),
  if (financialAccount != null) 'financial_account': financialAccount?.toJson(),
  'type': type.toJson(),
  if (usBankAccount != null) 'us_bank_account': usBankAccount?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('billing_details') &&
      json.containsKey('type'); } 
OutboundTransfersPaymentMethodDetails copyWith({TreasurySharedResourceBillingDetails? billingDetails, OutboundTransfersPaymentMethodDetailsFinancialAccount Function()? financialAccount, OutboundTransfersPaymentMethodDetailsType? type, OutboundTransfersPaymentMethodDetailsUsBankAccount Function()? usBankAccount, }) { return OutboundTransfersPaymentMethodDetails(
  billingDetails: billingDetails ?? this.billingDetails,
  financialAccount: financialAccount != null ? financialAccount() : this.financialAccount,
  type: type ?? this.type,
  usBankAccount: usBankAccount != null ? usBankAccount() : this.usBankAccount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is OutboundTransfersPaymentMethodDetails &&
          billingDetails == other.billingDetails &&
          financialAccount == other.financialAccount &&
          type == other.type &&
          usBankAccount == other.usBankAccount; } 
@override int get hashCode { return Object.hash(billingDetails, financialAccount, type, usBankAccount); } 
@override String toString() { return 'OutboundTransfersPaymentMethodDetails(billingDetails: $billingDetails, financialAccount: $financialAccount, type: $type, usBankAccount: $usBankAccount)'; } 
 }
