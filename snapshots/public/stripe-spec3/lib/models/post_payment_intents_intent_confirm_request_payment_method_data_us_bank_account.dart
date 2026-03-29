// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostPaymentIntentsIntentConfirmRequestPaymentMethodDataUsBankAccountAccountHolderType {const PostPaymentIntentsIntentConfirmRequestPaymentMethodDataUsBankAccountAccountHolderType._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodDataUsBankAccountAccountHolderType.fromJson(String json) { return switch (json) {
  'company' => company,
  'individual' => individual,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodDataUsBankAccountAccountHolderType._(json),
}; }

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodDataUsBankAccountAccountHolderType company = PostPaymentIntentsIntentConfirmRequestPaymentMethodDataUsBankAccountAccountHolderType._('company');

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodDataUsBankAccountAccountHolderType individual = PostPaymentIntentsIntentConfirmRequestPaymentMethodDataUsBankAccountAccountHolderType._('individual');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodDataUsBankAccountAccountHolderType> values = [company, individual];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodDataUsBankAccountAccountHolderType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodDataUsBankAccountAccountHolderType($value)'; } 
 }
final class PostPaymentIntentsIntentConfirmRequestPaymentMethodDataUsBankAccountAccountType {const PostPaymentIntentsIntentConfirmRequestPaymentMethodDataUsBankAccountAccountType._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodDataUsBankAccountAccountType.fromJson(String json) { return switch (json) {
  'checking' => checking,
  'savings' => savings,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodDataUsBankAccountAccountType._(json),
}; }

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodDataUsBankAccountAccountType checking = PostPaymentIntentsIntentConfirmRequestPaymentMethodDataUsBankAccountAccountType._('checking');

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodDataUsBankAccountAccountType savings = PostPaymentIntentsIntentConfirmRequestPaymentMethodDataUsBankAccountAccountType._('savings');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodDataUsBankAccountAccountType> values = [checking, savings];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodDataUsBankAccountAccountType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodDataUsBankAccountAccountType($value)'; } 
 }
final class PostPaymentIntentsIntentConfirmRequestPaymentMethodDataUsBankAccount {const PostPaymentIntentsIntentConfirmRequestPaymentMethodDataUsBankAccount({this.accountHolderType, this.accountNumber, this.accountType, this.financialConnectionsAccount, this.routingNumber, });

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodDataUsBankAccount.fromJson(Map<String, dynamic> json) { return PostPaymentIntentsIntentConfirmRequestPaymentMethodDataUsBankAccount(
  accountHolderType: json['account_holder_type'] != null ? PostPaymentIntentsIntentConfirmRequestPaymentMethodDataUsBankAccountAccountHolderType.fromJson(json['account_holder_type'] as String) : null,
  accountNumber: json['account_number'] as String?,
  accountType: json['account_type'] != null ? PostPaymentIntentsIntentConfirmRequestPaymentMethodDataUsBankAccountAccountType.fromJson(json['account_type'] as String) : null,
  financialConnectionsAccount: json['financial_connections_account'] as String?,
  routingNumber: json['routing_number'] as String?,
); }

final PostPaymentIntentsIntentConfirmRequestPaymentMethodDataUsBankAccountAccountHolderType? accountHolderType;

final String? accountNumber;

final PostPaymentIntentsIntentConfirmRequestPaymentMethodDataUsBankAccountAccountType? accountType;

final String? financialConnectionsAccount;

final String? routingNumber;

Map<String, dynamic> toJson() { return {
  if (accountHolderType != null) 'account_holder_type': accountHolderType?.toJson(),
  'account_number': ?accountNumber,
  if (accountType != null) 'account_type': accountType?.toJson(),
  'financial_connections_account': ?financialConnectionsAccount,
  'routing_number': ?routingNumber,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostPaymentIntentsIntentConfirmRequestPaymentMethodDataUsBankAccount copyWith({PostPaymentIntentsIntentConfirmRequestPaymentMethodDataUsBankAccountAccountHolderType Function()? accountHolderType, String Function()? accountNumber, PostPaymentIntentsIntentConfirmRequestPaymentMethodDataUsBankAccountAccountType Function()? accountType, String Function()? financialConnectionsAccount, String Function()? routingNumber, }) { return PostPaymentIntentsIntentConfirmRequestPaymentMethodDataUsBankAccount(
  accountHolderType: accountHolderType != null ? accountHolderType() : this.accountHolderType,
  accountNumber: accountNumber != null ? accountNumber() : this.accountNumber,
  accountType: accountType != null ? accountType() : this.accountType,
  financialConnectionsAccount: financialConnectionsAccount != null ? financialConnectionsAccount() : this.financialConnectionsAccount,
  routingNumber: routingNumber != null ? routingNumber() : this.routingNumber,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestPaymentMethodDataUsBankAccount &&
          accountHolderType == other.accountHolderType &&
          accountNumber == other.accountNumber &&
          accountType == other.accountType &&
          financialConnectionsAccount == other.financialConnectionsAccount &&
          routingNumber == other.routingNumber; } 
@override int get hashCode { return Object.hash(accountHolderType, accountNumber, accountType, financialConnectionsAccount, routingNumber); } 
@override String toString() { return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodDataUsBankAccount(accountHolderType: $accountHolderType, accountNumber: $accountNumber, accountType: $accountType, financialConnectionsAccount: $financialConnectionsAccount, routingNumber: $routingNumber)'; } 
 }
