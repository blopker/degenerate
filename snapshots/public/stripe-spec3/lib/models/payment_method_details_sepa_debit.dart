// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PaymentMethodDetailsSepaDebit {const PaymentMethodDetailsSepaDebit({this.bankCode = const Omittable.absent(), this.branchCode = const Omittable.absent(), this.country = const Omittable.absent(), this.expectedDebitDate, this.fingerprint = const Omittable.absent(), this.last4 = const Omittable.absent(), this.mandate = const Omittable.absent(), });

factory PaymentMethodDetailsSepaDebit.fromJson(Map<String, dynamic> json) { return PaymentMethodDetailsSepaDebit(
  bankCode: json.containsKey('bank_code') ? Omittable(json['bank_code'] as String?) : const Omittable.absent(),
  branchCode: json.containsKey('branch_code') ? Omittable(json['branch_code'] as String?) : const Omittable.absent(),
  country: json.containsKey('country') ? Omittable(json['country'] as String?) : const Omittable.absent(),
  expectedDebitDate: json['expected_debit_date'] as String?,
  fingerprint: json.containsKey('fingerprint') ? Omittable(json['fingerprint'] as String?) : const Omittable.absent(),
  last4: json.containsKey('last4') ? Omittable(json['last4'] as String?) : const Omittable.absent(),
  mandate: json.containsKey('mandate') ? Omittable(json['mandate'] as String?) : const Omittable.absent(),
); }

/// Bank code of bank associated with the bank account.
final Omittable<String?> bankCode;

/// Branch code of bank associated with the bank account.
final Omittable<String?> branchCode;

/// Two-letter ISO code representing the country the bank account is located in.
final Omittable<String?> country;

/// Estimated date to debit the customer's bank account. A date string in YYYY-MM-DD format.
final String? expectedDebitDate;

/// Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
final Omittable<String?> fingerprint;

/// Last four characters of the IBAN.
final Omittable<String?> last4;

/// Find the ID of the mandate used for this payment under the [payment_method_details.sepa_debit.mandate](https://docs.stripe.com/api/charges/object#charge_object-payment_method_details-sepa_debit-mandate) property on the Charge. Use this mandate ID to [retrieve the Mandate](https://docs.stripe.com/api/mandates/retrieve).
final Omittable<String?> mandate;

Map<String, dynamic> toJson() { return {
  if (bankCode.isPresent) 'bank_code': bankCode.value,
  if (branchCode.isPresent) 'branch_code': branchCode.value,
  if (country.isPresent) 'country': country.value,
  'expected_debit_date': ?expectedDebitDate,
  if (fingerprint.isPresent) 'fingerprint': fingerprint.value,
  if (last4.isPresent) 'last4': last4.value,
  if (mandate.isPresent) 'mandate': mandate.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'bank_code', 'branch_code', 'country', 'expected_debit_date', 'fingerprint', 'last4', 'mandate'}.contains(key)); } 
PaymentMethodDetailsSepaDebit copyWith({Omittable<String?>? bankCode, Omittable<String?>? branchCode, Omittable<String?>? country, String? Function()? expectedDebitDate, Omittable<String?>? fingerprint, Omittable<String?>? last4, Omittable<String?>? mandate, }) { return PaymentMethodDetailsSepaDebit(
  bankCode: bankCode ?? this.bankCode,
  branchCode: branchCode ?? this.branchCode,
  country: country ?? this.country,
  expectedDebitDate: expectedDebitDate != null ? expectedDebitDate() : this.expectedDebitDate,
  fingerprint: fingerprint ?? this.fingerprint,
  last4: last4 ?? this.last4,
  mandate: mandate ?? this.mandate,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodDetailsSepaDebit &&
          bankCode == other.bankCode &&
          branchCode == other.branchCode &&
          country == other.country &&
          expectedDebitDate == other.expectedDebitDate &&
          fingerprint == other.fingerprint &&
          last4 == other.last4 &&
          mandate == other.mandate; } 
@override int get hashCode { return Object.hash(bankCode, branchCode, country, expectedDebitDate, fingerprint, last4, mandate); } 
@override String toString() { return 'PaymentMethodDetailsSepaDebit(bankCode: $bankCode, branchCode: $branchCode, country: $country, expectedDebitDate: $expectedDebitDate, fingerprint: $fingerprint, last4: $last4, mandate: $mandate)'; } 
 }
