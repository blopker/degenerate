// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AccountBalance {const AccountBalance({this.accountSid, this.balance, this.currency, });

factory AccountBalance.fromJson(Map<String, dynamic> json) { return AccountBalance(
  accountSid: json['account_sid'] as String?,
  balance: json['balance'] as String?,
  currency: json['currency'] as String?,
); }

/// The unique SID identifier of the Account.
final String? accountSid;

/// The balance of the Account, in units specified by the unit parameter. Balance changes may not be reflected immediately. Child accounts do not contain balance information
final String? balance;

/// The units of currency for the account balance
final String? currency;

Map<String, dynamic> toJson() { return {
  'account_sid': ?accountSid,
  'balance': ?balance,
  'currency': ?currency,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account_sid', 'balance', 'currency'}.contains(key)); } 
AccountBalance copyWith({String? Function()? accountSid, String? Function()? balance, String? Function()? currency, }) { return AccountBalance(
  accountSid: accountSid != null ? accountSid() : this.accountSid,
  balance: balance != null ? balance() : this.balance,
  currency: currency != null ? currency() : this.currency,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountBalance &&
          accountSid == other.accountSid &&
          balance == other.balance &&
          currency == other.currency; } 
@override int get hashCode { return Object.hash(accountSid, balance, currency); } 
@override String toString() { return 'AccountBalance(accountSid: $accountSid, balance: $balance, currency: $currency)'; } 
 }
