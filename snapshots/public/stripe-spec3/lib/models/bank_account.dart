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
@immutable final class BankAccount {const BankAccount({required this.country, required this.currency, required this.id, required this.last4, required this.object, required this.status, this.account = const Omittable.absent(), this.accountHolderName = const Omittable.absent(), this.accountHolderType = const Omittable.absent(), this.accountType = const Omittable.absent(), this.availablePayoutMethods = const Omittable.absent(), this.bankName = const Omittable.absent(), this.customer = const Omittable.absent(), this.defaultForCurrency = const Omittable.absent(), this.fingerprint = const Omittable.absent(), this.futureRequirements = const Omittable.absent(), this.metadata = const Omittable.absent(), this.requirements = const Omittable.absent(), this.routingNumber = const Omittable.absent(), });

factory BankAccount.fromJson(Map<String, dynamic> json) { return BankAccount(
  account: json.containsKey('account') ? Omittable(json['account'] != null ? OneOf2.parse(json['account'], fromA: (v) => v as String, fromB: (v) => Account.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  accountHolderName: json.containsKey('account_holder_name') ? Omittable(json['account_holder_name'] as String?) : const Omittable.absent(),
  accountHolderType: json.containsKey('account_holder_type') ? Omittable(json['account_holder_type'] as String?) : const Omittable.absent(),
  accountType: json.containsKey('account_type') ? Omittable(json['account_type'] as String?) : const Omittable.absent(),
  availablePayoutMethods: json.containsKey('available_payout_methods') ? Omittable((json['available_payout_methods'] as List<dynamic>?)?.map((e) => BankAccountAvailablePayoutMethods.fromJson(e as String)).toList()) : const Omittable.absent(),
  bankName: json.containsKey('bank_name') ? Omittable(json['bank_name'] as String?) : const Omittable.absent(),
  country: json['country'] as String,
  currency: json['currency'] as String,
  customer: json.containsKey('customer') ? Omittable(json['customer'] != null ? OneOf3.parse(json['customer'], fromA: (v) => v as String, fromB: (v) => Customer.fromJson(v as Map<String, dynamic>), fromC: (v) => DeletedCustomer.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  defaultForCurrency: json.containsKey('default_for_currency') ? Omittable(json['default_for_currency'] as bool?) : const Omittable.absent(),
  fingerprint: json.containsKey('fingerprint') ? Omittable(json['fingerprint'] as String?) : const Omittable.absent(),
  futureRequirements: json.containsKey('future_requirements') ? Omittable(json['future_requirements'] != null ? ExternalAccountRequirements.fromJson(json['future_requirements'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  id: json['id'] as String,
  last4: json['last4'] as String,
  metadata: json.containsKey('metadata') ? Omittable((json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String))) : const Omittable.absent(),
  object: BankAccountObject.fromJson(json['object'] as String),
  requirements: json.containsKey('requirements') ? Omittable(json['requirements'] != null ? ExternalAccountRequirements.fromJson(json['requirements'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  routingNumber: json.containsKey('routing_number') ? Omittable(json['routing_number'] as String?) : const Omittable.absent(),
  status: json['status'] as String,
); }

/// The account this bank account belongs to. Only applicable on Accounts (not customers or recipients) This property is only available when returned as an [External Account](/api/external_account_bank_accounts/object) where [controller.is_controller](/api/accounts/object#account_object-controller-is_controller) is `true`.
final Omittable<BankAccountAccount?> account;

/// The name of the person or business that owns the bank account.
final Omittable<String?> accountHolderName;

/// The type of entity that holds the account. This can be either `individual` or `company`.
final Omittable<String?> accountHolderType;

/// The bank account type. This can only be `checking` or `savings` in most countries. In Japan, this can only be `futsu` or `toza`.
final Omittable<String?> accountType;

/// A set of available payout methods for this bank account. Only values from this set should be passed as the `method` when creating a payout.
final Omittable<List<BankAccountAvailablePayoutMethods>?> availablePayoutMethods;

/// Name of the bank associated with the routing number (e.g., `WELLS FARGO`).
final Omittable<String?> bankName;

/// Two-letter ISO code representing the country the bank account is located in.
final String country;

/// Three-letter [ISO code for the currency](https://stripe.com/docs/payouts) paid out to the bank account.
final String currency;

/// The ID of the customer that the bank account is associated with.
final Omittable<BankAccountCustomer?> customer;

/// Whether this bank account is the default external account for its currency.
final Omittable<bool?> defaultForCurrency;

/// Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
final Omittable<String?> fingerprint;

/// Information about the [upcoming new requirements for the bank account](https://docs.stripe.com/connect/custom-accounts/future-requirements), including what information needs to be collected, and by when.
final Omittable<ExternalAccountRequirements?> futureRequirements;

/// Unique identifier for the object.
final String id;

/// The last four digits of the bank account number.
final String last4;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
final Omittable<Map<String,String>?> metadata;

/// String representing the object's type. Objects of the same type share the same value.
final BankAccountObject object;

/// Information about the requirements for the bank account, including what information needs to be collected.
final Omittable<ExternalAccountRequirements?> requirements;

/// The routing transit number for the bank account.
final Omittable<String?> routingNumber;

/// For bank accounts, possible values are `new`, `validated`, `verified`, `verification_failed`, `tokenized_account_number_deactivated` or `errored`. A bank account that hasn't had any activity or validation performed is `new`. If Stripe can determine that the bank account exists, its status will be `validated`. Note that there often isn’t enough information to know (e.g., for smaller credit unions), and the validation is not always run. If customer bank account verification has succeeded, the bank account status will be `verified`. If the verification failed for any reason, such as microdeposit failure, the status will be `verification_failed`. If the status is `tokenized_account_number_deactivated`, the account utilizes a tokenized account number which has been deactivated due to expiration or revocation. This account will need to be reverified to continue using it for money movement. If a payout sent to this bank account fails, we'll set the status to `errored` and will not continue to send [scheduled payouts](https://stripe.com/docs/payouts#payout-schedule) until the bank details are updated.
/// 
/// For external accounts, possible values are `new`, `errored`, `verification_failed`, and `tokenized_account_number_deactivated`. If a payout fails, the status is set to `errored` and scheduled payouts are stopped until account details are updated. In the US and India, if we can't [verify the owner of the bank account](https://support.stripe.com/questions/bank-account-ownership-verification), we'll set the status to `verification_failed`. Other validations aren't run against external accounts because they're only used for payouts. This means the other statuses don't apply.
final String status;

Map<String, dynamic> toJson() { return {
  if (account.isPresent) 'account': account.value?.toJson(),
  if (accountHolderName.isPresent) 'account_holder_name': accountHolderName.value,
  if (accountHolderType.isPresent) 'account_holder_type': accountHolderType.value,
  if (accountType.isPresent) 'account_type': accountType.value,
  if (availablePayoutMethods.isPresent) 'available_payout_methods': availablePayoutMethods.value?.map((e) => e.toJson()).toList(),
  if (bankName.isPresent) 'bank_name': bankName.value,
  'country': country,
  'currency': currency,
  if (customer.isPresent) 'customer': customer.value?.toJson(),
  if (defaultForCurrency.isPresent) 'default_for_currency': defaultForCurrency.value,
  if (fingerprint.isPresent) 'fingerprint': fingerprint.value,
  if (futureRequirements.isPresent) 'future_requirements': futureRequirements.value?.toJson(),
  'id': id,
  'last4': last4,
  if (metadata.isPresent) 'metadata': metadata.value,
  'object': object.toJson(),
  if (requirements.isPresent) 'requirements': requirements.value?.toJson(),
  if (routingNumber.isPresent) 'routing_number': routingNumber.value,
  'status': status,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('country') && json['country'] is String &&
      json.containsKey('currency') && json['currency'] is String &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('last4') && json['last4'] is String &&
      json.containsKey('object') &&
      json.containsKey('status') && json['status'] is String; } 
BankAccount copyWith({Omittable<BankAccountAccount?>? account, Omittable<String?>? accountHolderName, Omittable<String?>? accountHolderType, Omittable<String?>? accountType, Omittable<List<BankAccountAvailablePayoutMethods>?>? availablePayoutMethods, Omittable<String?>? bankName, String? country, String? currency, Omittable<BankAccountCustomer?>? customer, Omittable<bool?>? defaultForCurrency, Omittable<String?>? fingerprint, Omittable<ExternalAccountRequirements?>? futureRequirements, String? id, String? last4, Omittable<Map<String,String>?>? metadata, BankAccountObject? object, Omittable<ExternalAccountRequirements?>? requirements, Omittable<String?>? routingNumber, String? status, }) { return BankAccount(
  account: account ?? this.account,
  accountHolderName: accountHolderName ?? this.accountHolderName,
  accountHolderType: accountHolderType ?? this.accountHolderType,
  accountType: accountType ?? this.accountType,
  availablePayoutMethods: availablePayoutMethods ?? this.availablePayoutMethods,
  bankName: bankName ?? this.bankName,
  country: country ?? this.country,
  currency: currency ?? this.currency,
  customer: customer ?? this.customer,
  defaultForCurrency: defaultForCurrency ?? this.defaultForCurrency,
  fingerprint: fingerprint ?? this.fingerprint,
  futureRequirements: futureRequirements ?? this.futureRequirements,
  id: id ?? this.id,
  last4: last4 ?? this.last4,
  metadata: metadata ?? this.metadata,
  object: object ?? this.object,
  requirements: requirements ?? this.requirements,
  routingNumber: routingNumber ?? this.routingNumber,
  status: status ?? this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BankAccount &&
          account == other.account &&
          accountHolderName == other.accountHolderName &&
          accountHolderType == other.accountHolderType &&
          accountType == other.accountType &&
          availablePayoutMethods.isPresent == other.availablePayoutMethods.isPresent &&
          listEquals(availablePayoutMethods.value, other.availablePayoutMethods.value) &&
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
@override int get hashCode { return Object.hash(account, accountHolderName, accountHolderType, accountType, Object.hashAll(availablePayoutMethods.value ?? const []), bankName, country, currency, customer, defaultForCurrency, fingerprint, futureRequirements, id, last4, metadata, object, requirements, routingNumber, status); } 
@override String toString() { return 'BankAccount(account: $account, accountHolderName: $accountHolderName, accountHolderType: $accountHolderType, accountType: $accountType, availablePayoutMethods: $availablePayoutMethods, bankName: $bankName, country: $country, currency: $currency, customer: $customer, defaultForCurrency: $defaultForCurrency, fingerprint: $fingerprint, futureRequirements: $futureRequirements, id: $id, last4: $last4, metadata: $metadata, object: $object, requirements: $requirements, routingNumber: $routingNumber, status: $status)'; } 
 }
