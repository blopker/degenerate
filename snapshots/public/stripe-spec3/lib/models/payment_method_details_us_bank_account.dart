// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mandate.dart';import 'payment_method_details_us_bank_account_mandate.dart';/// Account holder type: individual or company.
@immutable final class PaymentMethodDetailsUsBankAccountAccountHolderType {const PaymentMethodDetailsUsBankAccountAccountHolderType._(this.value);

factory PaymentMethodDetailsUsBankAccountAccountHolderType.fromJson(String json) { return switch (json) {
  'company' => company,
  'individual' => individual,
  _ => PaymentMethodDetailsUsBankAccountAccountHolderType._(json),
}; }

static const PaymentMethodDetailsUsBankAccountAccountHolderType company = PaymentMethodDetailsUsBankAccountAccountHolderType._('company');

static const PaymentMethodDetailsUsBankAccountAccountHolderType individual = PaymentMethodDetailsUsBankAccountAccountHolderType._('individual');

static const List<PaymentMethodDetailsUsBankAccountAccountHolderType> values = [company, individual];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodDetailsUsBankAccountAccountHolderType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodDetailsUsBankAccountAccountHolderType($value)'; } 
 }
/// Account type: checkings or savings. Defaults to checking if omitted.
@immutable final class PaymentMethodDetailsUsBankAccountAccountType {const PaymentMethodDetailsUsBankAccountAccountType._(this.value);

factory PaymentMethodDetailsUsBankAccountAccountType.fromJson(String json) { return switch (json) {
  'checking' => checking,
  'savings' => savings,
  _ => PaymentMethodDetailsUsBankAccountAccountType._(json),
}; }

static const PaymentMethodDetailsUsBankAccountAccountType checking = PaymentMethodDetailsUsBankAccountAccountType._('checking');

static const PaymentMethodDetailsUsBankAccountAccountType savings = PaymentMethodDetailsUsBankAccountAccountType._('savings');

static const List<PaymentMethodDetailsUsBankAccountAccountType> values = [checking, savings];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodDetailsUsBankAccountAccountType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodDetailsUsBankAccountAccountType($value)'; } 
 }
