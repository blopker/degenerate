// GENERATED CODE - DO NOT MODIFY BY HAND

import 'outbound_payments_payment_method_details_financial_account.dart';import 'outbound_payments_payment_method_details_us_bank_account.dart';import 'treasury_shared_resource_billing_details.dart';/// The type of the payment method used in the OutboundPayment.
final class OutboundPaymentsPaymentMethodDetailsType {const OutboundPaymentsPaymentMethodDetailsType._(this.value);

factory OutboundPaymentsPaymentMethodDetailsType.fromJson(String json) { return switch (json) {
  'financial_account' => financialAccount,
  'us_bank_account' => usBankAccount,
  _ => OutboundPaymentsPaymentMethodDetailsType._(json),
}; }

static const OutboundPaymentsPaymentMethodDetailsType financialAccount = OutboundPaymentsPaymentMethodDetailsType._('financial_account');

static const OutboundPaymentsPaymentMethodDetailsType usBankAccount = OutboundPaymentsPaymentMethodDetailsType._('us_bank_account');

static const List<OutboundPaymentsPaymentMethodDetailsType> values = [financialAccount, usBankAccount];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OutboundPaymentsPaymentMethodDetailsType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'OutboundPaymentsPaymentMethodDetailsType($value)'; } 
 }
/// 
final class OutboundPaymentsPaymentMethodDetails {const OutboundPaymentsPaymentMethodDetails({required this.billingDetails, this.financialAccount, required this.type, this.usBankAccount, });

factory OutboundPaymentsPaymentMethodDetails.fromJson(Map<String, dynamic> json) { return OutboundPaymentsPaymentMethodDetails(
  billingDetails: TreasurySharedResourceBillingDetails.fromJson(json['billing_details'] as Map<String, dynamic>),
  financialAccount: json['financial_account'] != null ? OutboundPaymentsPaymentMethodDetailsFinancialAccount.fromJson(json['financial_account'] as Map<String, dynamic>) : null,
  type: OutboundPaymentsPaymentMethodDetailsType.fromJson(json['type'] as String),
  usBankAccount: json['us_bank_account'] != null ? OutboundPaymentsPaymentMethodDetailsUsBankAccount.fromJson(json['us_bank_account'] as Map<String, dynamic>) : null,
); }

final TreasurySharedResourceBillingDetails billingDetails;

final OutboundPaymentsPaymentMethodDetailsFinancialAccount? financialAccount;

/// The type of the payment method used in the OutboundPayment.
final OutboundPaymentsPaymentMethodDetailsType type;

final OutboundPaymentsPaymentMethodDetailsUsBankAccount? usBankAccount;

Map<String, dynamic> toJson() { return {
  'billing_details': billingDetails.toJson(),
  if (financialAccount != null) 'financial_account': financialAccount?.toJson(),
  'type': type.toJson(),
  if (usBankAccount != null) 'us_bank_account': usBankAccount?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('billing_details') &&
      json.containsKey('type'); } 
OutboundPaymentsPaymentMethodDetails copyWith({TreasurySharedResourceBillingDetails? billingDetails, OutboundPaymentsPaymentMethodDetailsFinancialAccount Function()? financialAccount, OutboundPaymentsPaymentMethodDetailsType? type, OutboundPaymentsPaymentMethodDetailsUsBankAccount Function()? usBankAccount, }) { return OutboundPaymentsPaymentMethodDetails(
  billingDetails: billingDetails ?? this.billingDetails,
  financialAccount: financialAccount != null ? financialAccount() : this.financialAccount,
  type: type ?? this.type,
  usBankAccount: usBankAccount != null ? usBankAccount() : this.usBankAccount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is OutboundPaymentsPaymentMethodDetails &&
          billingDetails == other.billingDetails &&
          financialAccount == other.financialAccount &&
          type == other.type &&
          usBankAccount == other.usBankAccount; } 
@override int get hashCode { return Object.hash(billingDetails, financialAccount, type, usBankAccount); } 
@override String toString() { return 'OutboundPaymentsPaymentMethodDetails(billingDetails: $billingDetails, financialAccount: $financialAccount, type: $type, usBankAccount: $usBankAccount)'; } 
 }
