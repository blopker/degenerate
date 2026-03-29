// GENERATED CODE - DO NOT MODIFY BY HAND

import 'address.dart';/// SPEI Records contain Mexico bank account details per the SPEI format.
final class FundingInstructionsBankTransferSpeiRecord {const FundingInstructionsBankTransferSpeiRecord({required this.accountHolderAddress, required this.accountHolderName, required this.bankAddress, required this.bankCode, required this.bankName, required this.clabe, });

factory FundingInstructionsBankTransferSpeiRecord.fromJson(Map<String, dynamic> json) { return FundingInstructionsBankTransferSpeiRecord(
  accountHolderAddress: Address.fromJson(json['account_holder_address'] as Map<String, dynamic>),
  accountHolderName: json['account_holder_name'] as String,
  bankAddress: Address.fromJson(json['bank_address'] as Map<String, dynamic>),
  bankCode: json['bank_code'] as String,
  bankName: json['bank_name'] as String,
  clabe: json['clabe'] as String,
); }

final Address accountHolderAddress;

/// The account holder name
final String accountHolderName;

final Address bankAddress;

/// The three-digit bank code
final String bankCode;

/// The short banking institution name
final String bankName;

/// The CLABE number
final String clabe;

Map<String, dynamic> toJson() { return {
  'account_holder_address': accountHolderAddress.toJson(),
  'account_holder_name': accountHolderName,
  'bank_address': bankAddress.toJson(),
  'bank_code': bankCode,
  'bank_name': bankName,
  'clabe': clabe,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('account_holder_address') &&
      json.containsKey('account_holder_name') && json['account_holder_name'] is String &&
      json.containsKey('bank_address') &&
      json.containsKey('bank_code') && json['bank_code'] is String &&
      json.containsKey('bank_name') && json['bank_name'] is String &&
      json.containsKey('clabe') && json['clabe'] is String; } 
FundingInstructionsBankTransferSpeiRecord copyWith({Address? accountHolderAddress, String? accountHolderName, Address? bankAddress, String? bankCode, String? bankName, String? clabe, }) { return FundingInstructionsBankTransferSpeiRecord(
  accountHolderAddress: accountHolderAddress ?? this.accountHolderAddress,
  accountHolderName: accountHolderName ?? this.accountHolderName,
  bankAddress: bankAddress ?? this.bankAddress,
  bankCode: bankCode ?? this.bankCode,
  bankName: bankName ?? this.bankName,
  clabe: clabe ?? this.clabe,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FundingInstructionsBankTransferSpeiRecord &&
          accountHolderAddress == other.accountHolderAddress &&
          accountHolderName == other.accountHolderName &&
          bankAddress == other.bankAddress &&
          bankCode == other.bankCode &&
          bankName == other.bankName &&
          clabe == other.clabe; } 
@override int get hashCode { return Object.hash(accountHolderAddress, accountHolderName, bankAddress, bankCode, bankName, clabe); } 
@override String toString() { return 'FundingInstructionsBankTransferSpeiRecord(accountHolderAddress: $accountHolderAddress, accountHolderName: $accountHolderName, bankAddress: $bankAddress, bankCode: $bankCode, bankName: $bankName, clabe: $clabe)'; } 
 }
