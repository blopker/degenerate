// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PaymentMethodDetailsNzBankAccount {const PaymentMethodDetailsNzBankAccount({required this.bankCode, required this.bankName, required this.branchCode, required this.last4, this.accountHolderName = const Omittable.absent(), this.expectedDebitDate, this.suffix = const Omittable.absent(), });

factory PaymentMethodDetailsNzBankAccount.fromJson(Map<String, dynamic> json) { return PaymentMethodDetailsNzBankAccount(
  accountHolderName: json.containsKey('account_holder_name') ? Omittable(json['account_holder_name'] as String?) : const Omittable.absent(),
  bankCode: json['bank_code'] as String,
  bankName: json['bank_name'] as String,
  branchCode: json['branch_code'] as String,
  expectedDebitDate: json['expected_debit_date'] as String?,
  last4: json['last4'] as String,
  suffix: json.containsKey('suffix') ? Omittable(json['suffix'] as String?) : const Omittable.absent(),
); }

/// The name on the bank account. Only present if the account holder name is different from the name of the authorized signatory collected in the PaymentMethod’s billing details.
final Omittable<String?> accountHolderName;

/// The numeric code for the bank account's bank.
final String bankCode;

/// The name of the bank.
final String bankName;

/// The numeric code for the bank account's bank branch.
final String branchCode;

/// Estimated date to debit the customer's bank account. A date string in YYYY-MM-DD format.
final String? expectedDebitDate;

/// Last four digits of the bank account number.
final String last4;

/// The suffix of the bank account number.
final Omittable<String?> suffix;

Map<String, dynamic> toJson() { return {
  if (accountHolderName.isPresent) 'account_holder_name': accountHolderName.value,
  'bank_code': bankCode,
  'bank_name': bankName,
  'branch_code': branchCode,
  'expected_debit_date': ?expectedDebitDate,
  'last4': last4,
  if (suffix.isPresent) 'suffix': suffix.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('bank_code') && json['bank_code'] is String &&
      json.containsKey('bank_name') && json['bank_name'] is String &&
      json.containsKey('branch_code') && json['branch_code'] is String &&
      json.containsKey('last4') && json['last4'] is String; } 
PaymentMethodDetailsNzBankAccount copyWith({Omittable<String?>? accountHolderName, String? bankCode, String? bankName, String? branchCode, String? Function()? expectedDebitDate, String? last4, Omittable<String?>? suffix, }) { return PaymentMethodDetailsNzBankAccount(
  accountHolderName: accountHolderName ?? this.accountHolderName,
  bankCode: bankCode ?? this.bankCode,
  bankName: bankName ?? this.bankName,
  branchCode: branchCode ?? this.branchCode,
  expectedDebitDate: expectedDebitDate != null ? expectedDebitDate() : this.expectedDebitDate,
  last4: last4 ?? this.last4,
  suffix: suffix ?? this.suffix,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodDetailsNzBankAccount &&
          accountHolderName == other.accountHolderName &&
          bankCode == other.bankCode &&
          bankName == other.bankName &&
          branchCode == other.branchCode &&
          expectedDebitDate == other.expectedDebitDate &&
          last4 == other.last4 &&
          suffix == other.suffix; } 
@override int get hashCode { return Object.hash(accountHolderName, bankCode, bankName, branchCode, expectedDebitDate, last4, suffix); } 
@override String toString() { return 'PaymentMethodDetailsNzBankAccount(accountHolderName: $accountHolderName, bankCode: $bankCode, bankName: $bankName, branchCode: $branchCode, expectedDebitDate: $expectedDebitDate, last4: $last4, suffix: $suffix)'; } 
 }
