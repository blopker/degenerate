// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSetupIntentsIntentConfirmRequestPaymentMethodDataUsBankAccountAccountHolderType {const PostSetupIntentsIntentConfirmRequestPaymentMethodDataUsBankAccountAccountHolderType._(this.value);

factory PostSetupIntentsIntentConfirmRequestPaymentMethodDataUsBankAccountAccountHolderType.fromJson(String json) { return switch (json) {
  'company' => company,
  'individual' => individual,
  _ => PostSetupIntentsIntentConfirmRequestPaymentMethodDataUsBankAccountAccountHolderType._(json),
}; }

static const PostSetupIntentsIntentConfirmRequestPaymentMethodDataUsBankAccountAccountHolderType company = PostSetupIntentsIntentConfirmRequestPaymentMethodDataUsBankAccountAccountHolderType._('company');

static const PostSetupIntentsIntentConfirmRequestPaymentMethodDataUsBankAccountAccountHolderType individual = PostSetupIntentsIntentConfirmRequestPaymentMethodDataUsBankAccountAccountHolderType._('individual');

static const List<PostSetupIntentsIntentConfirmRequestPaymentMethodDataUsBankAccountAccountHolderType> values = [company, individual];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSetupIntentsIntentConfirmRequestPaymentMethodDataUsBankAccountAccountHolderType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSetupIntentsIntentConfirmRequestPaymentMethodDataUsBankAccountAccountHolderType($value)'; } 
 }
@immutable final class PostSetupIntentsIntentConfirmRequestPaymentMethodDataUsBankAccountAccountType {const PostSetupIntentsIntentConfirmRequestPaymentMethodDataUsBankAccountAccountType._(this.value);

factory PostSetupIntentsIntentConfirmRequestPaymentMethodDataUsBankAccountAccountType.fromJson(String json) { return switch (json) {
  'checking' => checking,
  'savings' => savings,
  _ => PostSetupIntentsIntentConfirmRequestPaymentMethodDataUsBankAccountAccountType._(json),
}; }

static const PostSetupIntentsIntentConfirmRequestPaymentMethodDataUsBankAccountAccountType checking = PostSetupIntentsIntentConfirmRequestPaymentMethodDataUsBankAccountAccountType._('checking');

static const PostSetupIntentsIntentConfirmRequestPaymentMethodDataUsBankAccountAccountType savings = PostSetupIntentsIntentConfirmRequestPaymentMethodDataUsBankAccountAccountType._('savings');

static const List<PostSetupIntentsIntentConfirmRequestPaymentMethodDataUsBankAccountAccountType> values = [checking, savings];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSetupIntentsIntentConfirmRequestPaymentMethodDataUsBankAccountAccountType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSetupIntentsIntentConfirmRequestPaymentMethodDataUsBankAccountAccountType($value)'; } 
 }
@immutable final class PostSetupIntentsIntentConfirmRequestPaymentMethodDataUsBankAccount {const PostSetupIntentsIntentConfirmRequestPaymentMethodDataUsBankAccount({this.accountHolderType, this.accountNumber, this.accountType, this.financialConnectionsAccount, this.routingNumber, });

factory PostSetupIntentsIntentConfirmRequestPaymentMethodDataUsBankAccount.fromJson(Map<String, dynamic> json) { return PostSetupIntentsIntentConfirmRequestPaymentMethodDataUsBankAccount(
  accountHolderType: json['account_holder_type'] != null ? PostSetupIntentsIntentConfirmRequestPaymentMethodDataUsBankAccountAccountHolderType.fromJson(json['account_holder_type'] as String) : null,
  accountNumber: json['account_number'] as String?,
  accountType: json['account_type'] != null ? PostSetupIntentsIntentConfirmRequestPaymentMethodDataUsBankAccountAccountType.fromJson(json['account_type'] as String) : null,
  financialConnectionsAccount: json['financial_connections_account'] as String?,
  routingNumber: json['routing_number'] as String?,
); }

final PostSetupIntentsIntentConfirmRequestPaymentMethodDataUsBankAccountAccountHolderType? accountHolderType;

final String? accountNumber;

final PostSetupIntentsIntentConfirmRequestPaymentMethodDataUsBankAccountAccountType? accountType;

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
PostSetupIntentsIntentConfirmRequestPaymentMethodDataUsBankAccount copyWith({PostSetupIntentsIntentConfirmRequestPaymentMethodDataUsBankAccountAccountHolderType Function()? accountHolderType, String Function()? accountNumber, PostSetupIntentsIntentConfirmRequestPaymentMethodDataUsBankAccountAccountType Function()? accountType, String Function()? financialConnectionsAccount, String Function()? routingNumber, }) { return PostSetupIntentsIntentConfirmRequestPaymentMethodDataUsBankAccount(
  accountHolderType: accountHolderType != null ? accountHolderType() : this.accountHolderType,
  accountNumber: accountNumber != null ? accountNumber() : this.accountNumber,
  accountType: accountType != null ? accountType() : this.accountType,
  financialConnectionsAccount: financialConnectionsAccount != null ? financialConnectionsAccount() : this.financialConnectionsAccount,
  routingNumber: routingNumber != null ? routingNumber() : this.routingNumber,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSetupIntentsIntentConfirmRequestPaymentMethodDataUsBankAccount &&
          accountHolderType == other.accountHolderType &&
          accountNumber == other.accountNumber &&
          accountType == other.accountType &&
          financialConnectionsAccount == other.financialConnectionsAccount &&
          routingNumber == other.routingNumber; } 
@override int get hashCode { return Object.hash(accountHolderType, accountNumber, accountType, financialConnectionsAccount, routingNumber); } 
@override String toString() { return 'PostSetupIntentsIntentConfirmRequestPaymentMethodDataUsBankAccount(accountHolderType: $accountHolderType, accountNumber: $accountNumber, accountType: $accountType, financialConnectionsAccount: $financialConnectionsAccount, routingNumber: $routingNumber)'; } 
 }
