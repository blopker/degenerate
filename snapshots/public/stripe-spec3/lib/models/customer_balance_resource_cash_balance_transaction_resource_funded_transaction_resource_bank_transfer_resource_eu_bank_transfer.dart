// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferResourceEuBankTransfer {const CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferResourceEuBankTransfer({this.bic = const Omittable.absent(), this.ibanLast4 = const Omittable.absent(), this.senderName = const Omittable.absent(), });

factory CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferResourceEuBankTransfer.fromJson(Map<String, dynamic> json) { return CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferResourceEuBankTransfer(
  bic: json.containsKey('bic') ? Omittable(json['bic'] as String?) : const Omittable.absent(),
  ibanLast4: json.containsKey('iban_last4') ? Omittable(json['iban_last4'] as String?) : const Omittable.absent(),
  senderName: json.containsKey('sender_name') ? Omittable(json['sender_name'] as String?) : const Omittable.absent(),
); }

/// The BIC of the bank of the sender of the funding.
final Omittable<String?> bic;

/// The last 4 digits of the IBAN of the sender of the funding.
final Omittable<String?> ibanLast4;

/// The full name of the sender, as supplied by the sending bank.
final Omittable<String?> senderName;

Map<String, dynamic> toJson() { return {
  if (bic.isPresent) 'bic': bic.value,
  if (ibanLast4.isPresent) 'iban_last4': ibanLast4.value,
  if (senderName.isPresent) 'sender_name': senderName.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'bic', 'iban_last4', 'sender_name'}.contains(key)); } 
CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferResourceEuBankTransfer copyWith({Omittable<String?>? bic, Omittable<String?>? ibanLast4, Omittable<String?>? senderName, }) { return CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferResourceEuBankTransfer(
  bic: bic ?? this.bic,
  ibanLast4: ibanLast4 ?? this.ibanLast4,
  senderName: senderName ?? this.senderName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferResourceEuBankTransfer &&
          bic == other.bic &&
          ibanLast4 == other.ibanLast4 &&
          senderName == other.senderName; } 
@override int get hashCode { return Object.hash(bic, ibanLast4, senderName); } 
@override String toString() { return 'CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransferResourceEuBankTransfer(bic: $bic, ibanLast4: $ibanLast4, senderName: $senderName)'; } 
 }
