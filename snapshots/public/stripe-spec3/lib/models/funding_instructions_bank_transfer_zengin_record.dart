// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'address.dart';/// Zengin Records contain Japan bank account details per the Zengin format.
@immutable final class FundingInstructionsBankTransferZenginRecord {const FundingInstructionsBankTransferZenginRecord({required this.accountHolderAddress, required this.bankAddress, this.accountHolderName, this.accountNumber, this.accountType, this.bankCode, this.bankName, this.branchCode, this.branchName, });

factory FundingInstructionsBankTransferZenginRecord.fromJson(Map<String, dynamic> json) { return FundingInstructionsBankTransferZenginRecord(
  accountHolderAddress: Address.fromJson(json['account_holder_address'] as Map<String, dynamic>),
  accountHolderName: json['account_holder_name'] as String?,
  accountNumber: json['account_number'] as String?,
  accountType: json['account_type'] as String?,
  bankAddress: Address.fromJson(json['bank_address'] as Map<String, dynamic>),
  bankCode: json['bank_code'] as String?,
  bankName: json['bank_name'] as String?,
  branchCode: json['branch_code'] as String?,
  branchName: json['branch_name'] as String?,
); }

final Address accountHolderAddress;

/// The account holder name
final String? accountHolderName;

/// The account number
final String? accountNumber;

/// The bank account type. In Japan, this can only be `futsu` or `toza`.
final String? accountType;

final Address bankAddress;

/// The bank code of the account
final String? bankCode;

/// The bank name of the account
final String? bankName;

/// The branch code of the account
final String? branchCode;

/// The branch name of the account
final String? branchName;

Map<String, dynamic> toJson() { return {
  'account_holder_address': accountHolderAddress.toJson(),
  'account_holder_name': ?accountHolderName,
  'account_number': ?accountNumber,
  'account_type': ?accountType,
  'bank_address': bankAddress.toJson(),
  'bank_code': ?bankCode,
  'bank_name': ?bankName,
  'branch_code': ?branchCode,
  'branch_name': ?branchName,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('account_holder_address') &&
      json.containsKey('bank_address'); } 
FundingInstructionsBankTransferZenginRecord copyWith({Address? accountHolderAddress, String? Function()? accountHolderName, String? Function()? accountNumber, String? Function()? accountType, Address? bankAddress, String? Function()? bankCode, String? Function()? bankName, String? Function()? branchCode, String? Function()? branchName, }) { return FundingInstructionsBankTransferZenginRecord(
  accountHolderAddress: accountHolderAddress ?? this.accountHolderAddress,
  accountHolderName: accountHolderName != null ? accountHolderName() : this.accountHolderName,
  accountNumber: accountNumber != null ? accountNumber() : this.accountNumber,
  accountType: accountType != null ? accountType() : this.accountType,
  bankAddress: bankAddress ?? this.bankAddress,
  bankCode: bankCode != null ? bankCode() : this.bankCode,
  bankName: bankName != null ? bankName() : this.bankName,
  branchCode: branchCode != null ? branchCode() : this.branchCode,
  branchName: branchName != null ? branchName() : this.branchName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FundingInstructionsBankTransferZenginRecord &&
          accountHolderAddress == other.accountHolderAddress &&
          accountHolderName == other.accountHolderName &&
          accountNumber == other.accountNumber &&
          accountType == other.accountType &&
          bankAddress == other.bankAddress &&
          bankCode == other.bankCode &&
          bankName == other.bankName &&
          branchCode == other.branchCode &&
          branchName == other.branchName; } 
@override int get hashCode { return Object.hash(accountHolderAddress, accountHolderName, accountNumber, accountType, bankAddress, bankCode, bankName, branchCode, branchName); } 
@override String toString() { return 'FundingInstructionsBankTransferZenginRecord(accountHolderAddress: $accountHolderAddress, accountHolderName: $accountHolderName, accountNumber: $accountNumber, accountType: $accountType, bankAddress: $bankAddress, bankCode: $bankCode, bankName: $bankName, branchCode: $branchCode, branchName: $branchName)'; } 
 }
