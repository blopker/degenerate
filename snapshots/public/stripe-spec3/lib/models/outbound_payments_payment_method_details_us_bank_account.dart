// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mandate.dart';import 'outbound_payments_payment_method_details_us_bank_account_mandate.dart';/// Account holder type: individual or company.
@immutable final class OutboundPaymentsPaymentMethodDetailsUsBankAccountAccountHolderType {const OutboundPaymentsPaymentMethodDetailsUsBankAccountAccountHolderType._(this.value);

factory OutboundPaymentsPaymentMethodDetailsUsBankAccountAccountHolderType.fromJson(String json) { return switch (json) {
  'company' => company,
  'individual' => individual,
  _ => OutboundPaymentsPaymentMethodDetailsUsBankAccountAccountHolderType._(json),
}; }

static const OutboundPaymentsPaymentMethodDetailsUsBankAccountAccountHolderType company = OutboundPaymentsPaymentMethodDetailsUsBankAccountAccountHolderType._('company');

static const OutboundPaymentsPaymentMethodDetailsUsBankAccountAccountHolderType individual = OutboundPaymentsPaymentMethodDetailsUsBankAccountAccountHolderType._('individual');

static const List<OutboundPaymentsPaymentMethodDetailsUsBankAccountAccountHolderType> values = [company, individual];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OutboundPaymentsPaymentMethodDetailsUsBankAccountAccountHolderType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'OutboundPaymentsPaymentMethodDetailsUsBankAccountAccountHolderType($value)'; } 
 }
/// Account type: checkings or savings. Defaults to checking if omitted.
@immutable final class OutboundPaymentsPaymentMethodDetailsUsBankAccountAccountType {const OutboundPaymentsPaymentMethodDetailsUsBankAccountAccountType._(this.value);

factory OutboundPaymentsPaymentMethodDetailsUsBankAccountAccountType.fromJson(String json) { return switch (json) {
  'checking' => checking,
  'savings' => savings,
  _ => OutboundPaymentsPaymentMethodDetailsUsBankAccountAccountType._(json),
}; }

static const OutboundPaymentsPaymentMethodDetailsUsBankAccountAccountType checking = OutboundPaymentsPaymentMethodDetailsUsBankAccountAccountType._('checking');

static const OutboundPaymentsPaymentMethodDetailsUsBankAccountAccountType savings = OutboundPaymentsPaymentMethodDetailsUsBankAccountAccountType._('savings');

static const List<OutboundPaymentsPaymentMethodDetailsUsBankAccountAccountType> values = [checking, savings];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OutboundPaymentsPaymentMethodDetailsUsBankAccountAccountType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'OutboundPaymentsPaymentMethodDetailsUsBankAccountAccountType($value)'; } 
 }
/// The network rails used. See the [docs](https://docs.stripe.com/treasury/money-movement/timelines) to learn more about money movement timelines for each network type.
@immutable final class OutboundPaymentsPaymentMethodDetailsUsBankAccountNetwork {const OutboundPaymentsPaymentMethodDetailsUsBankAccountNetwork._(this.value);

factory OutboundPaymentsPaymentMethodDetailsUsBankAccountNetwork.fromJson(String json) { return switch (json) {
  'ach' => ach,
  'us_domestic_wire' => usDomesticWire,
  _ => OutboundPaymentsPaymentMethodDetailsUsBankAccountNetwork._(json),
}; }

static const OutboundPaymentsPaymentMethodDetailsUsBankAccountNetwork ach = OutboundPaymentsPaymentMethodDetailsUsBankAccountNetwork._('ach');

static const OutboundPaymentsPaymentMethodDetailsUsBankAccountNetwork usDomesticWire = OutboundPaymentsPaymentMethodDetailsUsBankAccountNetwork._('us_domestic_wire');

static const List<OutboundPaymentsPaymentMethodDetailsUsBankAccountNetwork> values = [ach, usDomesticWire];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OutboundPaymentsPaymentMethodDetailsUsBankAccountNetwork && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'OutboundPaymentsPaymentMethodDetailsUsBankAccountNetwork($value)'; } 
 }
