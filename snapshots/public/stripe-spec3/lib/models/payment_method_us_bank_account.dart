// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_us_bank_account_status_details.dart';import 'us_bank_account_networks.dart';/// Account holder type: individual or company.
@immutable final class PaymentMethodUsBankAccountAccountHolderType {const PaymentMethodUsBankAccountAccountHolderType._(this.value);

factory PaymentMethodUsBankAccountAccountHolderType.fromJson(String json) { return switch (json) {
  'company' => company,
  'individual' => individual,
  _ => PaymentMethodUsBankAccountAccountHolderType._(json),
}; }

static const PaymentMethodUsBankAccountAccountHolderType company = PaymentMethodUsBankAccountAccountHolderType._('company');

static const PaymentMethodUsBankAccountAccountHolderType individual = PaymentMethodUsBankAccountAccountHolderType._('individual');

static const List<PaymentMethodUsBankAccountAccountHolderType> values = [company, individual];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodUsBankAccountAccountHolderType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodUsBankAccountAccountHolderType($value)'; } 
 }
/// Account type: checkings or savings. Defaults to checking if omitted.
@immutable final class PaymentMethodUsBankAccountAccountType {const PaymentMethodUsBankAccountAccountType._(this.value);

factory PaymentMethodUsBankAccountAccountType.fromJson(String json) { return switch (json) {
  'checking' => checking,
  'savings' => savings,
  _ => PaymentMethodUsBankAccountAccountType._(json),
}; }

static const PaymentMethodUsBankAccountAccountType checking = PaymentMethodUsBankAccountAccountType._('checking');

static const PaymentMethodUsBankAccountAccountType savings = PaymentMethodUsBankAccountAccountType._('savings');

static const List<PaymentMethodUsBankAccountAccountType> values = [checking, savings];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodUsBankAccountAccountType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodUsBankAccountAccountType($value)'; } 
 }
