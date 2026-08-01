// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'bank_connections_resource_account_number_details.dart';import 'bank_connections_resource_accountholder.dart';import 'bank_connections_resource_balance.dart';import 'bank_connections_resource_balance_refresh.dart';import 'bank_connections_resource_ownership_refresh.dart';import 'bank_connections_resource_transaction_refresh.dart';import 'financial_connections_account_ownership.dart';import 'financial_connections_account_ownership2.dart';/// The type of the account. Account category is further divided in `subcategory`.
@immutable final class FinancialConnectionsAccountCategory {const FinancialConnectionsAccountCategory._(this.value);

factory FinancialConnectionsAccountCategory.fromJson(String json) { return switch (json) {
  'cash' => cash,
  'credit' => credit,
  'investment' => investment,
  'other' => $other,
  _ => FinancialConnectionsAccountCategory._(json),
}; }

static const FinancialConnectionsAccountCategory cash = FinancialConnectionsAccountCategory._('cash');

static const FinancialConnectionsAccountCategory credit = FinancialConnectionsAccountCategory._('credit');

static const FinancialConnectionsAccountCategory investment = FinancialConnectionsAccountCategory._('investment');

static const FinancialConnectionsAccountCategory $other = FinancialConnectionsAccountCategory._('other');

static const List<FinancialConnectionsAccountCategory> values = [cash, credit, investment, $other];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FinancialConnectionsAccountCategory && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'FinancialConnectionsAccountCategory($value)'; } 
 }
/// String representing the object's type. Objects of the same type share the same value.
@immutable final class FinancialConnectionsAccountObject {const FinancialConnectionsAccountObject._(this.value);

factory FinancialConnectionsAccountObject.fromJson(String json) { return switch (json) {
  'financial_connections.account' => financialConnectionsAccount,
  _ => FinancialConnectionsAccountObject._(json),
}; }

static const FinancialConnectionsAccountObject financialConnectionsAccount = FinancialConnectionsAccountObject._('financial_connections.account');

static const List<FinancialConnectionsAccountObject> values = [financialConnectionsAccount];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FinancialConnectionsAccountObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'FinancialConnectionsAccountObject($value)'; } 
 }
@immutable final class FinancialConnectionsAccountPermissions {const FinancialConnectionsAccountPermissions._(this.value);

factory FinancialConnectionsAccountPermissions.fromJson(String json) { return switch (json) {
  'balances' => balances,
  'ownership' => ownership,
  'payment_method' => paymentMethod,
  'transactions' => transactions,
  _ => FinancialConnectionsAccountPermissions._(json),
}; }

static const FinancialConnectionsAccountPermissions balances = FinancialConnectionsAccountPermissions._('balances');

static const FinancialConnectionsAccountPermissions ownership = FinancialConnectionsAccountPermissions._('ownership');

static const FinancialConnectionsAccountPermissions paymentMethod = FinancialConnectionsAccountPermissions._('payment_method');

static const FinancialConnectionsAccountPermissions transactions = FinancialConnectionsAccountPermissions._('transactions');

static const List<FinancialConnectionsAccountPermissions> values = [balances, ownership, paymentMethod, transactions];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FinancialConnectionsAccountPermissions && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'FinancialConnectionsAccountPermissions($value)'; } 
 }
/// The status of the link to the account.
@immutable final class FinancialConnectionsAccountStatus {const FinancialConnectionsAccountStatus._(this.value);

factory FinancialConnectionsAccountStatus.fromJson(String json) { return switch (json) {
  'active' => active,
  'disconnected' => disconnected,
  'inactive' => inactive,
  _ => FinancialConnectionsAccountStatus._(json),
}; }

static const FinancialConnectionsAccountStatus active = FinancialConnectionsAccountStatus._('active');

static const FinancialConnectionsAccountStatus disconnected = FinancialConnectionsAccountStatus._('disconnected');

static const FinancialConnectionsAccountStatus inactive = FinancialConnectionsAccountStatus._('inactive');

static const List<FinancialConnectionsAccountStatus> values = [active, disconnected, inactive];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FinancialConnectionsAccountStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'FinancialConnectionsAccountStatus($value)'; } 
 }
