// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostPaymentMethodsRequestUsBankAccountAccountHolderType {const PostPaymentMethodsRequestUsBankAccountAccountHolderType._(this.value);

factory PostPaymentMethodsRequestUsBankAccountAccountHolderType.fromJson(String json) { return switch (json) {
  'company' => company,
  'individual' => individual,
  _ => PostPaymentMethodsRequestUsBankAccountAccountHolderType._(json),
}; }

static const PostPaymentMethodsRequestUsBankAccountAccountHolderType company = PostPaymentMethodsRequestUsBankAccountAccountHolderType._('company');

static const PostPaymentMethodsRequestUsBankAccountAccountHolderType individual = PostPaymentMethodsRequestUsBankAccountAccountHolderType._('individual');

static const List<PostPaymentMethodsRequestUsBankAccountAccountHolderType> values = [company, individual];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentMethodsRequestUsBankAccountAccountHolderType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentMethodsRequestUsBankAccountAccountHolderType($value)'; } 
 }
final class PostPaymentMethodsRequestUsBankAccountAccountType {const PostPaymentMethodsRequestUsBankAccountAccountType._(this.value);

factory PostPaymentMethodsRequestUsBankAccountAccountType.fromJson(String json) { return switch (json) {
  'checking' => checking,
  'savings' => savings,
  _ => PostPaymentMethodsRequestUsBankAccountAccountType._(json),
}; }

static const PostPaymentMethodsRequestUsBankAccountAccountType checking = PostPaymentMethodsRequestUsBankAccountAccountType._('checking');

static const PostPaymentMethodsRequestUsBankAccountAccountType savings = PostPaymentMethodsRequestUsBankAccountAccountType._('savings');

static const List<PostPaymentMethodsRequestUsBankAccountAccountType> values = [checking, savings];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentMethodsRequestUsBankAccountAccountType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentMethodsRequestUsBankAccountAccountType($value)'; } 
 }
/// If this is an `us_bank_account` PaymentMethod, this hash contains details about the US bank account payment method.
final class PostPaymentMethodsRequestUsBankAccount {const PostPaymentMethodsRequestUsBankAccount({this.accountHolderType, this.accountNumber, this.accountType, this.financialConnectionsAccount, this.routingNumber, });

factory PostPaymentMethodsRequestUsBankAccount.fromJson(Map<String, dynamic> json) { return PostPaymentMethodsRequestUsBankAccount(
  accountHolderType: json['account_holder_type'] != null ? PostPaymentMethodsRequestUsBankAccountAccountHolderType.fromJson(json['account_holder_type'] as String) : null,
  accountNumber: json['account_number'] as String?,
  accountType: json['account_type'] != null ? PostPaymentMethodsRequestUsBankAccountAccountType.fromJson(json['account_type'] as String) : null,
  financialConnectionsAccount: json['financial_connections_account'] as String?,
  routingNumber: json['routing_number'] as String?,
); }

final PostPaymentMethodsRequestUsBankAccountAccountHolderType? accountHolderType;

final String? accountNumber;

final PostPaymentMethodsRequestUsBankAccountAccountType? accountType;

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
PostPaymentMethodsRequestUsBankAccount copyWith({PostPaymentMethodsRequestUsBankAccountAccountHolderType Function()? accountHolderType, String Function()? accountNumber, PostPaymentMethodsRequestUsBankAccountAccountType Function()? accountType, String Function()? financialConnectionsAccount, String Function()? routingNumber, }) { return PostPaymentMethodsRequestUsBankAccount(
  accountHolderType: accountHolderType != null ? accountHolderType() : this.accountHolderType,
  accountNumber: accountNumber != null ? accountNumber() : this.accountNumber,
  accountType: accountType != null ? accountType() : this.accountType,
  financialConnectionsAccount: financialConnectionsAccount != null ? financialConnectionsAccount() : this.financialConnectionsAccount,
  routingNumber: routingNumber != null ? routingNumber() : this.routingNumber,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodsRequestUsBankAccount &&
          accountHolderType == other.accountHolderType &&
          accountNumber == other.accountNumber &&
          accountType == other.accountType &&
          financialConnectionsAccount == other.financialConnectionsAccount &&
          routingNumber == other.routingNumber; } 
@override int get hashCode { return Object.hash(accountHolderType, accountNumber, accountType, financialConnectionsAccount, routingNumber); } 
@override String toString() { return 'PostPaymentMethodsRequestUsBankAccount(accountHolderType: $accountHolderType, accountNumber: $accountNumber, accountType: $accountType, financialConnectionsAccount: $financialConnectionsAccount, routingNumber: $routingNumber)'; } 
 }
