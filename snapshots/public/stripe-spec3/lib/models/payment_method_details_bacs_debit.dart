// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PaymentMethodDetailsBacsDebit {const PaymentMethodDetailsBacsDebit({this.expectedDebitDate, this.fingerprint = const Omittable.absent(), this.last4 = const Omittable.absent(), this.mandate = const Omittable.absent(), this.sortCode = const Omittable.absent(), });

factory PaymentMethodDetailsBacsDebit.fromJson(Map<String, dynamic> json) { return PaymentMethodDetailsBacsDebit(
  expectedDebitDate: json['expected_debit_date'] as String?,
  fingerprint: json.containsKey('fingerprint') ? Omittable(json['fingerprint'] as String?) : const Omittable.absent(),
  last4: json.containsKey('last4') ? Omittable(json['last4'] as String?) : const Omittable.absent(),
  mandate: json.containsKey('mandate') ? Omittable(json['mandate'] as String?) : const Omittable.absent(),
  sortCode: json.containsKey('sort_code') ? Omittable(json['sort_code'] as String?) : const Omittable.absent(),
); }

/// Estimated date to debit the customer's bank account. A date string in YYYY-MM-DD format.
final String? expectedDebitDate;

/// Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
final Omittable<String?> fingerprint;

/// Last four digits of the bank account number.
final Omittable<String?> last4;

/// ID of the mandate used to make this payment.
final Omittable<String?> mandate;

/// Sort code of the bank account. (e.g., `10-20-30`)
final Omittable<String?> sortCode;

Map<String, dynamic> toJson() { return {
  'expected_debit_date': ?expectedDebitDate,
  if (fingerprint.isPresent) 'fingerprint': fingerprint.value,
  if (last4.isPresent) 'last4': last4.value,
  if (mandate.isPresent) 'mandate': mandate.value,
  if (sortCode.isPresent) 'sort_code': sortCode.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'expected_debit_date', 'fingerprint', 'last4', 'mandate', 'sort_code'}.contains(key)); } 
PaymentMethodDetailsBacsDebit copyWith({String? Function()? expectedDebitDate, Omittable<String?>? fingerprint, Omittable<String?>? last4, Omittable<String?>? mandate, Omittable<String?>? sortCode, }) { return PaymentMethodDetailsBacsDebit(
  expectedDebitDate: expectedDebitDate != null ? expectedDebitDate() : this.expectedDebitDate,
  fingerprint: fingerprint ?? this.fingerprint,
  last4: last4 ?? this.last4,
  mandate: mandate ?? this.mandate,
  sortCode: sortCode ?? this.sortCode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodDetailsBacsDebit &&
          expectedDebitDate == other.expectedDebitDate &&
          fingerprint == other.fingerprint &&
          last4 == other.last4 &&
          mandate == other.mandate &&
          sortCode == other.sortCode; } 
@override int get hashCode { return Object.hash(expectedDebitDate, fingerprint, last4, mandate, sortCode); } 
@override String toString() { return 'PaymentMethodDetailsBacsDebit(expectedDebitDate: $expectedDebitDate, fingerprint: $fingerprint, last4: $last4, mandate: $mandate, sortCode: $sortCode)'; } 
 }
