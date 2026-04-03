// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'account.dart';import 'bank_account_account.dart';import 'bank_account_customer.dart';import 'customer.dart';import 'deleted_customer.dart';import 'external_account_requirements.dart';@immutable final class BankAccountAvailablePayoutMethods {const BankAccountAvailablePayoutMethods._(this.value);

factory BankAccountAvailablePayoutMethods.fromJson(String json) { return switch (json) {
  'instant' => instant,
  'standard' => standard,
  _ => BankAccountAvailablePayoutMethods._(json),
}; }

static const BankAccountAvailablePayoutMethods instant = BankAccountAvailablePayoutMethods._('instant');

static const BankAccountAvailablePayoutMethods standard = BankAccountAvailablePayoutMethods._('standard');

static const List<BankAccountAvailablePayoutMethods> values = [instant, standard];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is BankAccountAvailablePayoutMethods && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'BankAccountAvailablePayoutMethods($value)'; } 
 }
/// String representing the object's type. Objects of the same type share the same value.
@immutable final class BankAccountObject {const BankAccountObject._(this.value);

factory BankAccountObject.fromJson(String json) { return switch (json) {
  'bank_account' => bankAccount,
  _ => BankAccountObject._(json),
}; }

static const BankAccountObject bankAccount = BankAccountObject._('bank_account');

static const List<BankAccountObject> values = [bankAccount];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is BankAccountObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'BankAccountObject($value)'; } 
 }
