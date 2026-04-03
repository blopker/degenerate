// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// If this is an `au_becs_debit` PaymentMethod, this hash contains details about the bank account.
@immutable final class PostPaymentMethodsRequestAuBecsDebit {const PostPaymentMethodsRequestAuBecsDebit({required this.accountNumber, required this.bsbNumber, });

factory PostPaymentMethodsRequestAuBecsDebit.fromJson(Map<String, dynamic> json) { return PostPaymentMethodsRequestAuBecsDebit(
  accountNumber: json['account_number'] as String,
  bsbNumber: json['bsb_number'] as String,
); }

final String accountNumber;

final String bsbNumber;

Map<String, dynamic> toJson() { return {
  'account_number': accountNumber,
  'bsb_number': bsbNumber,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('account_number') && json['account_number'] is String &&
      json.containsKey('bsb_number') && json['bsb_number'] is String; } 
PostPaymentMethodsRequestAuBecsDebit copyWith({String? accountNumber, String? bsbNumber, }) { return PostPaymentMethodsRequestAuBecsDebit(
  accountNumber: accountNumber ?? this.accountNumber,
  bsbNumber: bsbNumber ?? this.bsbNumber,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodsRequestAuBecsDebit &&
          accountNumber == other.accountNumber &&
          bsbNumber == other.bsbNumber; } 
@override int get hashCode { return Object.hash(accountNumber, bsbNumber); } 
@override String toString() { return 'PostPaymentMethodsRequestAuBecsDebit(accountNumber: $accountNumber, bsbNumber: $bsbNumber)'; } 
 }
