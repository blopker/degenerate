// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PaymentMethodDetailsAcssDebit {const PaymentMethodDetailsAcssDebit({this.bankName = const Omittable.absent(), this.expectedDebitDate, this.fingerprint = const Omittable.absent(), this.institutionNumber = const Omittable.absent(), this.last4 = const Omittable.absent(), this.mandate, this.transitNumber = const Omittable.absent(), });

factory PaymentMethodDetailsAcssDebit.fromJson(Map<String, dynamic> json) { return PaymentMethodDetailsAcssDebit(
  bankName: json.containsKey('bank_name') ? Omittable(json['bank_name'] as String?) : const Omittable.absent(),
  expectedDebitDate: json['expected_debit_date'] as String?,
  fingerprint: json.containsKey('fingerprint') ? Omittable(json['fingerprint'] as String?) : const Omittable.absent(),
  institutionNumber: json.containsKey('institution_number') ? Omittable(json['institution_number'] as String?) : const Omittable.absent(),
  last4: json.containsKey('last4') ? Omittable(json['last4'] as String?) : const Omittable.absent(),
  mandate: json['mandate'] as String?,
  transitNumber: json.containsKey('transit_number') ? Omittable(json['transit_number'] as String?) : const Omittable.absent(),
); }

/// Name of the bank associated with the bank account.
final Omittable<String?> bankName;

/// Estimated date to debit the customer's bank account. A date string in YYYY-MM-DD format.
final String? expectedDebitDate;

/// Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
final Omittable<String?> fingerprint;

/// Institution number of the bank account
final Omittable<String?> institutionNumber;

/// Last four digits of the bank account number.
final Omittable<String?> last4;

/// ID of the mandate used to make this payment.
final String? mandate;

/// Transit number of the bank account.
final Omittable<String?> transitNumber;

Map<String, dynamic> toJson() { return {
  if (bankName.isPresent) 'bank_name': bankName.value,
  'expected_debit_date': ?expectedDebitDate,
  if (fingerprint.isPresent) 'fingerprint': fingerprint.value,
  if (institutionNumber.isPresent) 'institution_number': institutionNumber.value,
  if (last4.isPresent) 'last4': last4.value,
  'mandate': ?mandate,
  if (transitNumber.isPresent) 'transit_number': transitNumber.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'bank_name', 'expected_debit_date', 'fingerprint', 'institution_number', 'last4', 'mandate', 'transit_number'}.contains(key)); } 
PaymentMethodDetailsAcssDebit copyWith({Omittable<String?>? bankName, String? Function()? expectedDebitDate, Omittable<String?>? fingerprint, Omittable<String?>? institutionNumber, Omittable<String?>? last4, String? Function()? mandate, Omittable<String?>? transitNumber, }) { return PaymentMethodDetailsAcssDebit(
  bankName: bankName ?? this.bankName,
  expectedDebitDate: expectedDebitDate != null ? expectedDebitDate() : this.expectedDebitDate,
  fingerprint: fingerprint ?? this.fingerprint,
  institutionNumber: institutionNumber ?? this.institutionNumber,
  last4: last4 ?? this.last4,
  mandate: mandate != null ? mandate() : this.mandate,
  transitNumber: transitNumber ?? this.transitNumber,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodDetailsAcssDebit &&
          bankName == other.bankName &&
          expectedDebitDate == other.expectedDebitDate &&
          fingerprint == other.fingerprint &&
          institutionNumber == other.institutionNumber &&
          last4 == other.last4 &&
          mandate == other.mandate &&
          transitNumber == other.transitNumber; } 
@override int get hashCode { return Object.hash(bankName, expectedDebitDate, fingerprint, institutionNumber, last4, mandate, transitNumber); } 
@override String toString() { return 'PaymentMethodDetailsAcssDebit(bankName: $bankName, expectedDebitDate: $expectedDebitDate, fingerprint: $fingerprint, institutionNumber: $institutionNumber, last4: $last4, mandate: $mandate, transitNumber: $transitNumber)'; } 
 }