/// These bank accounts are payment methods on `Customer` objects.
/// 
/// On the other hand [External Accounts](/api#external_accounts) are transfer
/// destinations on `Account` objects for connected accounts.
/// They can be bank accounts or debit cards as well, and are documented in the links above.
/// 
/// Related guide: [Bank debits and transfers](/payments/bank-debits-transfers)
@immutable final class BankAccount {const BankAccount({required this.country, required this.currency, required this.id, required this.last4, required this.object, required this.status, this.account, this.accountHolderName, this.accountHolderType, this.accountType, this.availablePayoutMethods, this.bankName, this.customer, this.defaultForCurrency, this.fingerprint, this.futureRequirements, this.metadata, this.requirements, this.routingNumber, });

factory BankAccount.fromJson(Map<String, dynamic> json) { return BankAccount(
  account: json['account'] != null ? OneOf2.parse(json['account'], fromA: (v) => v as String, fromB: (v) => Account.fromJson(v as Map<String, dynamic>),) : null,
  accountHolderName: json['account_holder_name'] as String?,
  accountHolderType: json['account_holder_type'] as String?,
  accountType: json['account_type'] as String?,
  availablePayoutMethods: (json['available_payout_methods'] as List<dynamic>?)?.map((e) => BankAccountAvailablePayoutMethods.fromJson(e as String)).toList(),
  bankName: json['bank_name'] as String?,
  country: json['country'] as String,
  currency: json['currency'] as String,
  customer: json['customer'] != null ? OneOf3.parse(json['customer'], fromA: (v) => v as String, fromB: (v) => Customer.fromJson(v as Map<String, dynamic>), fromC: (v) => DeletedCustomer.fromJson(v as Map<String, dynamic>),) : null,
  defaultForCurrency: json['default_for_currency'] as bool?,
  fingerprint: json['fingerprint'] as String?,
  futureRequirements: json['future_requirements'] != null ? ExternalAccountRequirements.fromJson(json['future_requirements'] as Map<String, dynamic>) : null,
  id: json['id'] as String,
  last4: json['last4'] as String,
  metadata: (json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
  object: BankAccountObject.fromJson(json['object'] as String),
  requirements: json['requirements'] != null ? ExternalAccountRequirements.fromJson(json['requirements'] as Map<String, dynamic>) : null,
  routingNumber: json['routing_number'] as String?,
  status: json['status'] as String,
); }

/// The account this bank account belongs to. Only applicable on Accounts (not customers or recipients) This property is only available when returned as an [External Account](/api/external_account_bank_accounts/object) where [controller.is_controller](/api/accounts/object#account_object-controller-is_controller) is `true`.
final BankAccountAccount? account;

/// The name of the person or business that owns the bank account.
final String? accountHolderName;

/// The type of entity that holds the account. This can be either `individual` or `company`.
final String? accountHolderType;

/// The bank account type. This can only be `checking` or `savings` in most countries. In Japan, this can only be `futsu` or `toza`.
final String? accountType;

/// A set of available payout methods for this bank account. Only values from this set should be passed as the `method` when creating a payout.
final List<BankAccountAvailablePayoutMethods>? availablePayoutMethods;

/// Name of the bank associated with the routing number (e.g., `WELLS FARGO`).
final String? bankName;

/// Two-letter ISO code representing the country the bank account is located in.
final String country;

/// Three-letter [ISO code for the currency](https://stripe.com/docs/payouts) paid out to the bank account.
final String currency;

/// The ID of the customer that the bank account is associated with.
final BankAccountCustomer? customer;

/// Whether this bank account is the default external account for its currency.
final bool? defaultForCurrency;

/// Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
final String? fingerprint;

/// Information about the [upcoming new requirements for the bank account](https://docs.stripe.com/connect/custom-accounts/future-requirements), including what information needs to be collected, and by when.
final ExternalAccountRequirements? futureRequirements;

/// Unique identifier for the object.
final String id;

/// The last four digits of the bank account number.
final String last4;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
final Map<String,String>? metadata;

/// String representing the object's type. Objects of the same type share the same value.
final BankAccountObject object;

/// Information about the requirements for the bank account, including what information needs to be collected.
final ExternalAccountRequirements? requirements;

/// The routing transit number for the bank account.
final String? routingNumber;

/// For bank accounts, possible values are `new`, `validated`, `verified`, `verification_failed`, `tokenized_account_number_deactivated` or `errored`. A bank account that hasn't had any activity or validation performed is `new`. If Stripe can determine that the bank account exists, its status will be `validated`. Note that there often isn’t enough information to know (e.g., for smaller credit unions), and the validation is not always run. If customer bank account verification has succeeded, the bank account status will be `verified`. If the verification failed for any reason, such as microdeposit failure, the status will be `verification_failed`. If the status is `tokenized_account_number_deactivated`, the account utilizes a tokenized account number which has been deactivated due to expiration or revocation. This account will need to be reverified to continue using it for money movement. If a payout sent to this bank account fails, we'll set the status to `errored` and will not continue to send [scheduled payouts](https://stripe.com/docs/payouts#payout-schedule) until the bank details are updated.
/// 
/// For external accounts, possible values are `new`, `errored`, `verification_failed`, and `tokenized_account_number_deactivated`. If a payout fails, the status is set to `errored` and scheduled payouts are stopped until account details are updated. In the US and India, if we can't [verify the owner of the bank account](https://support.stripe.com/questions/bank-account-ownership-verification), we'll set the status to `verification_failed`. Other validations aren't run against external accounts because they're only used for payouts. This means the other statuses don't apply.
final String status;

Map<String, dynamic> toJson() { return {
  if (account != null) 'account': account?.toJson(),
  'account_holder_name': ?accountHolderName,
  'account_holder_type': ?accountHolderType,
  'account_type': ?accountType,
  if (availablePayoutMethods != null) 'available_payout_methods': availablePayoutMethods?.map((e) => e.toJson()).toList(),
  'bank_name': ?bankName,
  'country': country,
  'currency': currency,
  if (customer != null) 'customer': customer?.toJson(),
  'default_for_currency': ?defaultForCurrency,
  'fingerprint': ?fingerprint,
  if (futureRequirements != null) 'future_requirements': futureRequirements?.toJson(),
  'id': id,
  'last4': last4,
  'metadata': ?metadata,
  'object': object.toJson(),
  if (requirements != null) 'requirements': requirements?.toJson(),
  'routing_number': ?routingNumber,
  'status': status,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('country') && json['country'] is String &&
      json.containsKey('currency') && json['currency'] is String &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('last4') && json['last4'] is String &&
      json.containsKey('object') &&
      json.containsKey('status') && json['status'] is String; } 
BankAccount copyWith({BankAccountAccount? Function()? account, String? Function()? accountHolderName, String? Function()? accountHolderType, String? Function()? accountType, List<BankAccountAvailablePayoutMethods>? Function()? availablePayoutMethods, String? Function()? bankName, String? country, String? currency, BankAccountCustomer? Function()? customer, bool? Function()? defaultForCurrency, String? Function()? fingerprint, ExternalAccountRequirements? Function()? futureRequirements, String? id, String? last4, Map<String, String>? Function()? metadata, BankAccountObject? object, ExternalAccountRequirements? Function()? requirements, String? Function()? routingNumber, String? status, }) { return BankAccount(
  account: account != null ? account() : this.account,
  accountHolderName: accountHolderName != null ? accountHolderName() : this.accountHolderName,
  accountHolderType: accountHolderType != null ? accountHolderType() : this.accountHolderType,
  accountType: accountType != null ? accountType() : this.accountType,
  availablePayoutMethods: availablePayoutMethods != null ? availablePayoutMethods() : this.availablePayoutMethods,
  bankName: bankName != null ? bankName() : this.bankName,
  country: country ?? this.country,
  currency: currency ?? this.currency,
  customer: customer != null ? customer() : this.customer,
  defaultForCurrency: defaultForCurrency != null ? defaultForCurrency() : this.defaultForCurrency,
  fingerprint: fingerprint != null ? fingerprint() : this.fingerprint,
  futureRequirements: futureRequirements != null ? futureRequirements() : this.futureRequirements,
  id: id ?? this.id,
  last4: last4 ?? this.last4,
  metadata: metadata != null ? metadata() : this.metadata,
  object: object ?? this.object,
  requirements: requirements != null ? requirements() : this.requirements,
  routingNumber: routingNumber != null ? routingNumber() : this.routingNumber,
  status: status ?? this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BankAccount &&
          account == other.account &&
          accountHolderName == other.accountHolderName &&
          accountHolderType == other.accountHolderType &&
          accountType == other.accountType &&
          listEquals(availablePayoutMethods, other.availablePayoutMethods) &&
          bankName == other.bankName &&
          country == other.country &&
          currency == other.currency &&
          customer == other.customer &&
          defaultForCurrency == other.defaultForCurrency &&
          fingerprint == other.fingerprint &&
          futureRequirements == other.futureRequirements &&
          id == other.id &&
          last4 == other.last4 &&
          metadata == other.metadata &&
          object == other.object &&
          requirements == other.requirements &&
          routingNumber == other.routingNumber &&
          status == other.status; } 
@override int get hashCode { return Object.hash(account, accountHolderName, accountHolderType, accountType, Object.hashAll(availablePayoutMethods ?? const []), bankName, country, currency, customer, defaultForCurrency, fingerprint, futureRequirements, id, last4, metadata, object, requirements, routingNumber, status); } 
@override String toString() { return 'BankAccount(account: $account, accountHolderName: $accountHolderName, accountHolderType: $accountHolderType, accountType: $accountType, availablePayoutMethods: $availablePayoutMethods, bankName: $bankName, country: $country, currency: $currency, customer: $customer, defaultForCurrency: $defaultForCurrency, fingerprint: $fingerprint, futureRequirements: $futureRequirements, id: $id, last4: $last4, metadata: $metadata, object: $object, requirements: $requirements, routingNumber: $routingNumber, status: $status)'; } 
 }
