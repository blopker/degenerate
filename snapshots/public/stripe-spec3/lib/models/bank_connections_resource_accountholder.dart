// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'account.dart';import 'bank_connections_resource_accountholder_account.dart';import 'bank_connections_resource_accountholder_customer.dart';import 'customer.dart';/// Type of account holder that this account belongs to.
final class BankConnectionsResourceAccountholderType {const BankConnectionsResourceAccountholderType._(this.value);

factory BankConnectionsResourceAccountholderType.fromJson(String json) { return switch (json) {
  'account' => account,
  'customer' => customer,
  _ => BankConnectionsResourceAccountholderType._(json),
}; }

static const BankConnectionsResourceAccountholderType account = BankConnectionsResourceAccountholderType._('account');

static const BankConnectionsResourceAccountholderType customer = BankConnectionsResourceAccountholderType._('customer');

static const List<BankConnectionsResourceAccountholderType> values = [account, customer];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is BankConnectionsResourceAccountholderType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'BankConnectionsResourceAccountholderType($value)'; } 
 }
/// 
final class BankConnectionsResourceAccountholder {const BankConnectionsResourceAccountholder({this.account, this.customer, this.customerAccount, required this.type, });

factory BankConnectionsResourceAccountholder.fromJson(Map<String, dynamic> json) { return BankConnectionsResourceAccountholder(
  account: json['account'] != null ? OneOf2.parse(json['account'], fromA: (v) => v as String, fromB: (v) => Account.fromJson(v as Map<String, dynamic>),) : null,
  customer: json['customer'] != null ? OneOf2.parse(json['customer'], fromA: (v) => v as String, fromB: (v) => Customer.fromJson(v as Map<String, dynamic>),) : null,
  customerAccount: json['customer_account'] as String?,
  type: BankConnectionsResourceAccountholderType.fromJson(json['type'] as String),
); }

/// The ID of the Stripe account that this account belongs to. Only available when `account_holder.type` is `account`.
final BankConnectionsResourceAccountholderAccount? account;

/// The ID for an Account representing a customer that this account belongs to. Only available when `account_holder.type` is `customer`.
final BankConnectionsResourceAccountholderCustomer? customer;

final String? customerAccount;

/// Type of account holder that this account belongs to.
final BankConnectionsResourceAccountholderType type;

Map<String, dynamic> toJson() { return {
  if (account != null) 'account': account?.toJson(),
  if (customer != null) 'customer': customer?.toJson(),
  'customer_account': ?customerAccount,
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
BankConnectionsResourceAccountholder copyWith({BankConnectionsResourceAccountholderAccount Function()? account, BankConnectionsResourceAccountholderCustomer Function()? customer, String Function()? customerAccount, BankConnectionsResourceAccountholderType? type, }) { return BankConnectionsResourceAccountholder(
  account: account != null ? account() : this.account,
  customer: customer != null ? customer() : this.customer,
  customerAccount: customerAccount != null ? customerAccount() : this.customerAccount,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BankConnectionsResourceAccountholder &&
          account == other.account &&
          customer == other.customer &&
          customerAccount == other.customerAccount &&
          type == other.type; } 
@override int get hashCode { return Object.hash(account, customer, customerAccount, type); } 
@override String toString() { return 'BankConnectionsResourceAccountholder(account: $account, customer: $customer, customerAccount: $customerAccount, type: $type)'; } 
 }