/// If `category` is `cash`, one of:
/// 
///  - `checking`
///  - `savings`
///  - `other`
/// 
/// If `category` is `credit`, one of:
/// 
///  - `mortgage`
///  - `line_of_credit`
///  - `credit_card`
///  - `other`
/// 
/// If `category` is `investment` or `other`, this will be `other`.
@immutable final class FinancialConnectionsAccountSubcategory {const FinancialConnectionsAccountSubcategory._(this.value);

factory FinancialConnectionsAccountSubcategory.fromJson(String json) { return switch (json) {
  'checking' => checking,
  'credit_card' => creditCard,
  'line_of_credit' => lineOfCredit,
  'mortgage' => mortgage,
  'other' => $other,
  'savings' => savings,
  _ => FinancialConnectionsAccountSubcategory._(json),
}; }

static const FinancialConnectionsAccountSubcategory checking = FinancialConnectionsAccountSubcategory._('checking');

static const FinancialConnectionsAccountSubcategory creditCard = FinancialConnectionsAccountSubcategory._('credit_card');

static const FinancialConnectionsAccountSubcategory lineOfCredit = FinancialConnectionsAccountSubcategory._('line_of_credit');

static const FinancialConnectionsAccountSubcategory mortgage = FinancialConnectionsAccountSubcategory._('mortgage');

static const FinancialConnectionsAccountSubcategory $other = FinancialConnectionsAccountSubcategory._('other');

static const FinancialConnectionsAccountSubcategory savings = FinancialConnectionsAccountSubcategory._('savings');

static const List<FinancialConnectionsAccountSubcategory> values = [checking, creditCard, lineOfCredit, mortgage, $other, savings];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FinancialConnectionsAccountSubcategory && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'FinancialConnectionsAccountSubcategory($value)'; } 
 }
@immutable final class FinancialConnectionsAccountSubscriptions {const FinancialConnectionsAccountSubscriptions._(this.value);

factory FinancialConnectionsAccountSubscriptions.fromJson(String json) { return switch (json) {
  'transactions' => transactions,
  _ => FinancialConnectionsAccountSubscriptions._(json),
}; }

static const FinancialConnectionsAccountSubscriptions transactions = FinancialConnectionsAccountSubscriptions._('transactions');

static const List<FinancialConnectionsAccountSubscriptions> values = [transactions];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FinancialConnectionsAccountSubscriptions && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'FinancialConnectionsAccountSubscriptions($value)'; } 
 }
@immutable final class FinancialConnectionsAccountSupportedPaymentMethodTypes {const FinancialConnectionsAccountSupportedPaymentMethodTypes._(this.value);

factory FinancialConnectionsAccountSupportedPaymentMethodTypes.fromJson(String json) { return switch (json) {
  'link' => link,
  'us_bank_account' => usBankAccount,
  _ => FinancialConnectionsAccountSupportedPaymentMethodTypes._(json),
}; }

static const FinancialConnectionsAccountSupportedPaymentMethodTypes link = FinancialConnectionsAccountSupportedPaymentMethodTypes._('link');

static const FinancialConnectionsAccountSupportedPaymentMethodTypes usBankAccount = FinancialConnectionsAccountSupportedPaymentMethodTypes._('us_bank_account');

static const List<FinancialConnectionsAccountSupportedPaymentMethodTypes> values = [link, usBankAccount];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FinancialConnectionsAccountSupportedPaymentMethodTypes && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'FinancialConnectionsAccountSupportedPaymentMethodTypes($value)'; } 
 }
