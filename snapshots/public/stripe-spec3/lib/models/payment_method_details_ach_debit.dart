// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Type of entity that holds the account. This can be either `individual` or `company`.
@immutable final class PaymentMethodDetailsAchDebitAccountHolderType {const PaymentMethodDetailsAchDebitAccountHolderType._(this.value);

factory PaymentMethodDetailsAchDebitAccountHolderType.fromJson(String json) { return switch (json) {
  'company' => company,
  'individual' => individual,
  _ => PaymentMethodDetailsAchDebitAccountHolderType._(json),
}; }

static const PaymentMethodDetailsAchDebitAccountHolderType company = PaymentMethodDetailsAchDebitAccountHolderType._('company');

static const PaymentMethodDetailsAchDebitAccountHolderType individual = PaymentMethodDetailsAchDebitAccountHolderType._('individual');

static const List<PaymentMethodDetailsAchDebitAccountHolderType> values = [company, individual];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodDetailsAchDebitAccountHolderType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodDetailsAchDebitAccountHolderType($value)'; } 
 }
/// 
@immutable final class PaymentMethodDetailsAchDebit {const PaymentMethodDetailsAchDebit({this.accountHolderType = const Omittable.absent(), this.bankName = const Omittable.absent(), this.country = const Omittable.absent(), this.fingerprint = const Omittable.absent(), this.last4 = const Omittable.absent(), this.routingNumber = const Omittable.absent(), });

factory PaymentMethodDetailsAchDebit.fromJson(Map<String, dynamic> json) { return PaymentMethodDetailsAchDebit(
  accountHolderType: json.containsKey('account_holder_type') ? Omittable(json['account_holder_type'] != null ? PaymentMethodDetailsAchDebitAccountHolderType.fromJson(json['account_holder_type'] as String) : null) : const Omittable.absent(),
  bankName: json.containsKey('bank_name') ? Omittable(json['bank_name'] as String?) : const Omittable.absent(),
  country: json.containsKey('country') ? Omittable(json['country'] as String?) : const Omittable.absent(),
  fingerprint: json.containsKey('fingerprint') ? Omittable(json['fingerprint'] as String?) : const Omittable.absent(),
  last4: json.containsKey('last4') ? Omittable(json['last4'] as String?) : const Omittable.absent(),
  routingNumber: json.containsKey('routing_number') ? Omittable(json['routing_number'] as String?) : const Omittable.absent(),
); }

/// Type of entity that holds the account. This can be either `individual` or `company`.
final Omittable<PaymentMethodDetailsAchDebitAccountHolderType?> accountHolderType;

/// Name of the bank associated with the bank account.
final Omittable<String?> bankName;

/// Two-letter ISO code representing the country the bank account is located in.
final Omittable<String?> country;

/// Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
final Omittable<String?> fingerprint;

/// Last four digits of the bank account number.
final Omittable<String?> last4;

/// Routing transit number of the bank account.
final Omittable<String?> routingNumber;

Map<String, dynamic> toJson() { return {
  if (accountHolderType.isPresent) 'account_holder_type': accountHolderType.value?.toJson(),
  if (bankName.isPresent) 'bank_name': bankName.value,
  if (country.isPresent) 'country': country.value,
  if (fingerprint.isPresent) 'fingerprint': fingerprint.value,
  if (last4.isPresent) 'last4': last4.value,
  if (routingNumber.isPresent) 'routing_number': routingNumber.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account_holder_type', 'bank_name', 'country', 'fingerprint', 'last4', 'routing_number'}.contains(key)); } 
PaymentMethodDetailsAchDebit copyWith({Omittable<PaymentMethodDetailsAchDebitAccountHolderType?>? accountHolderType, Omittable<String?>? bankName, Omittable<String?>? country, Omittable<String?>? fingerprint, Omittable<String?>? last4, Omittable<String?>? routingNumber, }) { return PaymentMethodDetailsAchDebit(
  accountHolderType: accountHolderType ?? this.accountHolderType,
  bankName: bankName ?? this.bankName,
  country: country ?? this.country,
  fingerprint: fingerprint ?? this.fingerprint,
  last4: last4 ?? this.last4,
  routingNumber: routingNumber ?? this.routingNumber,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodDetailsAchDebit &&
          accountHolderType == other.accountHolderType &&
          bankName == other.bankName &&
          country == other.country &&
          fingerprint == other.fingerprint &&
          last4 == other.last4 &&
          routingNumber == other.routingNumber; } 
@override int get hashCode { return Object.hash(accountHolderType, bankName, country, fingerprint, last4, routingNumber); } 
@override String toString() { return 'PaymentMethodDetailsAchDebit(accountHolderType: $accountHolderType, bankName: $bankName, country: $country, fingerprint: $fingerprint, last4: $last4, routingNumber: $routingNumber)'; } 
 }
