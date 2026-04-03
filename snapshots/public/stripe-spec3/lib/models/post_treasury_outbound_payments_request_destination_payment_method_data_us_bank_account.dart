// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataUsBankAccountAccountHolderType {const PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataUsBankAccountAccountHolderType._(this.value);

factory PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataUsBankAccountAccountHolderType.fromJson(String json) { return switch (json) {
  'company' => company,
  'individual' => individual,
  _ => PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataUsBankAccountAccountHolderType._(json),
}; }

static const PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataUsBankAccountAccountHolderType company = PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataUsBankAccountAccountHolderType._('company');

static const PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataUsBankAccountAccountHolderType individual = PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataUsBankAccountAccountHolderType._('individual');

static const List<PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataUsBankAccountAccountHolderType> values = [company, individual];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataUsBankAccountAccountHolderType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataUsBankAccountAccountHolderType($value)'; } 
 }
@immutable final class PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataUsBankAccountAccountType {const PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataUsBankAccountAccountType._(this.value);

factory PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataUsBankAccountAccountType.fromJson(String json) { return switch (json) {
  'checking' => checking,
  'savings' => savings,
  _ => PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataUsBankAccountAccountType._(json),
}; }

static const PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataUsBankAccountAccountType checking = PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataUsBankAccountAccountType._('checking');

static const PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataUsBankAccountAccountType savings = PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataUsBankAccountAccountType._('savings');

static const List<PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataUsBankAccountAccountType> values = [checking, savings];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataUsBankAccountAccountType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataUsBankAccountAccountType($value)'; } 
 }
@immutable final class PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataUsBankAccount {const PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataUsBankAccount({this.accountHolderType, this.accountNumber, this.accountType, this.financialConnectionsAccount, this.routingNumber, });

factory PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataUsBankAccount.fromJson(Map<String, dynamic> json) { return PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataUsBankAccount(
  accountHolderType: json['account_holder_type'] != null ? PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataUsBankAccountAccountHolderType.fromJson(json['account_holder_type'] as String) : null,
  accountNumber: json['account_number'] as String?,
  accountType: json['account_type'] != null ? PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataUsBankAccountAccountType.fromJson(json['account_type'] as String) : null,
  financialConnectionsAccount: json['financial_connections_account'] as String?,
  routingNumber: json['routing_number'] as String?,
); }

final PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataUsBankAccountAccountHolderType? accountHolderType;

final String? accountNumber;

final PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataUsBankAccountAccountType? accountType;

final String? financialConnectionsAccount;

final String? routingNumber;

Map<String, dynamic> toJson() { return {
  if (accountHolderType != null) 'account_holder_type': accountHolderType?.toJson(),
  'account_number': ?accountNumber,
  if (accountType != null) 'account_type': accountType?.toJson(),
  'financial_connections_account': ?financialConnectionsAccount,
  'routing_number': ?routingNumber,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account_holder_type', 'account_number', 'account_type', 'financial_connections_account', 'routing_number'}.contains(key)); } 
PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataUsBankAccount copyWith({PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataUsBankAccountAccountHolderType Function()? accountHolderType, String Function()? accountNumber, PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataUsBankAccountAccountType Function()? accountType, String Function()? financialConnectionsAccount, String Function()? routingNumber, }) { return PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataUsBankAccount(
  accountHolderType: accountHolderType != null ? accountHolderType() : this.accountHolderType,
  accountNumber: accountNumber != null ? accountNumber() : this.accountNumber,
  accountType: accountType != null ? accountType() : this.accountType,
  financialConnectionsAccount: financialConnectionsAccount != null ? financialConnectionsAccount() : this.financialConnectionsAccount,
  routingNumber: routingNumber != null ? routingNumber() : this.routingNumber,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataUsBankAccount &&
          accountHolderType == other.accountHolderType &&
          accountNumber == other.accountNumber &&
          accountType == other.accountType &&
          financialConnectionsAccount == other.financialConnectionsAccount &&
          routingNumber == other.routingNumber; } 
@override int get hashCode { return Object.hash(accountHolderType, accountNumber, accountType, financialConnectionsAccount, routingNumber); } 
@override String toString() { return 'PostTreasuryOutboundPaymentsRequestDestinationPaymentMethodDataUsBankAccount(accountHolderType: $accountHolderType, accountNumber: $accountNumber, accountType: $accountType, financialConnectionsAccount: $financialConnectionsAccount, routingNumber: $routingNumber)'; } 
 }