/// 
@immutable final class PaymentMethodUsBankAccount {const PaymentMethodUsBankAccount({this.accountHolderType = const Omittable.absent(), this.accountType = const Omittable.absent(), this.bankName = const Omittable.absent(), this.financialConnectionsAccount = const Omittable.absent(), this.fingerprint = const Omittable.absent(), this.last4 = const Omittable.absent(), this.networks = const Omittable.absent(), this.routingNumber = const Omittable.absent(), this.statusDetails = const Omittable.absent(), });

factory PaymentMethodUsBankAccount.fromJson(Map<String, dynamic> json) { return PaymentMethodUsBankAccount(
  accountHolderType: json.containsKey('account_holder_type') ? Omittable(json['account_holder_type'] != null ? PaymentMethodUsBankAccountAccountHolderType.fromJson(json['account_holder_type'] as String) : null) : const Omittable.absent(),
  accountType: json.containsKey('account_type') ? Omittable(json['account_type'] != null ? PaymentMethodUsBankAccountAccountType.fromJson(json['account_type'] as String) : null) : const Omittable.absent(),
  bankName: json.containsKey('bank_name') ? Omittable(json['bank_name'] as String?) : const Omittable.absent(),
  financialConnectionsAccount: json.containsKey('financial_connections_account') ? Omittable(json['financial_connections_account'] as String?) : const Omittable.absent(),
  fingerprint: json.containsKey('fingerprint') ? Omittable(json['fingerprint'] as String?) : const Omittable.absent(),
  last4: json.containsKey('last4') ? Omittable(json['last4'] as String?) : const Omittable.absent(),
  networks: json.containsKey('networks') ? Omittable(json['networks'] != null ? UsBankAccountNetworks.fromJson(json['networks'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  routingNumber: json.containsKey('routing_number') ? Omittable(json['routing_number'] as String?) : const Omittable.absent(),
  statusDetails: json.containsKey('status_details') ? Omittable(json['status_details'] != null ? PaymentMethodUsBankAccountStatusDetails.fromJson(json['status_details'] as Map<String, dynamic>) : null) : const Omittable.absent(),
); }

/// Account holder type: individual or company.
final Omittable<PaymentMethodUsBankAccountAccountHolderType?> accountHolderType;

/// Account type: checkings or savings. Defaults to checking if omitted.
final Omittable<PaymentMethodUsBankAccountAccountType?> accountType;

/// The name of the bank.
final Omittable<String?> bankName;

/// The ID of the Financial Connections Account used to create the payment method.
final Omittable<String?> financialConnectionsAccount;

/// Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
final Omittable<String?> fingerprint;

/// Last four digits of the bank account number.
final Omittable<String?> last4;

/// Contains information about US bank account networks that can be used.
final Omittable<UsBankAccountNetworks?> networks;

/// Routing number of the bank account.
final Omittable<String?> routingNumber;

/// Contains information about the future reusability of this PaymentMethod.
final Omittable<PaymentMethodUsBankAccountStatusDetails?> statusDetails;

Map<String, dynamic> toJson() { return {
  if (accountHolderType.isPresent) 'account_holder_type': accountHolderType.value?.toJson(),
  if (accountType.isPresent) 'account_type': accountType.value?.toJson(),
  if (bankName.isPresent) 'bank_name': bankName.value,
  if (financialConnectionsAccount.isPresent) 'financial_connections_account': financialConnectionsAccount.value,
  if (fingerprint.isPresent) 'fingerprint': fingerprint.value,
  if (last4.isPresent) 'last4': last4.value,
  if (networks.isPresent) 'networks': networks.value?.toJson(),
  if (routingNumber.isPresent) 'routing_number': routingNumber.value,
  if (statusDetails.isPresent) 'status_details': statusDetails.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account_holder_type', 'account_type', 'bank_name', 'financial_connections_account', 'fingerprint', 'last4', 'networks', 'routing_number', 'status_details'}.contains(key)); } 
PaymentMethodUsBankAccount copyWith({Omittable<PaymentMethodUsBankAccountAccountHolderType?>? accountHolderType, Omittable<PaymentMethodUsBankAccountAccountType?>? accountType, Omittable<String?>? bankName, Omittable<String?>? financialConnectionsAccount, Omittable<String?>? fingerprint, Omittable<String?>? last4, Omittable<UsBankAccountNetworks?>? networks, Omittable<String?>? routingNumber, Omittable<PaymentMethodUsBankAccountStatusDetails?>? statusDetails, }) { return PaymentMethodUsBankAccount(
  accountHolderType: accountHolderType ?? this.accountHolderType,
  accountType: accountType ?? this.accountType,
  bankName: bankName ?? this.bankName,
  financialConnectionsAccount: financialConnectionsAccount ?? this.financialConnectionsAccount,
  fingerprint: fingerprint ?? this.fingerprint,
  last4: last4 ?? this.last4,
  networks: networks ?? this.networks,
  routingNumber: routingNumber ?? this.routingNumber,
  statusDetails: statusDetails ?? this.statusDetails,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodUsBankAccount &&
          accountHolderType == other.accountHolderType &&
          accountType == other.accountType &&
          bankName == other.bankName &&
          financialConnectionsAccount == other.financialConnectionsAccount &&
          fingerprint == other.fingerprint &&
          last4 == other.last4 &&
          networks == other.networks &&
          routingNumber == other.routingNumber &&
          statusDetails == other.statusDetails; } 
@override int get hashCode { return Object.hash(accountHolderType, accountType, bankName, financialConnectionsAccount, fingerprint, last4, networks, routingNumber, statusDetails); } 
@override String toString() { return 'PaymentMethodUsBankAccount(accountHolderType: $accountHolderType, accountType: $accountType, bankName: $bankName, financialConnectionsAccount: $financialConnectionsAccount, fingerprint: $fingerprint, last4: $last4, networks: $networks, routingNumber: $routingNumber, statusDetails: $statusDetails)'; } 
 }
