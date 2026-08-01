// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mandate.dart';import 'payment_method_details_payment_record_us_bank_account_mandate.dart';/// The type of entity that holds the account. This can be either 'individual' or 'company'.
@immutable final class PaymentMethodDetailsPaymentRecordUsBankAccountAccountHolderType {const PaymentMethodDetailsPaymentRecordUsBankAccountAccountHolderType._(this.value);

factory PaymentMethodDetailsPaymentRecordUsBankAccountAccountHolderType.fromJson(String json) { return switch (json) {
  'company' => company,
  'individual' => individual,
  _ => PaymentMethodDetailsPaymentRecordUsBankAccountAccountHolderType._(json),
}; }

static const PaymentMethodDetailsPaymentRecordUsBankAccountAccountHolderType company = PaymentMethodDetailsPaymentRecordUsBankAccountAccountHolderType._('company');

static const PaymentMethodDetailsPaymentRecordUsBankAccountAccountHolderType individual = PaymentMethodDetailsPaymentRecordUsBankAccountAccountHolderType._('individual');

static const List<PaymentMethodDetailsPaymentRecordUsBankAccountAccountHolderType> values = [company, individual];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodDetailsPaymentRecordUsBankAccountAccountHolderType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodDetailsPaymentRecordUsBankAccountAccountHolderType($value)'; } 
 }
/// The type of the bank account. This can be either 'checking' or 'savings'.
@immutable final class PaymentMethodDetailsPaymentRecordUsBankAccountAccountType {const PaymentMethodDetailsPaymentRecordUsBankAccountAccountType._(this.value);

factory PaymentMethodDetailsPaymentRecordUsBankAccountAccountType.fromJson(String json) { return switch (json) {
  'checking' => checking,
  'savings' => savings,
  _ => PaymentMethodDetailsPaymentRecordUsBankAccountAccountType._(json),
}; }

static const PaymentMethodDetailsPaymentRecordUsBankAccountAccountType checking = PaymentMethodDetailsPaymentRecordUsBankAccountAccountType._('checking');

static const PaymentMethodDetailsPaymentRecordUsBankAccountAccountType savings = PaymentMethodDetailsPaymentRecordUsBankAccountAccountType._('savings');

static const List<PaymentMethodDetailsPaymentRecordUsBankAccountAccountType> values = [checking, savings];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodDetailsPaymentRecordUsBankAccountAccountType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodDetailsPaymentRecordUsBankAccountAccountType($value)'; } 
 }
/// 
@immutable final class PaymentMethodDetailsPaymentRecordUsBankAccount {const PaymentMethodDetailsPaymentRecordUsBankAccount({this.accountHolderType = const Omittable.absent(), this.accountType = const Omittable.absent(), this.bankName = const Omittable.absent(), this.expectedDebitDate, this.fingerprint = const Omittable.absent(), this.last4 = const Omittable.absent(), this.mandate, this.paymentReference = const Omittable.absent(), this.routingNumber = const Omittable.absent(), });

factory PaymentMethodDetailsPaymentRecordUsBankAccount.fromJson(Map<String, dynamic> json) { return PaymentMethodDetailsPaymentRecordUsBankAccount(
  accountHolderType: json.containsKey('account_holder_type') ? Omittable(json['account_holder_type'] != null ? PaymentMethodDetailsPaymentRecordUsBankAccountAccountHolderType.fromJson(json['account_holder_type'] as String) : null) : const Omittable.absent(),
  accountType: json.containsKey('account_type') ? Omittable(json['account_type'] != null ? PaymentMethodDetailsPaymentRecordUsBankAccountAccountType.fromJson(json['account_type'] as String) : null) : const Omittable.absent(),
  bankName: json.containsKey('bank_name') ? Omittable(json['bank_name'] as String?) : const Omittable.absent(),
  expectedDebitDate: json['expected_debit_date'] as String?,
  fingerprint: json.containsKey('fingerprint') ? Omittable(json['fingerprint'] as String?) : const Omittable.absent(),
  last4: json.containsKey('last4') ? Omittable(json['last4'] as String?) : const Omittable.absent(),
  mandate: json['mandate'] != null ? OneOf2.parse(json['mandate'], fromA: (v) => v as String, fromB: (v) => Mandate.fromJson(v as Map<String, dynamic>),) : null,
  paymentReference: json.containsKey('payment_reference') ? Omittable(json['payment_reference'] as String?) : const Omittable.absent(),
  routingNumber: json.containsKey('routing_number') ? Omittable(json['routing_number'] as String?) : const Omittable.absent(),
); }

/// The type of entity that holds the account. This can be either 'individual' or 'company'.
final Omittable<PaymentMethodDetailsPaymentRecordUsBankAccountAccountHolderType?> accountHolderType;

/// The type of the bank account. This can be either 'checking' or 'savings'.
final Omittable<PaymentMethodDetailsPaymentRecordUsBankAccountAccountType?> accountType;

/// Name of the bank associated with the bank account.
final Omittable<String?> bankName;

/// Estimated date to debit the customer's bank account. A date string in YYYY-MM-DD format.
final String? expectedDebitDate;

/// Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
final Omittable<String?> fingerprint;

/// Last four digits of the bank account number.
final Omittable<String?> last4;

/// ID of the mandate used to make this payment.
final PaymentMethodDetailsPaymentRecordUsBankAccountMandate? mandate;

/// The ACH payment reference for this transaction.
final Omittable<String?> paymentReference;

/// The routing number for the bank account.
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
PaymentMethodDetailsPaymentRecordUsBankAccount copyWith({Omittable<PaymentMethodDetailsPaymentRecordUsBankAccountAccountHolderType?>? accountHolderType, Omittable<PaymentMethodDetailsPaymentRecordUsBankAccountAccountType?>? accountType, Omittable<String?>? bankName, String? Function()? expectedDebitDate, Omittable<String?>? fingerprint, Omittable<String?>? last4, PaymentMethodDetailsPaymentRecordUsBankAccountMandate? Function()? mandate, Omittable<String?>? paymentReference, Omittable<String?>? routingNumber, }) { return PaymentMethodDetailsPaymentRecordUsBankAccount(
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
      other is PaymentMethodDetailsPaymentRecordUsBankAccount &&
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
@override String toString() { return 'PaymentMethodDetailsPaymentRecordUsBankAccount(accountHolderType: $accountHolderType, accountType: $accountType, bankName: $bankName, expectedDebitDate: $expectedDebitDate, fingerprint: $fingerprint, last4: $last4, mandate: $mandate, paymentReference: $paymentReference, routingNumber: $routingNumber)'; } 
 }
