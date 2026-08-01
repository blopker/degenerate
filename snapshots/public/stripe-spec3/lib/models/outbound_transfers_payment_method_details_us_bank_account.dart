// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mandate.dart';import 'outbound_transfers_payment_method_details_us_bank_account_mandate.dart';/// Account holder type: individual or company.
@immutable final class OutboundTransfersPaymentMethodDetailsUsBankAccountAccountHolderType {const OutboundTransfersPaymentMethodDetailsUsBankAccountAccountHolderType._(this.value);

factory OutboundTransfersPaymentMethodDetailsUsBankAccountAccountHolderType.fromJson(String json) { return switch (json) {
  'company' => company,
  'individual' => individual,
  _ => OutboundTransfersPaymentMethodDetailsUsBankAccountAccountHolderType._(json),
}; }

static const OutboundTransfersPaymentMethodDetailsUsBankAccountAccountHolderType company = OutboundTransfersPaymentMethodDetailsUsBankAccountAccountHolderType._('company');

static const OutboundTransfersPaymentMethodDetailsUsBankAccountAccountHolderType individual = OutboundTransfersPaymentMethodDetailsUsBankAccountAccountHolderType._('individual');

static const List<OutboundTransfersPaymentMethodDetailsUsBankAccountAccountHolderType> values = [company, individual];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OutboundTransfersPaymentMethodDetailsUsBankAccountAccountHolderType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'OutboundTransfersPaymentMethodDetailsUsBankAccountAccountHolderType($value)'; } 
 }
/// Account type: checkings or savings. Defaults to checking if omitted.
@immutable final class OutboundTransfersPaymentMethodDetailsUsBankAccountAccountType {const OutboundTransfersPaymentMethodDetailsUsBankAccountAccountType._(this.value);

factory OutboundTransfersPaymentMethodDetailsUsBankAccountAccountType.fromJson(String json) { return switch (json) {
  'checking' => checking,
  'savings' => savings,
  _ => OutboundTransfersPaymentMethodDetailsUsBankAccountAccountType._(json),
}; }

static const OutboundTransfersPaymentMethodDetailsUsBankAccountAccountType checking = OutboundTransfersPaymentMethodDetailsUsBankAccountAccountType._('checking');

static const OutboundTransfersPaymentMethodDetailsUsBankAccountAccountType savings = OutboundTransfersPaymentMethodDetailsUsBankAccountAccountType._('savings');

static const List<OutboundTransfersPaymentMethodDetailsUsBankAccountAccountType> values = [checking, savings];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OutboundTransfersPaymentMethodDetailsUsBankAccountAccountType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'OutboundTransfersPaymentMethodDetailsUsBankAccountAccountType($value)'; } 
 }
/// The network rails used. See the [docs](https://docs.stripe.com/treasury/money-movement/timelines) to learn more about money movement timelines for each network type.
@immutable final class OutboundTransfersPaymentMethodDetailsUsBankAccountNetwork {const OutboundTransfersPaymentMethodDetailsUsBankAccountNetwork._(this.value);

factory OutboundTransfersPaymentMethodDetailsUsBankAccountNetwork.fromJson(String json) { return switch (json) {
  'ach' => ach,
  'us_domestic_wire' => usDomesticWire,
  _ => OutboundTransfersPaymentMethodDetailsUsBankAccountNetwork._(json),
}; }

static const OutboundTransfersPaymentMethodDetailsUsBankAccountNetwork ach = OutboundTransfersPaymentMethodDetailsUsBankAccountNetwork._('ach');

static const OutboundTransfersPaymentMethodDetailsUsBankAccountNetwork usDomesticWire = OutboundTransfersPaymentMethodDetailsUsBankAccountNetwork._('us_domestic_wire');

static const List<OutboundTransfersPaymentMethodDetailsUsBankAccountNetwork> values = [ach, usDomesticWire];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OutboundTransfersPaymentMethodDetailsUsBankAccountNetwork && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'OutboundTransfersPaymentMethodDetailsUsBankAccountNetwork($value)'; } 
 }
