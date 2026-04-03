// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSetupIntentsRequestPaymentMethodDataAuBecsDebit {const PostSetupIntentsRequestPaymentMethodDataAuBecsDebit({required this.accountNumber, required this.bsbNumber, });

factory PostSetupIntentsRequestPaymentMethodDataAuBecsDebit.fromJson(Map<String, dynamic> json) { return PostSetupIntentsRequestPaymentMethodDataAuBecsDebit(
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
PostSetupIntentsRequestPaymentMethodDataAuBecsDebit copyWith({String? accountNumber, String? bsbNumber, }) { return PostSetupIntentsRequestPaymentMethodDataAuBecsDebit(
  accountNumber: accountNumber ?? this.accountNumber,
  bsbNumber: bsbNumber ?? this.bsbNumber,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSetupIntentsRequestPaymentMethodDataAuBecsDebit &&
          accountNumber == other.accountNumber &&
          bsbNumber == other.bsbNumber; } 
@override int get hashCode { return Object.hash(accountNumber, bsbNumber); } 
@override String toString() { return 'PostSetupIntentsRequestPaymentMethodDataAuBecsDebit(accountNumber: $accountNumber, bsbNumber: $bsbNumber)'; } 
 }
