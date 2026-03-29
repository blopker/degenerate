// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'account.dart';import 'application.dart';import 'customer.dart';import 'tax_i_ds_owner_account.dart';import 'tax_i_ds_owner_application.dart';import 'tax_i_ds_owner_customer.dart';/// Type of owner referenced.
final class TaxIDsOwnerType {const TaxIDsOwnerType._(this.value);

factory TaxIDsOwnerType.fromJson(String json) { return switch (json) {
  'account' => account,
  'application' => application,
  'customer' => customer,
  'self' => self,
  _ => TaxIDsOwnerType._(json),
}; }

static const TaxIDsOwnerType account = TaxIDsOwnerType._('account');

static const TaxIDsOwnerType application = TaxIDsOwnerType._('application');

static const TaxIDsOwnerType customer = TaxIDsOwnerType._('customer');

static const TaxIDsOwnerType self = TaxIDsOwnerType._('self');

static const List<TaxIDsOwnerType> values = [account, application, customer, self];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TaxIDsOwnerType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TaxIDsOwnerType($value)'; } 
 }
/// 
final class TaxIDsOwner {const TaxIDsOwner({this.account, this.application, this.customer, this.customerAccount, required this.type, });

factory TaxIDsOwner.fromJson(Map<String, dynamic> json) { return TaxIDsOwner(
  account: json['account'] != null ? OneOf2.parse(json['account'], fromA: (v) => v as String, fromB: (v) => Account.fromJson(v as Map<String, dynamic>),) : null,
  application: json['application'] != null ? OneOf2.parse(json['application'], fromA: (v) => v as String, fromB: (v) => Application.fromJson(v as Map<String, dynamic>),) : null,
  customer: json['customer'] != null ? OneOf2.parse(json['customer'], fromA: (v) => v as String, fromB: (v) => Customer.fromJson(v as Map<String, dynamic>),) : null,
  customerAccount: json['customer_account'] as String?,
  type: TaxIDsOwnerType.fromJson(json['type'] as String),
); }

/// The account being referenced when `type` is `account`.
final TaxIDsOwnerAccount? account;

/// The Connect Application being referenced when `type` is `application`.
final TaxIDsOwnerApplication? application;

/// The customer being referenced when `type` is `customer`.
final TaxIDsOwnerCustomer? customer;

/// The Account representing the customer being referenced when `type` is `customer`.
final String? customerAccount;

/// Type of owner referenced.
final TaxIDsOwnerType type;

Map<String, dynamic> toJson() { return {
  if (account != null) 'account': account?.toJson(),
  if (application != null) 'application': application?.toJson(),
  if (customer != null) 'customer': customer?.toJson(),
  'customer_account': ?customerAccount,
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
TaxIDsOwner copyWith({TaxIDsOwnerAccount Function()? account, TaxIDsOwnerApplication Function()? application, TaxIDsOwnerCustomer Function()? customer, String? Function()? customerAccount, TaxIDsOwnerType? type, }) { return TaxIDsOwner(
  account: account != null ? account() : this.account,
  application: application != null ? application() : this.application,
  customer: customer != null ? customer() : this.customer,
  customerAccount: customerAccount != null ? customerAccount() : this.customerAccount,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TaxIDsOwner &&
          account == other.account &&
          application == other.application &&
          customer == other.customer &&
          customerAccount == other.customerAccount &&
          type == other.type; } 
@override int get hashCode { return Object.hash(account, application, customer, customerAccount, type); } 
@override String toString() { return 'TaxIDsOwner(account: $account, application: $application, customer: $customer, customerAccount: $customerAccount, type: $type)'; } 
 }
