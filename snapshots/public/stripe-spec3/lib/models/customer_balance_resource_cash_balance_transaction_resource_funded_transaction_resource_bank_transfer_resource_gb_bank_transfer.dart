// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferResourceGbBankTransfer {const CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferResourceGbBankTransfer({this.accountNumberLast4 = const Omittable.absent(), this.senderName = const Omittable.absent(), this.sortCode = const Omittable.absent(), });

factory CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferResourceGbBankTransfer.fromJson(Map<String, dynamic> json) { return CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferResourceGbBankTransfer(
  accountNumberLast4: json.containsKey('account_number_last4') ? Omittable(json['account_number_last4'] as String?) : const Omittable.absent(),
  senderName: json.containsKey('sender_name') ? Omittable(json['sender_name'] as String?) : const Omittable.absent(),
  sortCode: json.containsKey('sort_code') ? Omittable(json['sort_code'] as String?) : const Omittable.absent(),
); }

/// The last 4 digits of the account number of the sender of the funding.
final Omittable<String?> accountNumberLast4;

/// The full name of the sender, as supplied by the sending bank.
final Omittable<String?> senderName;

/// The sort code of the bank of the sender of the funding
final Omittable<String?> sortCode;

Map<String, dynamic> toJson() { return {
  if (accountNumberLast4.isPresent) 'account_number_last4': accountNumberLast4.value,
  if (senderName.isPresent) 'sender_name': senderName.value,
  if (sortCode.isPresent) 'sort_code': sortCode.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account_number_last4', 'sender_name', 'sort_code'}.contains(key)); } 
CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferResourceGbBankTransfer copyWith({Omittable<String?>? accountNumberLast4, Omittable<String?>? senderName, Omittable<String?>? sortCode, }) { return CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferResourceGbBankTransfer(
  accountNumberLast4: accountNumberLast4 ?? this.accountNumberLast4,
  senderName: senderName ?? this.senderName,
  sortCode: sortCode ?? this.sortCode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferResourceGbBankTransfer &&
          accountNumberLast4 == other.accountNumberLast4 &&
          senderName == other.senderName &&
          sortCode == other.sortCode; } 
@override int get hashCode { return Object.hash(accountNumberLast4, senderName, sortCode); } 
@override String toString() { return 'CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferResourceGbBankTransfer(accountNumberLast4: $accountNumberLast4, senderName: $senderName, sortCode: $sortCode)'; } 
 }
