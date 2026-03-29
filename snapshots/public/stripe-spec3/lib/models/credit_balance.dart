// GENERATED CODE - DO NOT MODIFY BY HAND

import 'billing_credit_grants_resource_amount.dart';/// 
final class CreditBalance {const CreditBalance({required this.availableBalance, required this.ledgerBalance, });

factory CreditBalance.fromJson(Map<String, dynamic> json) { return CreditBalance(
  availableBalance: BillingCreditGrantsResourceAmount.fromJson(json['available_balance'] as Map<String, dynamic>),
  ledgerBalance: BillingCreditGrantsResourceAmount.fromJson(json['ledger_balance'] as Map<String, dynamic>),
); }

final BillingCreditGrantsResourceAmount availableBalance;

final BillingCreditGrantsResourceAmount ledgerBalance;

Map<String, dynamic> toJson() { return {
  'available_balance': availableBalance.toJson(),
  'ledger_balance': ledgerBalance.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('available_balance') &&
      json.containsKey('ledger_balance'); } 
CreditBalance copyWith({BillingCreditGrantsResourceAmount? availableBalance, BillingCreditGrantsResourceAmount? ledgerBalance, }) { return CreditBalance(
  availableBalance: availableBalance ?? this.availableBalance,
  ledgerBalance: ledgerBalance ?? this.ledgerBalance,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreditBalance &&
          availableBalance == other.availableBalance &&
          ledgerBalance == other.ledgerBalance; } 
@override int get hashCode { return Object.hash(availableBalance, ledgerBalance); } 
@override String toString() { return 'CreditBalance(availableBalance: $availableBalance, ledgerBalance: $ledgerBalance)'; } 
 }