/// 
@immutable final class PaymentMethodDetailsUsBankAccount {const PaymentMethodDetailsUsBankAccount({this.accountHolderType = const Omittable.absent(), this.accountType = const Omittable.absent(), this.bankName = const Omittable.absent(), this.expectedDebitDate, this.fingerprint = const Omittable.absent(), this.last4 = const Omittable.absent(), this.mandate, this.paymentReference = const Omittable.absent(), this.routingNumber = const Omittable.absent(), });

factory PaymentMethodDetailsUsBankAccount.fromJson(Map<String, dynamic> json) { return PaymentMethodDetailsUsBankAccount(
  accountHolderType: json.containsKey('account_holder_type') ? Omittable(json['account_holder_type'] != null ? PaymentMethodDetailsUsBankAccountAccountHolderType.fromJson(json['account_holder_type'] as String) : null) : const Omittable.absent(),
  accountType: json.containsKey('account_type') ? Omittable(json['account_type'] != null ? PaymentMethodDetailsUsBankAccountAccountType.fromJson(json['account_type'] as String) : null) : const Omittable.absent(),
  bankName: json.containsKey('bank_name') ? Omittable(json['bank_name'] as String?) : const Omittable.absent(),
  expectedDebitDate: json['expected_debit_date'] as String?,
  fingerprint: json.containsKey('fingerprint') ? Omittable(json['fingerprint'] as String?) : const Omittable.absent(),
  last4: json.containsKey('last4') ? Omittable(json['last4'] as String?) : const Omittable.absent(),
  mandate: json['mandate'] != null ? OneOf2.parse(json['mandate'], fromA: (v) => v as String, fromB: (v) => Mandate.fromJson(v as Map<String, dynamic>),) : null,
  paymentReference: json.containsKey('payment_reference') ? Omittable(json['payment_reference'] as String?) : const Omittable.absent(),
  routingNumber: json.containsKey('routing_number') ? Omittable(json['routing_number'] as String?) : const Omittable.absent(),
); }

/// Account holder type: individual or company.
final Omittable<PaymentMethodDetailsUsBankAccountAccountHolderType?> accountHolderType;

/// Account type: checkings or savings. Defaults to checking if omitted.
final Omittable<PaymentMethodDetailsUsBankAccountAccountType?> accountType;

/// Name of the bank associated with the bank account.
final Omittable<String?> bankName;

/// Estimated date to debit the customer's bank account. A date string in YYYY-MM-DD format.
final String? expectedDebitDate;

/// Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
final Omittable<String?> fingerprint;

/// Last four digits of the bank account number.
final Omittable<String?> last4;

/// ID of the mandate used to make this payment.
final PaymentMethodDetailsUsBankAccountMandate? mandate;

/// Reference number to locate ACH payments with customer's bank.
final Omittable<String?> paymentReference;

/// Routing number of the bank account.
final Omittable<String?> routingNumber;

Map<String, dynamic> toJson() { return {
  if (accountHolderType.isPresent) 'account_holder_type': accountHolderType.value?.toJson(),
  if (accountType.isPresent) 'account_type': accountType.value?.toJson(),
  if (bankName.isPresent) 'bank_name': bankName.value,
  'expected_debit_date': ?expectedDebitDate,
  if (fingerprint.isPresent) 'fingerprint': fingerprint.value,
  if (last4.isPresent) 'last4': last4.value,
  if (mandate != null) 'mandate': mandate?.toJson(),
  if (paymentReference.isPresent) 'payment_reference': paymentReference.value,
  if (routingNumber.isPresent) 'routing_number': routingNumber.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account_holder_type', 'account_type', 'bank_name', 'expected_debit_date', 'fingerprint', 'last4', 'mandate', 'payment_reference', 'routing_number'}.contains(key)); } 
PaymentMethodDetailsUsBankAccount copyWith({Omittable<PaymentMethodDetailsUsBankAccountAccountHolderType?>? accountHolderType, Omittable<PaymentMethodDetailsUsBankAccountAccountType?>? accountType, Omittable<String?>? bankName, String? Function()? expectedDebitDate, Omittable<String?>? fingerprint, Omittable<String?>? last4, PaymentMethodDetailsUsBankAccountMandate? Function()? mandate, Omittable<String?>? paymentReference, Omittable<String?>? routingNumber, }) { return PaymentMethodDetailsUsBankAccount(
  accountHolderType: accountHolderType ?? this.accountHolderType,
  accountType: accountType ?? this.accountType,
  bankName: bankName ?? this.bankName,
  expectedDebitDate: expectedDebitDate != null ? expectedDebitDate() : this.expectedDebitDate,
  fingerprint: fingerprint ?? this.fingerprint,
  last4: last4 ?? this.last4,
  mandate: mandate != null ? mandate() : this.mandate,
  paymentReference: paymentReference ?? this.paymentReference,
  routingNumber: routingNumber ?? this.routingNumber,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodDetailsUsBankAccount &&
          accountHolderType == other.accountHolderType &&
          accountType == other.accountType &&
          bankName == other.bankName &&
          expectedDebitDate == other.expectedDebitDate &&
          fingerprint == other.fingerprint &&
          last4 == other.last4 &&
          mandate == other.mandate &&
          paymentReference == other.paymentReference &&
          routingNumber == other.routingNumber; } 
@override int get hashCode { return Object.hash(accountHolderType, accountType, bankName, expectedDebitDate, fingerprint, last4, mandate, paymentReference, routingNumber); } 
@override String toString() { return 'PaymentMethodDetailsUsBankAccount(accountHolderType: $accountHolderType, accountType: $accountType, bankName: $bankName, expectedDebitDate: $expectedDebitDate, fingerprint: $fingerprint, last4: $last4, mandate: $mandate, paymentReference: $paymentReference, routingNumber: $routingNumber)'; } 
 }