/// 
@immutable final class OutboundPaymentsPaymentMethodDetailsUsBankAccount {const OutboundPaymentsPaymentMethodDetailsUsBankAccount({required this.network, this.accountHolderType = const Omittable.absent(), this.accountType = const Omittable.absent(), this.bankName = const Omittable.absent(), this.fingerprint = const Omittable.absent(), this.last4 = const Omittable.absent(), this.mandate, this.routingNumber = const Omittable.absent(), });

factory OutboundPaymentsPaymentMethodDetailsUsBankAccount.fromJson(Map<String, dynamic> json) { return OutboundPaymentsPaymentMethodDetailsUsBankAccount(
  accountHolderType: json.containsKey('account_holder_type') ? Omittable(json['account_holder_type'] != null ? OutboundPaymentsPaymentMethodDetailsUsBankAccountAccountHolderType.fromJson(json['account_holder_type'] as String) : null) : const Omittable.absent(),
  accountType: json.containsKey('account_type') ? Omittable(json['account_type'] != null ? OutboundPaymentsPaymentMethodDetailsUsBankAccountAccountType.fromJson(json['account_type'] as String) : null) : const Omittable.absent(),
  bankName: json.containsKey('bank_name') ? Omittable(json['bank_name'] as String?) : const Omittable.absent(),
  fingerprint: json.containsKey('fingerprint') ? Omittable(json['fingerprint'] as String?) : const Omittable.absent(),
  last4: json.containsKey('last4') ? Omittable(json['last4'] as String?) : const Omittable.absent(),
  mandate: json['mandate'] != null ? OneOf2.parse(json['mandate'], fromA: (v) => v as String, fromB: (v) => Mandate.fromJson(v as Map<String, dynamic>),) : null,
  network: OutboundPaymentsPaymentMethodDetailsUsBankAccountNetwork.fromJson(json['network'] as String),
  routingNumber: json.containsKey('routing_number') ? Omittable(json['routing_number'] as String?) : const Omittable.absent(),
); }

/// Account holder type: individual or company.
final Omittable<OutboundPaymentsPaymentMethodDetailsUsBankAccountAccountHolderType?> accountHolderType;

/// Account type: checkings or savings. Defaults to checking if omitted.
final Omittable<OutboundPaymentsPaymentMethodDetailsUsBankAccountAccountType?> accountType;

/// Name of the bank associated with the bank account.
final Omittable<String?> bankName;

/// Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
final Omittable<String?> fingerprint;

/// Last four digits of the bank account number.
final Omittable<String?> last4;

/// ID of the mandate used to make this payment.
final OutboundPaymentsPaymentMethodDetailsUsBankAccountMandate? mandate;

/// The network rails used. See the [docs](https://docs.stripe.com/treasury/money-movement/timelines) to learn more about money movement timelines for each network type.
final OutboundPaymentsPaymentMethodDetailsUsBankAccountNetwork network;

/// Routing number of the bank account.
final Omittable<String?> routingNumber;

Map<String, dynamic> toJson() { return {
  if (accountHolderType.isPresent) 'account_holder_type': accountHolderType.value?.toJson(),
  if (accountType.isPresent) 'account_type': accountType.value?.toJson(),
  if (bankName.isPresent) 'bank_name': bankName.value,
  if (fingerprint.isPresent) 'fingerprint': fingerprint.value,
  if (last4.isPresent) 'last4': last4.value,
  if (mandate != null) 'mandate': mandate?.toJson(),
  'network': network.toJson(),
  if (routingNumber.isPresent) 'routing_number': routingNumber.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('network'); } 
OutboundPaymentsPaymentMethodDetailsUsBankAccount copyWith({Omittable<OutboundPaymentsPaymentMethodDetailsUsBankAccountAccountHolderType?>? accountHolderType, Omittable<OutboundPaymentsPaymentMethodDetailsUsBankAccountAccountType?>? accountType, Omittable<String?>? bankName, Omittable<String?>? fingerprint, Omittable<String?>? last4, OutboundPaymentsPaymentMethodDetailsUsBankAccountMandate? Function()? mandate, OutboundPaymentsPaymentMethodDetailsUsBankAccountNetwork? network, Omittable<String?>? routingNumber, }) { return OutboundPaymentsPaymentMethodDetailsUsBankAccount(
  accountHolderType: accountHolderType ?? this.accountHolderType,
  accountType: accountType ?? this.accountType,
  bankName: bankName ?? this.bankName,
  fingerprint: fingerprint ?? this.fingerprint,
  last4: last4 ?? this.last4,
  mandate: mandate != null ? mandate() : this.mandate,
  network: network ?? this.network,
  routingNumber: routingNumber ?? this.routingNumber,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is OutboundPaymentsPaymentMethodDetailsUsBankAccount &&
          accountHolderType == other.accountHolderType &&
          accountType == other.accountType &&
          bankName == other.bankName &&
          fingerprint == other.fingerprint &&
          last4 == other.last4 &&
          mandate == other.mandate &&
          network == other.network &&
          routingNumber == other.routingNumber; } 
@override int get hashCode { return Object.hash(accountHolderType, accountType, bankName, fingerprint, last4, mandate, network, routingNumber); } 
@override String toString() { return 'OutboundPaymentsPaymentMethodDetailsUsBankAccount(accountHolderType: $accountHolderType, accountType: $accountType, bankName: $bankName, fingerprint: $fingerprint, last4: $last4, mandate: $mandate, network: $network, routingNumber: $routingNumber)'; } 
 }
