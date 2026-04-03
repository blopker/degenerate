// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class GetTaxIdsOwnerType {const GetTaxIdsOwnerType._(this.value);

factory GetTaxIdsOwnerType.fromJson(String json) { return switch (json) {
  'account' => account,
  'application' => application,
  'customer' => customer,
  'self' => self,
  _ => GetTaxIdsOwnerType._(json),
}; }

static const GetTaxIdsOwnerType account = GetTaxIdsOwnerType._('account');

static const GetTaxIdsOwnerType application = GetTaxIdsOwnerType._('application');

static const GetTaxIdsOwnerType customer = GetTaxIdsOwnerType._('customer');

static const GetTaxIdsOwnerType self = GetTaxIdsOwnerType._('self');

static const List<GetTaxIdsOwnerType> values = [account, application, customer, self];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetTaxIdsOwnerType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GetTaxIdsOwnerType($value)'; } 
 }
@immutable final class GetTaxIdsOwner {const GetTaxIdsOwner({required this.type, this.account, this.customer, this.customerAccount, });

factory GetTaxIdsOwner.fromJson(Map<String, dynamic> json) { return GetTaxIdsOwner(
  account: json['account'] as String?,
  customer: json['customer'] as String?,
  customerAccount: json['customer_account'] as String?,
  type: GetTaxIdsOwnerType.fromJson(json['type'] as String),
); }

final String? account;

final String? customer;

final String? customerAccount;

final GetTaxIdsOwnerType type;

Map<String, dynamic> toJson() { return {
  'account': ?account,
  'customer': ?customer,
  'customer_account': ?customerAccount,
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
GetTaxIdsOwner copyWith({String Function()? account, String Function()? customer, String Function()? customerAccount, GetTaxIdsOwnerType? type, }) { return GetTaxIdsOwner(
  account: account != null ? account() : this.account,
  customer: customer != null ? customer() : this.customer,
  customerAccount: customerAccount != null ? customerAccount() : this.customerAccount,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetTaxIdsOwner &&
          account == other.account &&
          customer == other.customer &&
          customerAccount == other.customerAccount &&
          type == other.type; } 
@override int get hashCode { return Object.hash(account, customer, customerAccount, type); } 
@override String toString() { return 'GetTaxIdsOwner(account: $account, customer: $customer, customerAccount: $customerAccount, type: $type)'; } 
 }
