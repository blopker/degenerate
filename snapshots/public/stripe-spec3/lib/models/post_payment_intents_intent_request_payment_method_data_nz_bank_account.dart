// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostPaymentIntentsIntentRequestPaymentMethodDataNzBankAccount {const PostPaymentIntentsIntentRequestPaymentMethodDataNzBankAccount({this.accountHolderName, required this.accountNumber, required this.bankCode, required this.branchCode, this.reference, required this.suffix, });

factory PostPaymentIntentsIntentRequestPaymentMethodDataNzBankAccount.fromJson(Map<String, dynamic> json) { return PostPaymentIntentsIntentRequestPaymentMethodDataNzBankAccount(
  accountHolderName: json['account_holder_name'] as String?,
  accountNumber: json['account_number'] as String,
  bankCode: json['bank_code'] as String,
  branchCode: json['branch_code'] as String,
  reference: json['reference'] as String?,
  suffix: json['suffix'] as String,
); }

final String? accountHolderName;

final String accountNumber;

final String bankCode;

final String branchCode;

final String? reference;

final String suffix;

Map<String, dynamic> toJson() { return {
  'account_holder_name': ?accountHolderName,
  'account_number': accountNumber,
  'bank_code': bankCode,
  'branch_code': branchCode,
  'reference': ?reference,
  'suffix': suffix,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('account_number') && json['account_number'] is String &&
      json.containsKey('bank_code') && json['bank_code'] is String &&
      json.containsKey('branch_code') && json['branch_code'] is String &&
      json.containsKey('suffix') && json['suffix'] is String; } 
PostPaymentIntentsIntentRequestPaymentMethodDataNzBankAccount copyWith({String Function()? accountHolderName, String? accountNumber, String? bankCode, String? branchCode, String Function()? reference, String? suffix, }) { return PostPaymentIntentsIntentRequestPaymentMethodDataNzBankAccount(
  accountHolderName: accountHolderName != null ? accountHolderName() : this.accountHolderName,
  accountNumber: accountNumber ?? this.accountNumber,
  bankCode: bankCode ?? this.bankCode,
  branchCode: branchCode ?? this.branchCode,
  reference: reference != null ? reference() : this.reference,
  suffix: suffix ?? this.suffix,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentIntentsIntentRequestPaymentMethodDataNzBankAccount &&
          accountHolderName == other.accountHolderName &&
          accountNumber == other.accountNumber &&
          bankCode == other.bankCode &&
          branchCode == other.branchCode &&
          reference == other.reference &&
          suffix == other.suffix; } 
@override int get hashCode { return Object.hash(accountHolderName, accountNumber, bankCode, branchCode, reference, suffix); } 
@override String toString() { return 'PostPaymentIntentsIntentRequestPaymentMethodDataNzBankAccount(accountHolderName: $accountHolderName, accountNumber: $accountNumber, bankCode: $bankCode, branchCode: $branchCode, reference: $reference, suffix: $suffix)'; } 
 }
