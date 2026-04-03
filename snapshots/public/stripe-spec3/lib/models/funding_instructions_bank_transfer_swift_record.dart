// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'address.dart';/// SWIFT Records contain U.S. bank account details per the SWIFT format.
@immutable final class FundingInstructionsBankTransferSwiftRecord {const FundingInstructionsBankTransferSwiftRecord({required this.accountHolderAddress, required this.accountHolderName, required this.accountNumber, required this.accountType, required this.bankAddress, required this.bankName, required this.swiftCode, });

factory FundingInstructionsBankTransferSwiftRecord.fromJson(Map<String, dynamic> json) { return FundingInstructionsBankTransferSwiftRecord(
  accountHolderAddress: Address.fromJson(json['account_holder_address'] as Map<String, dynamic>),
  accountHolderName: json['account_holder_name'] as String,
  accountNumber: json['account_number'] as String,
  accountType: json['account_type'] as String,
  bankAddress: Address.fromJson(json['bank_address'] as Map<String, dynamic>),
  bankName: json['bank_name'] as String,
  swiftCode: json['swift_code'] as String,
); }

final Address accountHolderAddress;

/// The account holder name
final String accountHolderName;

/// The account number
final String accountNumber;

/// The account type
final String accountType;

final Address bankAddress;

/// The bank name
final String bankName;

/// The SWIFT code
final String swiftCode;

Map<String, dynamic> toJson() { return {
  'account_holder_address': accountHolderAddress.toJson(),
  'account_holder_name': accountHolderName,
  'account_number': accountNumber,
  'account_type': accountType,
  'bank_address': bankAddress.toJson(),
  'bank_name': bankName,
  'swift_code': swiftCode,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('account_holder_address') &&
      json.containsKey('account_holder_name') && json['account_holder_name'] is String &&
      json.containsKey('account_number') && json['account_number'] is String &&
      json.containsKey('account_type') && json['account_type'] is String &&
      json.containsKey('bank_address') &&
      json.containsKey('bank_name') && json['bank_name'] is String &&
      json.containsKey('swift_code') && json['swift_code'] is String; } 
FundingInstructionsBankTransferSwiftRecord copyWith({Address? accountHolderAddress, String? accountHolderName, String? accountNumber, String? accountType, Address? bankAddress, String? bankName, String? swiftCode, }) { return FundingInstructionsBankTransferSwiftRecord(
  accountHolderAddress: accountHolderAddress ?? this.accountHolderAddress,
  accountHolderName: accountHolderName ?? this.accountHolderName,
  accountNumber: accountNumber ?? this.accountNumber,
  accountType: accountType ?? this.accountType,
  bankAddress: bankAddress ?? this.bankAddress,
  bankName: bankName ?? this.bankName,
  swiftCode: swiftCode ?? this.swiftCode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FundingInstructionsBankTransferSwiftRecord &&
          accountHolderAddress == other.accountHolderAddress &&
          accountHolderName == other.accountHolderName &&
          accountNumber == other.accountNumber &&
          accountType == other.accountType &&
          bankAddress == other.bankAddress &&
          bankName == other.bankName &&
          swiftCode == other.swiftCode; } 
@override int get hashCode { return Object.hash(accountHolderAddress, accountHolderName, accountNumber, accountType, bankAddress, bankName, swiftCode); } 
@override String toString() { return 'FundingInstructionsBankTransferSwiftRecord(accountHolderAddress: $accountHolderAddress, accountHolderName: $accountHolderName, accountNumber: $accountNumber, accountType: $accountType, bankAddress: $bankAddress, bankName: $bankName, swiftCode: $swiftCode)'; } 
 }