/// A Financial Connections Account represents an account that exists outside of Stripe, to which you have been granted some degree of access.
@immutable final class FinancialConnectionsAccount {const FinancialConnectionsAccount({required this.category, required this.created, required this.id, required this.institutionName, required this.livemode, required this.object, required this.status, required this.subcategory, required this.supportedPaymentMethodTypes, this.accountHolder = const Omittable.absent(), this.accountNumbers = const Omittable.absent(), this.balance = const Omittable.absent(), this.balanceRefresh = const Omittable.absent(), this.displayName = const Omittable.absent(), this.last4 = const Omittable.absent(), this.ownership = const Omittable.absent(), this.ownershipRefresh = const Omittable.absent(), this.permissions = const Omittable.absent(), this.subscriptions = const Omittable.absent(), this.transactionRefresh = const Omittable.absent(), });

factory FinancialConnectionsAccount.fromJson(Map<String, dynamic> json) { return FinancialConnectionsAccount(
  accountHolder: json.containsKey('account_holder') ? Omittable(json['account_holder'] != null ? BankConnectionsResourceAccountholder.fromJson(json['account_holder'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  accountNumbers: json.containsKey('account_numbers') ? Omittable((json['account_numbers'] as List<dynamic>?)?.map((e) => BankConnectionsResourceAccountNumberDetails.fromJson(e as Map<String, dynamic>)).toList()) : const Omittable.absent(),
  balance: json.containsKey('balance') ? Omittable(json['balance'] != null ? BankConnectionsResourceBalance.fromJson(json['balance'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  balanceRefresh: json.containsKey('balance_refresh') ? Omittable(json['balance_refresh'] != null ? BankConnectionsResourceBalanceRefresh.fromJson(json['balance_refresh'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  category: FinancialConnectionsAccountCategory.fromJson(json['category'] as String),
  created: (json['created'] as num).toInt(),
  displayName: json.containsKey('display_name') ? Omittable(json['display_name'] as String?) : const Omittable.absent(),
  id: json['id'] as String,
  institutionName: json['institution_name'] as String,
  last4: json.containsKey('last4') ? Omittable(json['last4'] as String?) : const Omittable.absent(),
  livemode: json['livemode'] as bool,
  object: FinancialConnectionsAccountObject.fromJson(json['object'] as String),
  ownership: json.containsKey('ownership') ? Omittable(json['ownership'] != null ? OneOf2.parse(json['ownership'], fromA: (v) => v as String, fromB: (v) => FinancialConnectionsAccountOwnership.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  ownershipRefresh: json.containsKey('ownership_refresh') ? Omittable(json['ownership_refresh'] != null ? BankConnectionsResourceOwnershipRefresh.fromJson(json['ownership_refresh'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  permissions: json.containsKey('permissions') ? Omittable((json['permissions'] as List<dynamic>?)?.map((e) => FinancialConnectionsAccountPermissions.fromJson(e as String)).toList()) : const Omittable.absent(),
  status: FinancialConnectionsAccountStatus.fromJson(json['status'] as String),
  subcategory: FinancialConnectionsAccountSubcategory.fromJson(json['subcategory'] as String),
  subscriptions: json.containsKey('subscriptions') ? Omittable((json['subscriptions'] as List<dynamic>?)?.map((e) => FinancialConnectionsAccountSubscriptions.fromJson(e as String)).toList()) : const Omittable.absent(),
  supportedPaymentMethodTypes: (json['supported_payment_method_types'] as List<dynamic>).map((e) => FinancialConnectionsAccountSupportedPaymentMethodTypes.fromJson(e as String)).toList(),
  transactionRefresh: json.containsKey('transaction_refresh') ? Omittable(json['transaction_refresh'] != null ? BankConnectionsResourceTransactionRefresh.fromJson(json['transaction_refresh'] as Map<String, dynamic>) : null) : const Omittable.absent(),
); }

/// The account holder that this account belongs to.
final Omittable<BankConnectionsResourceAccountholder?> accountHolder;

/// Details about the account numbers.
final Omittable<List<BankConnectionsResourceAccountNumberDetails>?> accountNumbers;

/// The most recent information about the account's balance.
final Omittable<BankConnectionsResourceBalance?> balance;

/// The state of the most recent attempt to refresh the account balance.
final Omittable<BankConnectionsResourceBalanceRefresh?> balanceRefresh;

/// The type of the account. Account category is further divided in `subcategory`.
final FinancialConnectionsAccountCategory category;

/// Time at which the object was created. Measured in seconds since the Unix epoch.
final int created;

/// A human-readable name that has been assigned to this account, either by the account holder or by the institution.
final Omittable<String?> displayName;

/// Unique identifier for the object.
final String id;

/// The name of the institution that holds this account.
final String institutionName;

/// The last 4 digits of the account number. If present, this will be 4 numeric characters.
final Omittable<String?> last4;

/// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
final bool livemode;

/// String representing the object's type. Objects of the same type share the same value.
final FinancialConnectionsAccountObject object;

/// The most recent information about the account's owners.
final Omittable<FinancialConnectionsAccountOwnership2?> ownership;

/// The state of the most recent attempt to refresh the account owners.
final Omittable<BankConnectionsResourceOwnershipRefresh?> ownershipRefresh;

/// The list of permissions granted by this account.
final Omittable<List<FinancialConnectionsAccountPermissions>?> permissions;

/// The status of the link to the account.
final FinancialConnectionsAccountStatus status;

/// If `category` is `cash`, one of:
/// 
///  - `checking`
///  - `savings`
///  - `other`
/// 
/// If `category` is `credit`, one of:
/// 
///  - `mortgage`
///  - `line_of_credit`
///  - `credit_card`
///  - `other`
/// 
/// If `category` is `investment` or `other`, this will be `other`.
final FinancialConnectionsAccountSubcategory subcategory;

/// The list of data refresh subscriptions requested on this account.
final Omittable<List<FinancialConnectionsAccountSubscriptions>?> subscriptions;

/// The [PaymentMethod type](https://docs.stripe.com/api/payment_methods/object#payment_method_object-type)(s) that can be created from this account.
final List<FinancialConnectionsAccountSupportedPaymentMethodTypes> supportedPaymentMethodTypes;

/// The state of the most recent attempt to refresh the account transactions.
final Omittable<BankConnectionsResourceTransactionRefresh?> transactionRefresh;

Map<String, dynamic> toJson() { return {
  if (accountHolder.isPresent) 'account_holder': accountHolder.value?.toJson(),
  if (accountNumbers.isPresent) 'account_numbers': accountNumbers.value?.map((e) => e.toJson()).toList(),
  if (balance.isPresent) 'balance': balance.value?.toJson(),
  if (balanceRefresh.isPresent) 'balance_refresh': balanceRefresh.value?.toJson(),
  'category': category.toJson(),
  'created': created,
  if (displayName.isPresent) 'display_name': displayName.value,
  'id': id,
  'institution_name': institutionName,
  if (last4.isPresent) 'last4': last4.value,
  'livemode': livemode,
  'object': object.toJson(),
  if (ownership.isPresent) 'ownership': ownership.value?.toJson(),
  if (ownershipRefresh.isPresent) 'ownership_refresh': ownershipRefresh.value?.toJson(),
  if (permissions.isPresent) 'permissions': permissions.value?.map((e) => e.toJson()).toList(),
  'status': status.toJson(),
  'subcategory': subcategory.toJson(),
  if (subscriptions.isPresent) 'subscriptions': subscriptions.value?.map((e) => e.toJson()).toList(),
  'supported_payment_method_types': supportedPaymentMethodTypes.map((e) => e.toJson()).toList(),
  if (transactionRefresh.isPresent) 'transaction_refresh': transactionRefresh.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('category') &&
      json.containsKey('created') && json['created'] is num &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('institution_name') && json['institution_name'] is String &&
      json.containsKey('livemode') && json['livemode'] is bool &&
      json.containsKey('object') &&
      json.containsKey('status') &&
      json.containsKey('subcategory') &&
      json.containsKey('supported_payment_method_types'); } 
FinancialConnectionsAccount copyWith({Omittable<BankConnectionsResourceAccountholder?>? accountHolder, Omittable<List<BankConnectionsResourceAccountNumberDetails>?>? accountNumbers, Omittable<BankConnectionsResourceBalance?>? balance, Omittable<BankConnectionsResourceBalanceRefresh?>? balanceRefresh, FinancialConnectionsAccountCategory? category, int? created, Omittable<String?>? displayName, String? id, String? institutionName, Omittable<String?>? last4, bool? livemode, FinancialConnectionsAccountObject? object, Omittable<FinancialConnectionsAccountOwnership2?>? ownership, Omittable<BankConnectionsResourceOwnershipRefresh?>? ownershipRefresh, Omittable<List<FinancialConnectionsAccountPermissions>?>? permissions, FinancialConnectionsAccountStatus? status, FinancialConnectionsAccountSubcategory? subcategory, Omittable<List<FinancialConnectionsAccountSubscriptions>?>? subscriptions, List<FinancialConnectionsAccountSupportedPaymentMethodTypes>? supportedPaymentMethodTypes, Omittable<BankConnectionsResourceTransactionRefresh?>? transactionRefresh, }) { return FinancialConnectionsAccount(
  accountHolder: accountHolder ?? this.accountHolder,
  accountNumbers: accountNumbers ?? this.accountNumbers,
  balance: balance ?? this.balance,
  balanceRefresh: balanceRefresh ?? this.balanceRefresh,
  category: category ?? this.category,
  created: created ?? this.created,
  displayName: displayName ?? this.displayName,
  id: id ?? this.id,
  institutionName: institutionName ?? this.institutionName,
  last4: last4 ?? this.last4,
  livemode: livemode ?? this.livemode,
  object: object ?? this.object,
  ownership: ownership ?? this.ownership,
  ownershipRefresh: ownershipRefresh ?? this.ownershipRefresh,
  permissions: permissions ?? this.permissions,
  status: status ?? this.status,
  subcategory: subcategory ?? this.subcategory,
  subscriptions: subscriptions ?? this.subscriptions,
  supportedPaymentMethodTypes: supportedPaymentMethodTypes ?? this.supportedPaymentMethodTypes,
  transactionRefresh: transactionRefresh ?? this.transactionRefresh,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FinancialConnectionsAccount &&
          accountHolder == other.accountHolder &&
          accountNumbers.isPresent == other.accountNumbers.isPresent &&
          listEquals(accountNumbers.value, other.accountNumbers.value) &&
          balance == other.balance &&
          balanceRefresh == other.balanceRefresh &&
          category == other.category &&
          created == other.created &&
          displayName == other.displayName &&
          id == other.id &&
          institutionName == other.institutionName &&
          last4 == other.last4 &&
          livemode == other.livemode &&
          object == other.object &&
          ownership == other.ownership &&
          ownershipRefresh == other.ownershipRefresh &&
          permissions.isPresent == other.permissions.isPresent &&
          listEquals(permissions.value, other.permissions.value) &&
          status == other.status &&
          subcategory == other.subcategory &&
          subscriptions.isPresent == other.subscriptions.isPresent &&
          listEquals(subscriptions.value, other.subscriptions.value) &&
          listEquals(supportedPaymentMethodTypes, other.supportedPaymentMethodTypes) &&
          transactionRefresh == other.transactionRefresh; } 
@override int get hashCode { return Object.hash(accountHolder, Object.hashAll(accountNumbers.value ?? const []), balance, balanceRefresh, category, created, displayName, id, institutionName, last4, livemode, object, ownership, ownershipRefresh, Object.hashAll(permissions.value ?? const []), status, subcategory, Object.hashAll(subscriptions.value ?? const []), Object.hashAll(supportedPaymentMethodTypes), transactionRefresh); } 
@override String toString() { return 'FinancialConnectionsAccount(accountHolder: $accountHolder, accountNumbers: $accountNumbers, balance: $balance, balanceRefresh: $balanceRefresh, category: $category, created: $created, displayName: $displayName, id: $id, institutionName: $institutionName, last4: $last4, livemode: $livemode, object: $object, ownership: $ownership, ownershipRefresh: $ownershipRefresh, permissions: $permissions, status: $status, subcategory: $subcategory, subscriptions: $subscriptions, supportedPaymentMethodTypes: $supportedPaymentMethodTypes, transactionRefresh: $transactionRefresh)'; } 
 }
