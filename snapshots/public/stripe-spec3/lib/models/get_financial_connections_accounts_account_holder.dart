// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class GetFinancialConnectionsAccountsAccountHolder {const GetFinancialConnectionsAccountsAccountHolder({this.account, this.customer, this.customerAccount, });

factory GetFinancialConnectionsAccountsAccountHolder.fromJson(Map<String, dynamic> json) { return GetFinancialConnectionsAccountsAccountHolder(
  account: json['account'] as String?,
  customer: json['customer'] as String?,
  customerAccount: json['customer_account'] as String?,
); }

final String? account;

final String? customer;

final String? customerAccount;

Map<String, dynamic> toJson() { return {
  'account': ?account,
  'customer': ?customer,
  'customer_account': ?customerAccount,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account', 'customer', 'customer_account'}.contains(key)); } 
GetFinancialConnectionsAccountsAccountHolder copyWith({String Function()? account, String Function()? customer, String Function()? customerAccount, }) { return GetFinancialConnectionsAccountsAccountHolder(
  account: account != null ? account() : this.account,
  customer: customer != null ? customer() : this.customer,
  customerAccount: customerAccount != null ? customerAccount() : this.customerAccount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetFinancialConnectionsAccountsAccountHolder &&
          account == other.account &&
          customer == other.customer &&
          customerAccount == other.customerAccount; } 
@override int get hashCode { return Object.hash(account, customer, customerAccount); } 
@override String toString() { return 'GetFinancialConnectionsAccountsAccountHolder(account: $account, customer: $customer, customerAccount: $customerAccount)'; } 
 }
