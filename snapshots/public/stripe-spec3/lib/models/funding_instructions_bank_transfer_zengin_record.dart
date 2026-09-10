// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'address.dart';/// Zengin Records contain Japan bank account details per the Zengin format.
@immutable final class FundingInstructionsBankTransferZenginRecord {const FundingInstructionsBankTransferZenginRecord({required this.accountHolderAddress, required this.bankAddress, this.accountHolderName = const Omittable.absent(), this.accountNumber = const Omittable.absent(), this.accountType = const Omittable.absent(), this.bankCode = const Omittable.absent(), this.bankName = const Omittable.absent(), this.branchCode = const Omittable.absent(), this.branchName = const Omittable.absent(), });

factory FundingInstructionsBankTransferZenginRecord.fromJson(Map<String, dynamic> json) { return FundingInstructionsBankTransferZenginRecord(
  accountHolderAddress: Address.fromJson(json['account_holder_address'] as Map<String, dynamic>),
  accountHolderName: json.containsKey('account_holder_name') ? Omittable(json['account_holder_name'] as String?) : const Omittable.absent(),
  accountNumber: json.containsKey('account_number') ? Omittable(json['account_number'] as String?) : const Omittable.absent(),
  accountType: json.containsKey('account_type') ? Omittable(json['account_type'] as String?) : const Omittable.absent(),
  bankAddress: Address.fromJson(json['bank_address'] as Map<String, dynamic>),
  bankCode: json.containsKey('bank_code') ? Omittable(json['bank_code'] as String?) : const Omittable.absent(),
  bankName: json.containsKey('bank_name') ? Omittable(json['bank_name'] as String?) : const Omittable.absent(),
  branchCode: json.containsKey('branch_code') ? Omittable(json['branch_code'] as String?) : const Omittable.absent(),
  branchName: json.containsKey('branch_name') ? Omittable(json['branch_name'] as String?) : const Omittable.absent(),
); }

final Address accountHolderAddress;

/// The account holder name
final Omittable<String?> accountHolderName;

/// The account number
final Omittable<String?> accountNumber;

/// The bank account type. In Japan, this can only be `futsu` or `toza`.
final Omittable<String?> accountType;

final Address bankAddress;

/// The bank code of the account
final Omittable<String?> bankCode;

/// The bank name of the account
final Omittable<String?> bankName;

/// The branch code of the account
final Omittable<String?> branchCode;

/// The branch name of the account
final Omittable<String?> branchName;

Map<String, dynamic> toJson() { return {
  'account_holder_address': accountHolderAddress.toJson(),
  if (accountHolderName.isPresent) 'account_holder_name': accountHolderName.value,
  if (accountNumber.isPresent) 'account_number': accountNumber.value,
  if (accountType.isPresent) 'account_type': accountType.value,
  'bank_address': bankAddress.toJson(),
  if (bankCode.isPresent) 'bank_code': bankCode.value,
  if (bankName.isPresent) 'bank_name': bankName.value,
  if (branchCode.isPresent) 'branch_code': branchCode.value,
  if (branchName.isPresent) 'branch_name': branchName.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('account_holder_address') &&
      json.containsKey('bank_address'); } 
FundingInstructionsBankTransferZenginRecord copyWith({Address? accountHolderAddress, Omittable<String?>? accountHolderName, Omittable<String?>? accountNumber, Omittable<String?>? accountType, Address? bankAddress, Omittable<String?>? bankCode, Omittable<String?>? bankName, Omittable<String?>? branchCode, Omittable<String?>? branchName, }) { return FundingInstructionsBankTransferZenginRecord(
  accountHolderAddress: accountHolderAddress ?? this.accountHolderAddress,
  accountHolderName: accountHolderName ?? this.accountHolderName,
  accountNumber: accountNumber ?? this.accountNumber,
  accountType: accountType ?? this.accountType,
  bankAddress: bankAddress ?? this.bankAddress,
  bankCode: bankCode ?? this.bankCode,
  bankName: bankName ?? this.bankName,
  branchCode: branchCode ?? this.branchCode,
  branchName: branchName ?? this.branchName,
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
