// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PaymentMethodDetailsAuBecsDebit {const PaymentMethodDetailsAuBecsDebit({this.bsbNumber = const Omittable.absent(), this.expectedDebitDate, this.fingerprint = const Omittable.absent(), this.last4 = const Omittable.absent(), this.mandate, });

factory PaymentMethodDetailsAuBecsDebit.fromJson(Map<String, dynamic> json) { return PaymentMethodDetailsAuBecsDebit(
  bsbNumber: json.containsKey('bsb_number') ? Omittable(json['bsb_number'] as String?) : const Omittable.absent(),
  expectedDebitDate: json['expected_debit_date'] as String?,
  fingerprint: json.containsKey('fingerprint') ? Omittable(json['fingerprint'] as String?) : const Omittable.absent(),
  last4: json.containsKey('last4') ? Omittable(json['last4'] as String?) : const Omittable.absent(),
  mandate: json['mandate'] as String?,
); }

/// Bank-State-Branch number of the bank account.
final Omittable<String?> bsbNumber;

/// Estimated date to debit the customer's bank account. A date string in YYYY-MM-DD format.
final String? expectedDebitDate;

/// Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
final Omittable<String?> fingerprint;

/// Last four digits of the bank account number.
final Omittable<String?> last4;

/// ID of the mandate used to make this payment.
final String? mandate;

Map<String, dynamic> toJson() { return {
  if (bsbNumber.isPresent) 'bsb_number': bsbNumber.value,
  'expected_debit_date': ?expectedDebitDate,
  if (fingerprint.isPresent) 'fingerprint': fingerprint.value,
  if (last4.isPresent) 'last4': last4.value,
  'mandate': ?mandate,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'bsb_number', 'expected_debit_date', 'fingerprint', 'last4', 'mandate'}.contains(key)); } 
PaymentMethodDetailsAuBecsDebit copyWith({Omittable<String?>? bsbNumber, String? Function()? expectedDebitDate, Omittable<String?>? fingerprint, Omittable<String?>? last4, String? Function()? mandate, }) { return PaymentMethodDetailsAuBecsDebit(
  bsbNumber: bsbNumber ?? this.bsbNumber,
  expectedDebitDate: expectedDebitDate != null ? expectedDebitDate() : this.expectedDebitDate,
  fingerprint: fingerprint ?? this.fingerprint,
  last4: last4 ?? this.last4,
  mandate: mandate != null ? mandate() : this.mandate,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodDetailsAuBecsDebit &&
          bsbNumber == other.bsbNumber &&
          expectedDebitDate == other.expectedDebitDate &&
          fingerprint == other.fingerprint &&
          last4 == other.last4 &&
          mandate == other.mandate; } 
@override int get hashCode { return Object.hash(bsbNumber, expectedDebitDate, fingerprint, last4, mandate); } 
@override String toString() { return 'PaymentMethodDetailsAuBecsDebit(bsbNumber: $bsbNumber, expectedDebitDate: $expectedDebitDate, fingerprint: $fingerprint, last4: $last4, mandate: $mandate)'; } 
 }
