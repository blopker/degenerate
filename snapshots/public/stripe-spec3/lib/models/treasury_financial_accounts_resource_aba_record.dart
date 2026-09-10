// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// ABA Records contain U.S. bank account details per the ABA format.
@immutable final class TreasuryFinancialAccountsResourceAbaRecord {const TreasuryFinancialAccountsResourceAbaRecord({required this.accountHolderName, required this.accountNumberLast4, required this.bankName, required this.routingNumber, this.accountNumber = const Omittable.absent(), });

factory TreasuryFinancialAccountsResourceAbaRecord.fromJson(Map<String, dynamic> json) { return TreasuryFinancialAccountsResourceAbaRecord(
  accountHolderName: json['account_holder_name'] as String,
  accountNumber: json.containsKey('account_number') ? Omittable(json['account_number'] as String?) : const Omittable.absent(),
  accountNumberLast4: json['account_number_last4'] as String,
  bankName: json['bank_name'] as String,
  routingNumber: json['routing_number'] as String,
); }

/// The name of the person or business that owns the bank account.
final String accountHolderName;

/// The account number.
final Omittable<String?> accountNumber;

/// The last four characters of the account number.
final String accountNumberLast4;

/// Name of the bank.
final String bankName;

/// Routing number for the account.
final String routingNumber;

Map<String, dynamic> toJson() { return {
  'account_holder_name': accountHolderName,
  if (accountNumber.isPresent) 'account_number': accountNumber.value,
  'account_number_last4': accountNumberLast4,
  'bank_name': bankName,
  'routing_number': routingNumber,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('account_holder_name') && json['account_holder_name'] is String &&
      json.containsKey('account_number_last4') && json['account_number_last4'] is String &&
      json.containsKey('bank_name') && json['bank_name'] is String &&
      json.containsKey('routing_number') && json['routing_number'] is String; } 
TreasuryFinancialAccountsResourceAbaRecord copyWith({String? accountHolderName, Omittable<String?>? accountNumber, String? accountNumberLast4, String? bankName, String? routingNumber, }) { return TreasuryFinancialAccountsResourceAbaRecord(
  accountHolderName: accountHolderName ?? this.accountHolderName,
  accountNumber: accountNumber ?? this.accountNumber,
  accountNumberLast4: accountNumberLast4 ?? this.accountNumberLast4,
  bankName: bankName ?? this.bankName,
  routingNumber: routingNumber ?? this.routingNumber,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TreasuryFinancialAccountsResourceAbaRecord &&
          accountHolderName == other.accountHolderName &&
          accountNumber == other.accountNumber &&
          accountNumberLast4 == other.accountNumberLast4 &&
          bankName == other.bankName &&
          routingNumber == other.routingNumber; } 
@override int get hashCode { return Object.hash(accountHolderName, accountNumber, accountNumberLast4, bankName, routingNumber); } 
@override String toString() { return 'TreasuryFinancialAccountsResourceAbaRecord(accountHolderName: $accountHolderName, accountNumber: $accountNumber, accountNumberLast4: $accountNumberLast4, bankName: $bankName, routingNumber: $routingNumber)'; } 
 }