/// 
@immutable final class OutboundTransfersPaymentMethodDetailsUsBankAccount {const OutboundTransfersPaymentMethodDetailsUsBankAccount({required this.network, this.accountHolderType = const Omittable.absent(), this.accountType = const Omittable.absent(), this.bankName = const Omittable.absent(), this.fingerprint = const Omittable.absent(), this.last4 = const Omittable.absent(), this.mandate, this.routingNumber = const Omittable.absent(), });

factory OutboundTransfersPaymentMethodDetailsUsBankAccount.fromJson(Map<String, dynamic> json) { return OutboundTransfersPaymentMethodDetailsUsBankAccount(
  accountHolderType: json.containsKey('account_holder_type') ? Omittable(json['account_holder_type'] != null ? OutboundTransfersPaymentMethodDetailsUsBankAccountAccountHolderType.fromJson(json['account_holder_type'] as String) : null) : const Omittable.absent(),
  accountType: json.containsKey('account_type') ? Omittable(json['account_type'] != null ? OutboundTransfersPaymentMethodDetailsUsBankAccountAccountType.fromJson(json['account_type'] as String) : null) : const Omittable.absent(),
  bankName: json.containsKey('bank_name') ? Omittable(json['bank_name'] as String?) : const Omittable.absent(),
  fingerprint: json.containsKey('fingerprint') ? Omittable(json['fingerprint'] as String?) : const Omittable.absent(),
  last4: json.containsKey('last4') ? Omittable(json['last4'] as String?) : const Omittable.absent(),
  mandate: json['mandate'] != null ? OneOf2.parse(json['mandate'], fromA: (v) => v as String, fromB: (v) => Mandate.fromJson(v as Map<String, dynamic>),) : null,
  network: OutboundTransfersPaymentMethodDetailsUsBankAccountNetwork.fromJson(json['network'] as String),
  routingNumber: json.containsKey('routing_number') ? Omittable(json['routing_number'] as String?) : const Omittable.absent(),
); }

/// Account holder type: individual or company.
final Omittable<OutboundTransfersPaymentMethodDetailsUsBankAccountAccountHolderType?> accountHolderType;

/// Account type: checkings or savings. Defaults to checking if omitted.
final Omittable<OutboundTransfersPaymentMethodDetailsUsBankAccountAccountType?> accountType;

/// Name of the bank associated with the bank account.
final Omittable<String?> bankName;

/// Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
final Omittable<String?> fingerprint;

/// Last four digits of the bank account number.
final Omittable<String?> last4;

/// ID of the mandate used to make this payment.
final OutboundTransfersPaymentMethodDetailsUsBankAccountMandate? mandate;

/// The network rails used. See the [docs](https://docs.stripe.com/treasury/money-movement/timelines) to learn more about money movement timelines for each network type.
final OutboundTransfersPaymentMethodDetailsUsBankAccountNetwork network;

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
OutboundTransfersPaymentMethodDetailsUsBankAccount copyWith({Omittable<OutboundTransfersPaymentMethodDetailsUsBankAccountAccountHolderType?>? accountHolderType, Omittable<OutboundTransfersPaymentMethodDetailsUsBankAccountAccountType?>? accountType, Omittable<String?>? bankName, Omittable<String?>? fingerprint, Omittable<String?>? last4, OutboundTransfersPaymentMethodDetailsUsBankAccountMandate? Function()? mandate, OutboundTransfersPaymentMethodDetailsUsBankAccountNetwork? network, Omittable<String?>? routingNumber, }) { return OutboundTransfersPaymentMethodDetailsUsBankAccount(
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
      other is OutboundTransfersPaymentMethodDetailsUsBankAccount &&
          accountHolderType == other.accountHolderType &&
          accountType == other.accountType &&
          bankName == other.bankName &&
          fingerprint == other.fingerprint &&
          last4 == other.last4 &&
          mandate == other.mandate &&
          network == other.network &&
          routingNumber == other.routingNumber; } 
@override int get hashCode { return Object.hash(accountHolderType, accountType, bankName, fingerprint, last4, mandate, network, routingNumber); } 
@override String toString() { return 'OutboundTransfersPaymentMethodDetailsUsBankAccount(accountHolderType: $accountHolderType, accountType: $accountType, bankName: $bankName, fingerprint: $fingerprint, last4: $last4, mandate: $mandate, network: $network, routingNumber: $routingNumber)'; } 
 }
